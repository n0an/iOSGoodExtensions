//
//  Date+StringLiteral.swift
//  
//
//  Created by Anton Novoselov on 01/01/2018.
//

import UIKit

extension Date: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        self = formatter.date(from: value) ?? Date()
    }
}

//let aDate: Date = "2017-12-25"

