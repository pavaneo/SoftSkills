//
//  Maths.swift
//  
//
//  Created by Pavan Kumar J on 15/06/25.
//

import Foundation

public class BasicMaths {
    
    
    public static func lastDigit(_ number: Int) -> Int {
        // To get last digit we need to divide by 10 (modulo)
        return number % 10
    }
    
    public static func removeLastDigit(_ number: Int) -> Int {
        // To remove last digit we should divid it by 10
        return number / 10
    }
    
    // 0(d) where d is number of digits
    public static func countDigit(_ number: inout Int) -> Int {
        var count = 0
        while number > 0 {
            number /= 10
            count += 1
        }
        return count
    }
    
    // 0(log10(number))
    public static func countDigitBylog(_ number: inout Int) -> Int {
        if number == 0 {
            return 1
        }
        let safeAbs = number == Int.min ? Int.max : abs(number)
        return Int(log10(Double(safeAbs))) + 1
    }
    
    public static func reverseDigit(_ number: inout Int) -> Int {
        var reverseNumber = 0
        
        while number > 0 {
            // get the last digit
            let lastDigit = number % 10
            
            // remove last digit
            number = number / 10
            
            // Multiply by 10 and add last digit
            reverseNumber = (reverseNumber * 10) + lastDigit
        }
        return reverseNumber
    }
    
    // 100 / 101
    public static func checkPalindrome(_ number: inout Int) -> Bool {
        let numberToReverse = number
        return numberToReverse == reverseDigit(&number)
    }
    
    public static func findGCDOfTwoNumbers(_ number1: Int, _ number2: Int) -> Int {
        return 0
    }
    
    public static func findHCFOfTwoNumbers(_ number1: Int, _ number2: Int) -> Int {
        return 0
    }
    
    /*
     371 = 3^3 + 7^3 + 1^3
     basically whatever the given number if we add those with qubes then its should be same as the given number
     */
    public static func armstrongNumbers(_ number: inout Int) -> Bool {
        let digits = String(number).compactMap { Int(String($0)) }
        return number == digits.reduce(0) { $0 + Int(pow(Double($1), Double(digits.count))) }
    }
    
    public static func isThisPrimeNumber(_ number: inout Int) -> Bool {
        if number <= 1 {
            return false
        }
        
        for i in 2..<number {
            if (number % i == 0) {
                return false
            }
        }
        return true
    }
}
