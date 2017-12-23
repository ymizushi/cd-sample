package models

case class UserID(value: Int)
case class UserName(value: String)
case class HashedPassword(value: String)
case class RawPassword(value: String)
case class User(id: UserID, name: UserName, hashedPassword: HashedPassword)

trait UserRepository {
  def find(id: UserID): Option[User]
  def findByPassword(password: RawPassword): Option[User]
}
class UserRepositoryImpl extends UserRepository {
  val user = Some(User(UserID(1), UserName("ymizushi"), HashedPassword("hashedpassword")))

  def find(id: UserID): Option[User] = {
    user
  }

  def findByPassword(password: RawPassword): Option[User] = user
}
