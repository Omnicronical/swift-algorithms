//
//  main.swift
//  StandardAlgorithms
//
//  Created by Hassall, Oscar (HWTA) on 05/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

func main() {
    var array = [Int]()
    for _ in 0..<10 {
        array.append(Int.random(in: 0...100 ))
    }
    let sortedArray = [54,67,13,78,98,43,23,46,57,87]
    let target = Int.random(in: 0...100)
    let sorting = Sorting()
    print("Which sort?")
    let input = readLine()!
    let userInput = Int(input)!
    
    if userInput == 1{
        let output = sorting.linearSearch(data: array, input: target)
        print(output)
    } else if userInput == 2{
        let output = sorting.binarySearch(array: sortedArray, userInput: target)
        print(output)
    } else if userInput == 3 {
        let output = sorting.mergeSort(array: array)
        print(output)
    } else if userInput == 4 {
        let output = sorting.bubbleSort(data: array)
        print(output)
    } else if userInput == 5 {
        let output = sorting.insertionSort(array: array)
        print(output)
    }
}

main()
