import Foundation

public struct Member {

  let sword: Sword

  public let deaf: Bool
  public let joinedAt: Date
  public let mute: Bool
  public let nick: String?
  public var roles: [Role] = []
  public let user: User

  init(_ sword: Sword, _ json: [String: Any]) {
    self.sword = sword

    self.deaf = json["deaf"] as! Bool

    let joinedAt = json["joined_at"] as! String
    self.joinedAt = joinedAt.date

    self.mute = json["mute"] as! Bool
    self.nick = json["nick"] as? String

    let roles = json["roles"] as! [[String: Any]]
    for role in roles {
      self.roles.append(Role(role))
    }

    self.user = User(self.sword, json["user"] as! [String: Any])
  }

}
