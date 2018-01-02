//
//  Int+spellOut.swift
//  
//
//  Created by Anton Novoselov on 01/01/2018.
//

import UIKit

extension SignedNumeric {
    
    func getSpellOutString(forLocaleIdentifier identifier: String? = nil) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        if let identifier = identifier {
            formatter.locale = Locale(identifier: identifier)
        } else {
            formatter.locale = Locale.current
        }
        
        guard  let number = self as? NSNumber else { return "" }
        return formatter.string(from: number)
    }
    
    func getOrdinalString(forLocaleIdentifier identifier: String? = nil) -> String? {
        let formatter = NumberFormatter()
        if #available(iOS 9.0, *) {
            formatter.numberStyle = .ordinal
        } else {
            return ""
        }
        
        if let identifier = identifier {
            formatter.locale = Locale(identifier: identifier)
        } else {
            formatter.locale = Locale.current
        }
        
        guard  let number = self as? NSNumber else { return "" }
        return formatter.string(from: number)
    }
}
