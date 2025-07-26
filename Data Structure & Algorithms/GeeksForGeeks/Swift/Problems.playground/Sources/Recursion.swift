//
//  Recursion.swift
//  
//
//  Created by Pavan Kumar J on 17/06/25.
//


/*
 
 Function calls itself is called Recursion.
 
 
 */

public class Recursion {
    
    public static func printNameByNTimes(_ n: Int) {
        if n == 0 {
            return
        }
        print("Hello \(n)")
        printNameByNTimes(n - 1)
        
    }
    
    public static func printSumOfFirstNNumbers(_ n: Int) -> Int {
        if n < 1 {
            return n
        }
        return n + printSumOfFirstNNumbers(n - 1)
    }
    
    public static func factorial(_ n: Int) -> Int {
        if n < 1 {
            return 1
        }
        return  n * factorial(n - 1)
    }
    
    public static func isPalindrome(_ s: String) {
        
    }
    
    public static func reverseArray(_ arr: String) {
        
    }
}
