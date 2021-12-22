//
//  String+Random.swift
//  pttavm
//
//  Created by pttem-ios on 2.12.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import Foundation

public extension String {
  static func random(length: Int = 36) -> String {
    let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    var randomString: String = ""
    for _ in 0..<length {
      let randomValue = arc4random_uniform(UInt32(base.count))
      randomString += "\(base[base.index(base.startIndex, offsetBy: Int(randomValue))])"
    }
    return randomString
  }
}
