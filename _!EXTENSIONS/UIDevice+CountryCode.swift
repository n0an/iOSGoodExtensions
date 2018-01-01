//
//  UIDevice+CountryCode.swift
//  tmp
//
//  Created by Anton Novoselov on 01/01/2018.
//  Copyright © 2018 Anton Novoselov. All rights reserved.
//

import UIKit

extension UIDevice {
    static var countryCode: String? {
        return (Locale.current as NSLocale).object(forKey: NSLocale.Key.countryCode) as? String
    }
}
