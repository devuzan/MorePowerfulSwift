//
//  UIView+AddBorder.swift
//  pttavm
//
//  Created by pttem-ios on 1.11.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UIView {
  enum Side {
    case top
    case bottom
    case left
    case right
  }
  func addBorderToSide(_ side: Side, color: UIColor, thickness: CGFloat) {
    let border = CALayer()
    border.backgroundColor = color.cgColor
    switch side {
    case .top:
      border.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: thickness)
    case .bottom:
      border.frame = CGRect(x: 0, y: frame.size.height - thickness, width: frame.size.width, height: thickness)
    case .left:
      border.frame = CGRect(x: 0, y: 0, width: thickness, height: frame.size.height)
    case .right:
      border.frame = CGRect(x: frame.size.width - thickness, y: 0, width: thickness, height: frame.size.height)
    }
    layer.addSublayer(border)
  }
}
