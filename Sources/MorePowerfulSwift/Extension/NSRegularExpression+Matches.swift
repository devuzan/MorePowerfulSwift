//
//  NSRegularExpression+Matches.swift
//  pttavm
//
//  Created by pttem-ios on 20.11.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import Foundation

public extension NSRegularExpression {
  convenience init(_ pattern: String) {
    do {
      try self.init(pattern: pattern)
    } catch {
      preconditionFailure("Illegal regular expression: \(pattern).")
    }
  }
}

public extension NSRegularExpression {
  func matches(_ string: String) -> Bool {
    let range = NSRange(location: 0, length: string.utf16.count)
    return firstMatch(in: string, options: [], range: range) != nil
  }
}
