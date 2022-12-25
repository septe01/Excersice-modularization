//
//  String+Localization.swift
//  Common
//
//  Created by septe habudin on 24/12/22.
//

import Foundation

extension String {
  public func localized(identifier: String) -> String {
    print("---localize \(identifier)")
    let bundle = Bundle(identifier: identifier) ?? .main
    return bundle.localizedString(forKey: self, value: nil, table: nil)
  }
}
