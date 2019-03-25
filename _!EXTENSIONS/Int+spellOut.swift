//
//  Int+spellOut.swift
//  
//
//  Created by Anton Novoselov on 01/01/2018.
//

import UIKit

extension SignedNumeric {
    
    public func spelledOutString(locale: Locale = .current) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.numberStyle = .spellOut
        
        guard let number = self as? NSNumber else { return nil }
        return formatter.string(from: number)
    }
    
    public func ordinalString(locale: Locale = .current) -> String? {
        if #available(iOS 9.0, macOS 10.11, *) {
            let formatter = NumberFormatter()
            formatter.locale = locale
            formatter.numberStyle = .ordinal
            guard let number = self as? NSNumber else { return nil }
            return formatter.string(from: number)
        } else {
            return ""
        }
    }
}
