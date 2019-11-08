//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Hassall, Oscar (HWTA) on 05/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
      var array = data
      for i in 0...array.count {
        for j in 0...array.count-2 {
          if array[j] > array[j+1]{
            let temp = array[j]
            array[j] = array[j+1]
            array[j+1] = temp
          }
        }
      }
      return array
    }

    func mergeSort(array: [Int]) -> [Int] {
      if array.count>1 {
        print(array)
        let middle = array.count / 2

        let leftArray = mergeSort(array: Array(array[0..<middle]))
        
        let rightArray = mergeSort(array: Array(array[middle..<array.count]))
        
        return merger(leftArray: leftArray, rightArray: rightArray)
        
      } else {

        return(array)

      }
    }

    func merger(leftArray: [Int], rightArray: [Int]) -> [Int]{
      var leftI = 0
      var rightI = 0
      var sortedArray: [Int] = []

      while leftI < leftArray.count && rightI < rightArray.count {
        let leftNum = leftArray[leftI]
        let rightNum = rightArray[rightI]

        if leftNum < rightNum {
          sortedArray.append(leftNum)
          leftI += 1
        } else if leftNum > rightNum {
          sortedArray.append(rightNum)
          rightI += 1
        } else {
          sortedArray.append(leftNum)
          leftI += 1
          sortedArray.append(rightNum)
          rightI += 1
        }
      }

      while leftI < leftArray.count {
        sortedArray.append(leftArray[leftI])
        leftI += 1
      }

      while rightI < rightArray.count {
        sortedArray.append(rightArray[rightI])
        rightI += 1
      }
      
      return sortedArray
    }

    func quickSort(array: [Int]) -> [Int] {
        var left = [Int]()
        var right = [Int]()
        var sorted = [Int]()
        if array.count <= 1{
            return array
        } else {
            var pivot = array[0]
            for i in 0..<array.count {
                let item = array[i]
                if item < pivot {
                    left.append(item)
                } else if item >= pivot {
                    right.append(item)
                }
            }
            sorted.append(contentsOf: (quickSort(array: left)))
            sorted.append(pivot)
            sorted.append(contentsOf: (quickSort(array: right)))
            return sorted
        }
       
    }

}

