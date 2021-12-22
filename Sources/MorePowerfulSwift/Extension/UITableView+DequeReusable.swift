//
//  UITableView+.swift
//  pttavm
//
//  Created by pttem-ios on 4.11.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UITableView {
  func dequeReusebleCell<T: UITableViewCell>(type: T.Type, indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(withIdentifier: T.className, for: indexPath) as? T else {
      fatalError("dequeReusebleCell error")
    }
    return cell
  }
  func dequeReusebleView<T: UITableViewHeaderFooterView>(type: T.Type) -> T {
    guard let cell = dequeueReusableHeaderFooterView(withIdentifier: type.className) as? T else {
      fatalError("dequeReusebleView error")
    }
    return cell
  }
}
