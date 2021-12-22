//
//  UIView+AddShadoe.swift
//  PttemMPS
//
//  Created by PtteM iOS on 24.03.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UIView {
  // Add Shadow Effect
  func addShadow(
    shadowColor: UIColor = UIColor.lightGray,
    opacity: CGFloat = 1,
    offset: CGSize = .zero,
    shadowRadius: CGFloat = 4) {
    layer.shadowColor = shadowColor.cgColor
    layer.shadowOpacity = Float(opacity)
    layer.shadowOffset = offset
    layer.shadowRadius = shadowRadius
  }
}
