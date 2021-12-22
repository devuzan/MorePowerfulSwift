//
//  Collection+Safe.swift
//  PttemMPS
//
//  Created by PtteM iOS on 9.12.2019.
//  Copyright © 2019 Pttem. All rights reserved.
//

import Foundation

public extension Collection {
  /**
   Get element with more safe from collection.
   - Parameters:
    - index: array index
   - Returns: it returns element object or nil
   */
  subscript(safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }
}
