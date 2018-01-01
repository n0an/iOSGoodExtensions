//
//  Date+IntegerLiteral.swift
//  SensEye
//
//  Created by Anton Novoselov on 25/12/2017.
//  Copyright © 2017 Anton Novoselov. All rights reserved.
//

import UIKit

extension Date: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        self = formatter.date(from: String(value)) ?? Date()
    }
}

// let date1: Date = 2018_01_02

