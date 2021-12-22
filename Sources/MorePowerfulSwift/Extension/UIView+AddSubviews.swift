//
//  UIView+AddSubviews.swift
//  YUP
//
//  Created by iOS Developer on 10.07.2019.
//  Copyright © 2019 PtteM A.Ş. All rights reserved.
//

import UIKit

public extension UIView{
  func addSubviews(autoLayoutIsEnable: Bool = true, _ subviews: UIView...) {
    subviews.forEach {
      $0.translatesAutoresizingMaskIntoConstraints = !autoLayoutIsEnable
      addSubview($0)
    }
  }
}
