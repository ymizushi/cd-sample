package models

case class Latitute(value: Int)
case class Longitude(value: Int)
case class Coordinates(
  latitude: Latitute,
  longitude: Longitude
)

case class Activity(
  activityType: String,
  activityValue: Any,
  coordinates: Option[Coordinates]
)
