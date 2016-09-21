//
//  DeDupeSortedArray.swift
//  SwiftRefresher
//
//  Created by Daniel Kwolek on 9/20/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import Foundation

public func dedupeSortedArray(_ initialArray: [Int]) -> ([Int], Int) {
    var dedupedArray = initialArray
    
    var positionOne = 0
    var positionTwo = 0
    while positionOne < dedupedArray.count - 1 {
        positionTwo = positionOne + 1
        while positionTwo < dedupedArray.count {
            
            if dedupedArray[positionOne] == dedupedArray[positionTwo] {
                dedupedArray.remove(at: positionTwo)
                positionTwo -= 1
            }
            positionTwo += 1
        }
        positionOne += 1
    }
    return (dedupedArray, dedupedArray.count)
}
