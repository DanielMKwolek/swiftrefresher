//
//  ProductsDiff.swift
//  SwiftRefresher
//
//  Created by Daniel Kwolek on 9/20/16.
//  Copyright © 2016 Arcore. All rights reserved.
//
//Given an array of n integers where n>1, return an array of same size an input array where at every index of the output array should contain the product of all elements in the array except the element at the given index. The function should be named productsDiff


import Foundation

public func productsDiff(_ initialArray: [Int]) -> [Int] {
    var newArray: [Int] = []
    var counter = 0
    repeat{
        newArray.append(multAllButIndex(counter, initialArray))
        counter += 1
    } while counter < initialArray.count
    return newArray
}

func multAllButIndex(_ arrayIndex: Int, _ array: [Int]) -> Int {
    var tempArray = array
    var multAnswer: Int = 1;
    tempArray.remove(at: arrayIndex)
    for number in tempArray {
        multAnswer = multAnswer * number
    }
    return multAnswer
}
