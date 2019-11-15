//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Hassall, Oscar (HWTA) on 15/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Unknown {
    
    func sumOfFirstAndLast(array: [Int]) -> Int {
        print(array)
        let firstNum = array[0]
        let lastNum = array[array.count-1]
        print(firstNum)
        print(lastNum)
        let sum = (firstNum + lastNum)
        return sum
    }
    
    func modeOfSortedArray(array: [Int]) -> Int {
        var data = array
        print(data)
        var potential = true
        var max = 1
        var maxNum = 0
        var modeNumber = 0
        var currentCount = 1
        for i in 0 ..< data.count-1 {
                if data[i] == data[i+1] {
                    currentCount = currentCount + 1
                    print(currentCount)
                    modeNumber = data[i]
                    print(modeNumber)
                } else {
                        currentCount = 1
                }
                if currentCount > max {
                    max = currentCount
                    print(max)
                    maxNum = modeNumber
                    print(maxNum)
            }
      }
        return (maxNum)
    }
}
