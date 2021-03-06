//
//  Misc.swift
//  Sword
//
//  Created by Alejandro Alonso
//  Copyright © 2018 Alejandro Alonso. All rights reserved.
//

import Foundation

public struct Emoji: Codable, _SwordChild {
  public internal(set) weak var sword: Sword?
  
  public let id: Snowflake?
  public let isAnimated: Bool?
  public let isManaged: Bool?
  public let name: String
  public let requiresColons: Bool?
  public let roleIds: [Snowflake]?
  public let user: User?
  
  enum CodingKeys: String, CodingKey {
    case id
    case isAnimated = "animated"
    case isManaged = "managed"
    case name
    case requiresColons = "require_colons"
    case roleIds = "roles"
    case user
  }
}

public struct Typing: Codable, _SwordChild {
  public internal(set) weak var sword: Sword?
  
  public let channelId: Snowflake
  public let timestamp: Date
  public let userId: Snowflake
  
  enum CodingKeys: String, CodingKey {
    case channelId = "channel_id"
    case timestamp
    case userId = "user_id"
  }
}
