package im.actor.server.util

import akka.event.LogSource

trait AnyRefLogSource {
  implicit val logSource: LogSource[AnyRef] = new LogSource[AnyRef] {
    def genString(o: AnyRef): String = o.getClass.getName
  }
}

object AnyRefLogSource extends AnyRefLogSource