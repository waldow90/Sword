import Foundation

public struct User {

  let sword: Sword

  public let avatar: String?
  public let bot: Bool?
  public let discriminator: String?
  public let email: String?
  public let id: String
  public let mfaEnabled: Bool?
  public let username: String?
  public let verified: Bool?

  init(_ sword: Sword, _ json: [String: Any]) {
    self.sword = sword

    self.id = json["id"] as! String
    self.avatar = json["avatar"] as? String
    self.bot = json["bot"] as? Bool
    self.discriminator = json["discriminator"] as? String
    self.email = json["email"] as? String
    self.mfaEnabled = json["mfaEnabled"] as? Bool
    self.username = json["username"] as? String
    self.verified = json["verified"] as? Bool
  }

}
