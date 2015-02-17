package im.actor.server.persist

import im.actor.server.persist.db.Db
import im.actor.server.models
import slick.driver.PostgresDriver.simple._
import Database.dynamicSession
import org.joda.time.DateTime
import com.github.tototoshi.slick.PostgresJodaSupport._

class AuthIdTable(tag: Tag) extends Table[models.AuthId](tag, "auth_ids") {
  def id = column[Long]("id", O.PrimaryKey)
  def userId = column[Option[Int]]("user_id")
  def deletedAt = column[Option[DateTime]]("deleted_at")

  def * = (id, userId) <> (models.AuthId.tupled, models.AuthId.unapply)
}

object AuthId {
  val table = TableQuery[AuthIdTable]

  def create(authId: Long, userId: Option[Int]) = Db.async {
    table.insert(models.AuthId(authId, userId))
  }
}