//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hassall, Oscar (HWTA) on 05/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [6, 5, 2, 9]
        let expected = [2, 5, 6, 9]
        let sorting = Sorting()
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithManyIntegerArraysReturnsSortedArrays() {
        //arrange
        let testCases = [(input: [13, 3, 6], expected: [3, 6, 13]),
                         (input: [13, 3, 421, 12412, 213], expected: [3, 13, 213, 421, 12412])]
                         
        let sorting = Sorting()
        
        //act
        
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
