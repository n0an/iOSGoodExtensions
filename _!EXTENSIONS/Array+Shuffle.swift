//
//  Array+Shuffle.swift
//  tmp
//
//  Created by Anton Novoselov on 24/02/2017.
//  Copyright © 2017 Anton Novoselov. All rights reserved.
//

import Foundation

extension Array {
    mutating func shuffle() {
        for i in 0..<(count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            swap(&self[i], &self[j])
        }
    }
}
