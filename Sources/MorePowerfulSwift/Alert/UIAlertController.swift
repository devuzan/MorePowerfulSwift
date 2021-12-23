//
//  File.swift
//  
//
//  Created by Yusuf Uzan on 23.12.2021.
//

import UIKit

public struct AlertPayload {
  let style: UIAlertController.Style
  let title: String
  let message: String
  let actions: [AlertActionPayload]
}

public struct AlertActionPayload {
  let title: String
  let style: UIAlertAction.Style
  let handler: ((UIAlertAction) -> Void)?
}
