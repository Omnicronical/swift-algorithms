//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hassall, Oscar (HWTA) on 15/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func testSumOfFirstAndLastWithIntegerArrayReturnsSumOFFirstAndLastItems() {
        //arrange
        let inputData = [1, 214, 121, 211]
        let expected = 212
        let unknown = Unknown()
        
        let actual = unknown.sumOfFirstAndLast(array: inputData)
        
        XCTAssertEqual(actual,expected)
    }
    
    func testSumOfFirstAndLastWithSingleElementArrayReturnsSameNumber() {
        let inputData = [1]
        let expected = 2
        let unknown = Unknown()
        
        let actual = unknown.sumOfFirstAndLast(array: inputData)
        
        XCTAssertEqual(actual,expected)
    }
    
    func testModeOfASortedArray() {
        var inputData = [2,2,4,5,6,7,9,10,10,10]
        let expected = 10
        let unknown = Unknown()
        
        let actual = unknown.modeOfSortedArray(array: inputData)
        
        XCTAssertEqual(actual, expected)
    }
}
