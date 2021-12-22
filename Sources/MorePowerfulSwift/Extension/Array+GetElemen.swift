//
//  Array+GetElemen.swift
//  PttemMPS
//
//  Created by PtteM iOS on 9.12.2019.
//  Copyright © 2019 Pttem. All rights reserved.
//

import Foundation

public extension Array {
  
  /**
   Get element from array.
   - Parameters:
    - index: array index
   - Returns: it returns element object or nil
   */
  func getElement(at index: Int) -> Element? {
    let isValidIndex = index >= 0 && index < count
    return isValidIndex ? self[index] : nil
  }
  
  /**
   Get element with more safe from array.
   - Parameters:
    - index: array index
   - Returns: it returns element object or nil
   */
  subscript(safe index: Index) -> Element? {
    let isValidIndex = index >= 0 && index < count
    return isValidIndex ? self[index] : nil
  }
  
}
