name := """backbeard"""

version := "staging"

lazy val root = (project in file("."))
  .enablePlugins(PlayScala)

scalaVersion := "2.12.4"

libraryDependencies ++= Seq(
  "org.postgresql"           %  "postgresql"                       % "42.1.4",
  jdbc,
  cache,
  ws,
  guice,
  openId,
  "com.typesafe.play" %% "play-json" % "2.6.0",
  "org.scalatestplus.play" %% "scalatestplus-play" % "3.1.0" % Test
)

flywayUrl := "jdbc:postgresql://localhost:5432/backbeard-db"
flywayUser := "backbeard-user"
flywayLocations := Seq("filesystem:./db/migration")
