//
//  UICollectionView+DequeReusable.swift
//  pttavm
//
//  Created by pttem-ios on 4.11.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UICollectionView {
  func dequeReusebleCell<T: UICollectionViewCell>(type: T.Type, indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(withReuseIdentifier: T.className, for: indexPath) as? T else {
      fatalError("dequeReusebleCell error")
    }
    return cell
  }
  func dequeReusebleView<T: UICollectionReusableView>(view: T.Type, kind: String, indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: UICollectionReusableView.identifier, for: indexPath) as? T else {
      fatalError("dequeReusebleView error")
    }
    return cell
  }
}
