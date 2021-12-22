//
//  Date+ToString.swift
//  YUP
//
//  Created by PtteM iOS on 16.08.2019.
//  Copyright © 2019 PtteM A.Ş. All rights reserved.
//

import Foundation
public extension Data {
  func toString() -> String? {
    return String(data: self, encoding: String.Encoding.utf8)
  }
}
