//
//  File.swift
//  
//
//  Created by pttem-ios on 29.12.2020.
//

import Foundation

public extension Array where Element == UInt8 {
  var deobfuscated: [UInt8] {
    let a = prefix(count / 2)
    let b = suffix(count / 2)
    return zip(a, b).map(^)
  }
}
