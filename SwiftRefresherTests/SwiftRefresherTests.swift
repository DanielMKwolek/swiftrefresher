//
//  SwiftRefresherTests.swift
//  SwiftRefresherTests
//
//  Created by Daniel Kwolek on 9/20/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

import XCTest
import SwiftRefresher

class SwiftRefresherTests: XCTestCase {
    
    func testProductsDiff() {
        let case1 = [1, 3, 5]
        let case2 = [5, 2, 0, 6, 2]
        let case3 = [2, 1]
        
        
        XCTAssertEqual(productsDiff(case1), [15, 5, 3])
        XCTAssertEqual(productsDiff(case2), [0, 0, 120, 0, 0])
        XCTAssertEqual(productsDiff(case3), [1 , 2])
        
    
    }
    
    
    func testDeDupedSortedArray() {
        let case1 = [1, 1, 1, 2, 2, 3, 3]
        let case2 = [0, 0, -2, 5, 8, 3, 9]
        
        
        XCTAssertEqual(dedupeSortedArray(case1).0, [1, 2, 3])
        XCTAssertEqual(dedupeSortedArray(case1).1, 3)
        
        XCTAssertEqual(dedupeSortedArray(case2).0, [0, -2, 5, 8, 3, 9])
        XCTAssertEqual(dedupeSortedArray(case2).1, 6)
        
        
        
        
    }
    
}
