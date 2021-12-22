//
//  String+AllowOnlyAlphaNumeric.swift
//  pttavm
//
//  Created by pttem-ios on 23.12.2020.
//  Copyright © 2020 Pttem. All rights reserved.
//

import Foundation

public extension String {
  func allowOnlyCharacters(_ chars: String = "ABCÇDEFGĞHIİJKLMNOÖPQRSŞTUÜVWXYZabcçdefgğhıijklmnoöpqrsştuüvwxyz0123456789 -") -> String {
    return self.filter { chars.contains(String($0))}.trimmingCharacters(in: .whitespacesAndNewlines)
  }
}
