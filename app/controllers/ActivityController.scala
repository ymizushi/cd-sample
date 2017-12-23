package controllers

import javax.inject._
import play.api._
import play.api.mvc._
import play.api.libs.json._

@Singleton
class ActivityController @Inject() (cc: ControllerComponents) extends AbstractController(cc) {

  def postActivity = Action(parse.json) { implicit req =>
    val data = req.body
    val activityType = (data \ "activityType").as[String]
    val latitude = (data \ "coordinates" \ "latitude").as[Double]
    val longitude = (data \ "coordinates" \ "longitude").as[Double]

    Ok(
      Json.obj(
        "status" -> "ok",
        "data" -> Json.obj(
          "" -> ""
        )
      )
    )
  }

  def get = Action {
    Ok(Json.obj("status" -> "ok"))
  }
}
