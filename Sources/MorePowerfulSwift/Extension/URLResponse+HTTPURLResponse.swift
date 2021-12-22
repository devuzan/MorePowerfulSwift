//
//  URLResponse+HTTPURLResponse.swift
//  pttavm
//
//  Created by PtteM iOS on 10.08.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import UIKit

public extension URLResponse {
  var httpUrlResponse: HTTPURLResponse? {
    self as? HTTPURLResponse
  }
}
