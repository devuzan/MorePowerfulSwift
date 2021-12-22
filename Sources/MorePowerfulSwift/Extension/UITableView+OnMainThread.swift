//
//  UITableView+OnMainThread.swift
//  pttavm
//
//  Created by pttem-ios on 9.11.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension UITableView {
  func reloadOnMainThread() {
    DispatchQueue.main.async {
      self.reloadData()
    }
  }
  func reloadSectionsOnMainThread(_ sections: IndexSet) {
    DispatchQueue.main.async {
      self.reloadSections(sections, with: .automatic)
    }
  }
  func reloadItemsOnMainThread(at indexPaths: [IndexPath]) {
    DispatchQueue.main.async {
      self.reloadRows(at: indexPaths, with: .automatic)
    }
  }
}
