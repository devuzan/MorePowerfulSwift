//
//  UINavigationItem+TitleView.swift
//  yumps
//
//  Created by PtteM iOS on 31.10.2019.
//  Copyright © 2019 devuzan. All rights reserved.
//

import UIKit

public extension UINavigationItem {
  func setTitleImage(image: UIImage) {
    let titleViewContainer = UIView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 240,
                                                  height: 30))
    let imageView = UIImageView(frame: CGRect(x: titleViewContainer.frame.origin.x,
                                              y: titleViewContainer.frame.origin.y,
                                              width: 240,
                                              height: 30))
    imageView.contentMode = .scaleAspectFit
    imageView.image = image
    titleViewContainer.addSubview(imageView)
    titleView = titleViewContainer
  }
}
