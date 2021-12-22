//
//  UIApplicaton+OpenUrl.swift
//  pttavm
//
//  Created by pttem-ios on 6.11.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UIApplication {
  static func open(url: URL) {
    if UIApplication.shared.canOpenURL(url) {
      UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
  }
}
