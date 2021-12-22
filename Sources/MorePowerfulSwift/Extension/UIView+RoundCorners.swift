//
//  Corner+Radius.swift
//  PttemMPS
//
//  Created by iosdev on 9.03.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UIView {
  func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    self.layer.mask = mask
  }
}
