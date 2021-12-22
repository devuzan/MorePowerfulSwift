//
//  UIViewController+ScrollTop.swift
//  pttavm
//
//  Created by pttem-ios on 27.10.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UIViewController {
  /// Scroll to Top
  func scrollToTop() {
    func scrollToTop(view: UIView?) {
      guard let view = view else { return }
      switch view {
      case let scrollView as UIScrollView:
        if scrollView.scrollsToTop == true {
          scrollView.setContentOffset(CGPoint(x: 0.0, y: -scrollView.contentInset.top), animated: true)
          return
        }
      default:
        break
      }
      for subView in view.subviews {
        scrollToTop(view: subView)
      }
    }
    scrollToTop(view: self.view)
  }
}
