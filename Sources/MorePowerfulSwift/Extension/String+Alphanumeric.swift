//
//  File.swift
//  
//
//  Created by pttem-ios on 20.01.2021.
//

import Foundation

public extension String {
  var alphanumeric: String {
    return self.components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
  }
}
