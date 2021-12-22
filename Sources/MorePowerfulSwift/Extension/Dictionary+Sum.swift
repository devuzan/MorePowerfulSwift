//
//  Dictionary+Sum.swift
//  YUP
//
//  Created by iOS Developer on 10.07.2019.
//  Copyright © 2019 PtteM A.Ş. All rights reserved.
//

import Foundation

public func + <KeyType, ValueType> (
  left: [KeyType: ValueType],
  right: [KeyType: ValueType]
  ) -> [KeyType: ValueType] {
  var out = left
  for (k, v) in right {
    out.updateValue(v, forKey: k)
  }
  return out
}
