//
//  String+Sixe.swift
//  YUP
//
//  Created by iOS Developer on 10.07.2019.
//  Copyright © 2019 PtteM A.Ş. All rights reserved.
//
import UIKit

public extension String {
  func widthOfString(usingFont font: UIFont) -> CGFloat {
    let fontAttributes = [NSAttributedString.Key.font: font]
    let size = self.size(withAttributes: fontAttributes)
    return size.width
  }
}
