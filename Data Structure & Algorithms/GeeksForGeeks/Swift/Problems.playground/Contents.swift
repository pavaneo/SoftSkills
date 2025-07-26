import Cocoa

class DSAProblems {
    
    init() {
        print("*******************************************")
        print("Welcome to DSA problems")
        print("*******************************************")
        run()
        runLoop(run())
    }
    
    func runLoop(_ problemsList: [String]) {
        for i in 0..<problemsList.count {
            if i == problemsList.count - 1 {
                print("\n******************** Latest **********************\n")
                print(problemsList[i])
                print("******************** Latest **********************")
            } else {
                print("\n\(problemsList[i])")
            }
        }
    }
    
    
    func run() -> [String] {
        
        var problemList: [String] = []
        var reverseArray = [4, 8, 11, 18, 9]
        var removedDuplicates = [4, 8, 11, 18, 9, 5, 6, 5, 6, 4]
        var leftRotateByOne = [1, 2, 3, 4, 5]
        var moveZerosToEnd = [0,1,4,3,2,0,5,0]
        var removeDuplicateElementFromSortedArray = [1, 1, 2, 3, 4, 4, 5]
        var countDigit = 12345
        var countDigitLog10 = 12345
        var reverseNumber = 12345
        var palindrome = 101
        var palindrome1 = 100
        var armstrongNumber = 1634
        var isThisPrimeNumber = 11
        var longestSubArrayWithSumk = [1, 2, 3, 1, 1, 1, 1, 4, 2, 3]

    
        problemList.append("Large number of [10, 5, 3, 2, 99] is : \(ArrayProblems.largeElement([10, 5, 3, 2, 99]))\n")
        problemList.append("Is array is sorted [4, 8, 10, 80, 90] is : \(ArrayProblems.isSorted([4, 8, 10, 80, 90]))\n")
        problemList.append("Is array is sorted [4, 8, 10, 18, 9] is : \(ArrayProblems.isSorted([4, 8, 10, 18, 9]))\n")
        problemList.append("Second Largest Element [4, 8, 10, 18, 9] is : \(ArrayProblems.secondLargest([4, 8, 11, 18, 9]))\n")
        problemList.append("Reverse Array [4, 8, 11, 18, 9] is : \(ArrayProblems.reverseArray(&reverseArray))\n")
        problemList.append("Remove Duplicates in the array [4, 8, 11, 18, 9, 5, 6, 5, 6, 4] is : \(ArrayProblems.removeDuplicates(&removedDuplicates))\n")
        problemList.append("Left Rotate Array By One [1, 2, 3, 4, 5] is : \(ArrayProblems.leftRotateArrayByOne(&leftRotateByOne, 1))\n")
        problemList.append("Move Zeros to end [0,1,4,3,2,0,5,0] is : \(ArrayProblems.moveZerosToEnd(&moveZerosToEnd))\n")
        problemList.append("Remove Duplicate Element from Sorted Array [1, 1, 2, 3, 4, 4, 5] is : \(ArrayProblems.removeDuplicateElementFromSortedArray(&removeDuplicateElementFromSortedArray))\n")

        problemList.append("Last Digit of 12345 is : \(BasicMaths.lastDigit(12345))\n")
        problemList.append("Remove Last Digit of 12345 and output will be : \(BasicMaths.removeLastDigit(12345))\n")
        problemList.append("Count Digit of 12345 is : \(BasicMaths.countDigit(&countDigit))\n")
        problemList.append("Count Digit of 12345 by using log10 is : \(BasicMaths.countDigitBylog(&countDigitLog10))\n")
        problemList.append("Reverse of number 12345 is : \(BasicMaths.reverseDigit(&reverseNumber))\n")
        problemList.append("Check given number 101 is palindrome or not  : \(BasicMaths.checkPalindrome(&palindrome))\n")
        problemList.append("Check given number 100 is palindrome or not  : \(BasicMaths.checkPalindrome(&palindrome1))\n")
        problemList.append("Is this number 1634 is Armstrong number ? : \(BasicMaths.armstrongNumbers(&armstrongNumber))\n")
        problemList.append("Is this number is prime Number ? : \(BasicMaths.isThisPrimeNumber(&isThisPrimeNumber))\n")
    
//        problemList.append("Find GCD of two numbers is: \(BasicMaths.findGCDOfTwoNumbers(3, 4))")
//        problemList.append("Find HCF of two numbers is: \(BasicMaths.findHCFOfTwoNumbers(5, 6))")
        
        
        
        // Recursion
        
        problemList.append("Recursion - 1 Print Name by 6 times: \(Recursion.printNameByNTimes(6))\n")
        problemList.append("Recursion - Print sum of first 5 Numbers (5 + 4 + 3 + 2 + 1) is : \(Recursion.printSumOfFirstNNumbers(5))\n")
        problemList.append("Recursion - Factorial of 8 is : \(Recursion.factorial(6))\n")
        problemList.append("Recursion - Fibonacci of 8 is : \(Recursion1.fibonacci(6))\n")
        problemList.append("Recursion - isPalindrome Gadag : \(Recursion.isPalindrome("Gadag"))\n")
//        problemList.append("Recursion - Reverse Array of [1, 2, 3, 4] is : \(Recursion1.fibonacci(6))\n")
        
        
        // Arrays
        problemList.append("Longest sub array with sum [1, 2, 3, 1, 1, 1, 1, 4, 2, 3] is : \(ArrayProblems.longestSubArrayWithSumK(&longestSubArrayWithSumk, 1))\n")

        
        
        return problemList
    }
}

let _ = DSAProblems()


// **************************************************** Work Sheets ****************************************************


let digits = String(12345).compactMap { Int(String($0)) }
print(digits)

let numbers = [1, 2, 3, 4]
let sum = numbers.reduce(0) { $0 + $1 }
let product = [2, 3, 4].reduce(0) { $0 * $1 } // 24

print(sum)
print(product)

print("\n******************** Recursion Start **********************\n")

class Recursion1 {
    public static func printNameByNTimes(_ n: Int) {
        if n <= 0 {
            return
        }
        printNameByNTimes(n - 1)
        print("Hello \(n)")
        
    }
    
    public static func print1ToN(_ n: Int, _ i: Int) {
        if i > n {
            return
        }
        print("Index \(i)")
        print1ToN(n, i + 1)
    }
    
    public static func printNTo1(_ n: Int) {
        if n < 1 {
            return
        }
        print("Index \(n)")
        printNTo1(n - 1)
    }
    
    public static func fibonacci(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}


Recursion1.printNameByNTimes(6)
print("\n *** End *** \n")
Recursion1.print1ToN(6, 1)
print("\n *** End *** \n")
Recursion1.printNTo1(6)

print("\n******************** Recursion End **********************\n")
