//
//  Environment.swift
//  base
//
//  Created by Guilherme on 9/17/18.
//

import Foundation

class Environment {
  // Custom plist key with configurations defined on our user settings
  enum ConfigurationKey: String {
    case endpoint = "ServerEndpoint"
  }

  static let shared: Environment = Environment()
  private init() {}

  func value(for key: ConfigurationKey) -> String {
    let rawKey = key.rawValue
    if let config = Bundle.main.object(forInfoDictionaryKey: rawKey) as? String {
      return config
    } else {
      fatalError("\(rawKey) not found")
    }
  }
}
