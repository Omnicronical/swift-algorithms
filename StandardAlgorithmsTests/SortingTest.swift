//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Hassall, Oscar (HWTA) on 05/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    
    func testMergeSort() {
        //arrange
        let sorting = Sorting()
        var data: [Int] = []
        for _ in 0...100 {
            data.append(Int.random(in: 0...100))
        }
        //act
        let actual = sorting.mergeSort(array: data)
        //assert
        XCTAssertEqual(actual, sorting.bubbleSort(data: data))
    }
    
    func testBubbleSort() {
        //arrange
        let sorting = Sorting()
        var data: [Int] = []
        for _ in 0...100 {
            data.append(Int.random(in: 0...100))
        }
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, sorting.mergeSort(array: data))
    }
    
    func testPivotPoint() {
        //arrange
        let sorting = Sorting()
        var data: [Int] = []
        for _ in 0...10 {
            data.append(Int.random(in: 0...100))
        }
        
        var expected = data.sorted()

        //act
        let actual = sorting.quickSort(array: data)
        //assert
        XCTAssertEqual(actual, expected)
    }

    func testQuickSortWithArrayWithDuplicatesReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [26,26,7,5]
        let expected = [5,7,26,26]

        //act
        let actual = sorting.quickSort(array: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testAppendContentsOf() {
        let original = [1,2,3]
        var data = [1,2,3]
        let contents = [26,26]
        data.append(contentsOf: contents)
        
        XCTAssertEqual(data, [1,2,3,26,26])
    }
    
}
