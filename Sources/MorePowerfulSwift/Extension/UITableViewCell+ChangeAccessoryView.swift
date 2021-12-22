//
//  UITableViewCell+ChangeAccessoryView.swift
//  pttavm
//
//  Created by PtteM iOS on 19.03.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UITableViewCell {
  func changeDisclosureIndicator(with image: UIImage, tintColor: UIColor) {
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 12, height: 12))
    imageView.contentMode = .scaleAspectFit
    imageView.image = image
    imageView.tintColor = tintColor
    self.accessoryView = imageView
  }
}
