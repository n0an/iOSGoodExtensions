//
//  String+isSpelledCorrectly.swift
//  
//
//  Created by Anton Novoselov on 01/01/2018.
//

import UIKit

extension String {
    var isSpelledCorrectly: Bool {
        
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: self.utf16.count)
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: self, range: range, startingAt: 0, wrap: false, language: Locale.preferredLanguages.first ?? "en")
        
        return misspelledRange.location == NSNotFound
    }
}
