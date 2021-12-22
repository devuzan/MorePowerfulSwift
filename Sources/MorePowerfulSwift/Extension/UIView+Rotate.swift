//
//  UIView+Rotate.swift
//  PttemMPS
//
//  Created by PtteM iOS on 9.04.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UIView {
  /// Rotate UIView
  func rotate(_ toValue: CGFloat, duration: CFTimeInterval = 0.2) {
    let animation = CABasicAnimation(keyPath: "transform.rotation")
    animation.toValue = toValue
    animation.duration = duration
    animation.isRemovedOnCompletion = false
    animation.fillMode = CAMediaTimingFillMode.forwards
    self.layer.add(animation, forKey: nil)
  }
}
