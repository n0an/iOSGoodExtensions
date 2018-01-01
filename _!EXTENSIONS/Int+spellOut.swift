//
//  Int+spellOut.swift
//  
//
//  Created by Anton Novoselov on 01/01/2018.
//

import UIKit

extension Int {
    
    func getSpellOutStringFor(localeIdentifier identifier: String) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale =  Locale(identifier: identifier)
        
        return formatter.string(from: NSNumber(value: self))
    }
    
    func getOrdinalStringFor(localeIdentifier identifier: String) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        formatter.locale =  Locale(identifier: identifier)
        
        return formatter.string(from: NSNumber(value: self))
    }
}
