//
//  UICollectionView+OnMainThread.swift
//  pttavm
//
//  Created by pttem-ios on 1.11.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit


public extension UICollectionView {
  func reloadSectionsOnMainThread(_ sections: IndexSet) {
    DispatchQueue.main.async {
      self.reloadSections(sections)
    }
  }
  func reloadItemsOnMainThread(at indexPaths: [IndexPath]) {
    DispatchQueue.main.async {
      self.reloadItems(at: indexPaths)
    }
  }
}
