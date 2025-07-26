//
//  ArrayProblems.swift
//  
//
//  Created by Pavan Kumar J on 22/06/25.
//

public class ArrayProblems {
    
    public static func leftRotateArrayByOne(_ arr: inout [Int], _ n: Int) -> [Int] {
        guard !arr.isEmpty else { return arr }
        
        let count = arr.count
        let steps = n % count  // Handle n > count
        let rotated = Array(arr[steps..<count] + arr[0..<steps])
        
        return rotated
    }
    
    public static func isSorted(_ arr: [Int]) -> Bool {
        for i in 1..<arr.count {
            if arr[i - 1] > arr[i] {
                return false
            }
        }
        return true
    }
    
    // [0,1,4,3,2,0,5,0]
    public static func moveZerosToEnd(_ arr: inout [Int]) -> [Int] {
        for i in 0..<arr.count {
            if arr[i] == 0 {
                let temp = arr.remove(at: i)
                arr.append(temp)
            }
        }
        return arr
    }
    
    public static func reverseArray(_ arr: inout [Int]) -> [Int] {
        
        guard arr.count > 0 else {
            print("Array is empty")
            return arr
        }
        
        var start = 0
        var end = arr.count - 1
        
        while start < end {
            let temp = arr[start]
            arr[start] = arr[end]
            arr[end] = temp
            
            start += 1
            end -= 1
        }
    
        return arr
    }
    
    public static func largeElement(_ arr: [Int]) -> Int {
        var largeElement = arr[0]
        for i in 1..<arr.count {
            if arr[i] > largeElement {
                largeElement = arr[i]
            }
        }
        return largeElement
    }
    
    public static func removeDuplicates(_ arr: inout [Int]) -> [Int] {
        
        guard arr.count > 1 else {
            return arr
        }
        
        var dict: [Int: Int] = [:]
        
        for info in arr {
            if let _ = dict[info] {
                
            } else {
                dict[info] = 1
            }
        }
        
        return Array(dict.keys)
    }
    
    
    
    // [1, 1, 2, 3, 4, 4, 5]
    public static func removeDuplicateElementFromSortedArray(_ arr: inout [Int]) -> [Int] {
        
        guard arr.count > 1 else { return arr }
        
        var index = 1
        
        while index < arr.count {
            if arr[index] == arr[index - 1] {
                arr.remove(at: index)
            } else {
                index += 1
            }
        }
        
        return arr
    }
    
    public static func secondLargest(_ arr: [Int]) -> Int {
        
        if arr.count < 2 {
            print("Array should contain at least 2 items")
            return -1
        }
        
        var largest = Int.min
        var secondLargest = Int.min
        
        for i in arr {
            if i > largest {
                secondLargest = largest
                largest = i
            } else if i > secondLargest && i != largest {
                secondLargest = i
            }
        }
        
        return secondLargest
    }
    
    // [1, 2, 3, 1, 1, 1, 1, 4, 2, 3]
    public static func longestSubArrayWithSumK(_ arr: inout [Int], _ sum: Int) -> [Int] {
        
    }
}
