//
//  URL+StringLiteral.swift
//  
//
//  Created by Anton Novoselov on 01/01/2018.
//

import UIKit

extension URL: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = URL(string: value)!
    }
}

//let url: URL = "https://www.hackingwithswift.com"
//print(url.absoluteString)

