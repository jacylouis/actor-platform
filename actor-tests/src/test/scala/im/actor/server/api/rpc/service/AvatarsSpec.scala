package im.actor.server.api.rpc.service

import java.nio.file.{ Files, Paths }

import scala.concurrent.Await
import scala.concurrent.duration._
import scalaz.-\/

import com.amazonaws.auth.EnvironmentVariableCredentialsProvider
import com.amazonaws.services.s3.transfer.TransferManager
import com.github.dwhjames.awswrap.s3.AmazonS3ScalaClient
import com.sksamuel.scrimage.AsyncImage

import im.actor.api.rpc._
import im.actor.api.rpc.files.FileLocation
import im.actor.server.api.rpc.service.files.FilesServiceImpl
import im.actor.server.api.rpc.service.profile.ProfileServiceImpl
import im.actor.server.api.util.{ AvatarUtils, FileUtils }
import im.actor.server.presences.{ GroupPresenceManager, PresenceManager }
import im.actor.server.push.WeakUpdatesManager
import im.actor.server.social.SocialManager

class AvatarsSpec extends BaseServiceSuite {
  behavior of "Profile Service"

  it should "Set user avatar" in profile.e1
  it should "Respond with LOCATION_INVALID on invalid image" in profile.e2
  it should "Respond with FILE_TOO_LARGE on too large image" in profile.e3

  import FileUtils._

  implicit val ec = system.dispatcher

  implicit val sessionRegion = buildSessionRegionProxy()

  implicit val seqUpdManagerRegion = buildSeqUpdManagerRegion()
  implicit val socialManagerRegion = SocialManager.startRegion()

  val bucketName = "actor-uploads-test"
  val awsCredentials = new EnvironmentVariableCredentialsProvider()
  implicit val client = new AmazonS3ScalaClient(awsCredentials)
  implicit val transferManager = new TransferManager(awsCredentials)

  implicit val service = new ProfileServiceImpl(bucketName)
  implicit val filesService = new FilesServiceImpl(bucketName)
  implicit val authService = buildAuthService()

  private val invalidImageFile = Paths.get(getClass.getResource("/invalid-avatar.jpg").toURI).toFile
  private val tooLargeImageFile = Paths.get(getClass.getResource("/too-large-avatar.jpg").toURI).toFile

  private val validOrigBytes =
    Files.readAllBytes(Paths.get(getClass.getResource("/valid-avatar.jpg").toURI))
  private val validOrigFile = Paths.get(getClass.getResource("/valid-avatar.jpg").toURI).toFile
  private val validOrigAImg = Await.result(AsyncImage(validOrigFile), 5.seconds)

  private val validOrigDimensions = AvatarUtils.dimensions(validOrigAImg)

  private val validSmallFile = Paths.get(getClass.getResource("/valid-avatar-small.jpg").toURI).toFile
  private val validSmallBytes = org.apache.commons.io.FileUtils.readFileToByteArray(validSmallFile)
  private val validSmallDimensions = (100, 100)

  private val validLargeFile = Paths.get(getClass.getResource("/valid-avatar-large.jpg").toURI).toFile
  private val validLargeBytes = org.apache.commons.io.FileUtils.readFileToByteArray(validLargeFile)
  private val validLargeDimensions = (200, 200)

  object profile {
    val (user, _, _) = createUser()
    val authId = createAuthId()
    val sessionId = createSessionId()

    implicit val clientData = ClientData(authId, sessionId, Some(user.id))

    def e1() = {
      val validOrigFileModel = Await.result(db.run(uploadFile(bucketName, validOrigFile)), 5.seconds)

      whenReady(service.handleEditAvatar(FileLocation(validOrigFileModel.fileId, validOrigFileModel.accessHash))) { resp ⇒
        resp should matchPattern {
          case Ok(_) ⇒
        }

        val r = resp.toOption.get

        r.avatar.fullImage.get.width should ===(validOrigDimensions._1)
        r.avatar.fullImage.get.height should ===(validOrigDimensions._2)
        r.avatar.fullImage.get.fileSize should ===(validOrigBytes.length)
        whenReady(db.run(download(bucketName, r.avatar.fullImage.get.fileLocation.fileId))) { file ⇒
          org.apache.commons.io.FileUtils.readFileToByteArray(file) should ===(validOrigBytes)
        }

        r.avatar.smallImage.get.width should ===(validSmallDimensions._1)
        r.avatar.smallImage.get.height should ===(validSmallDimensions._2)
        r.avatar.smallImage.get.fileSize should ===(validSmallBytes.length)
        whenReady(db.run(download(bucketName, r.avatar.smallImage.get.fileLocation.fileId))) { file ⇒
          org.apache.commons.io.FileUtils.readFileToByteArray(file) should ===(validSmallBytes)
        }

        r.avatar.largeImage.get.width should ===(validLargeDimensions._1)
        r.avatar.largeImage.get.height should ===(validLargeDimensions._2)
        r.avatar.largeImage.get.fileSize should ===(validLargeBytes.length)
        whenReady(db.run(download(bucketName, r.avatar.largeImage.get.fileLocation.fileId))) { file ⇒
          org.apache.commons.io.FileUtils.readFileToByteArray(file) should ===(validLargeBytes)
        }

      }
    }

    def e2() = {
      val invalidImageFileModel = Await.result(db.run(uploadFile(bucketName, invalidImageFile)), 5.seconds)

      whenReady(service.handleEditAvatar(FileLocation(invalidImageFileModel.fileId, invalidImageFileModel.accessHash))) { resp ⇒
        resp should matchPattern {
          case -\/(RpcError(400, "LOCATION_INVALID", _, _, _)) ⇒
        }
      }
    }

    def e3() = {
      val tooLargeImageFileModel = Await.result(db.run(uploadFile(bucketName, tooLargeImageFile)), 5.seconds)

      whenReady(service.handleEditAvatar(FileLocation(tooLargeImageFileModel.fileId, tooLargeImageFileModel.accessHash))) { resp ⇒
        resp should matchPattern {
          case -\/(RpcError(400, "FILE_TOO_LARGE", _, _, _)) ⇒
        }
      }
    }
  }
}