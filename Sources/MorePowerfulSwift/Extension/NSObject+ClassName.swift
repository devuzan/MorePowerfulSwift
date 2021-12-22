//
//  NSObject+ClassName.swift
//  YUP
//
//  Created by PtteM iOS on 21.08.2019.
//  Copyright © 2019 PtteM A.Ş. All rights reserved.
//

import Foundation
public protocol ClassNameProtocol {
  static var className: String { get }
  var className: String { get }
}

public extension ClassNameProtocol {
  static var className: String {
    return String(describing: self)
  }
  
  var className: String {
    return type(of: self).className
  }
}

extension NSObject: ClassNameProtocol {}
