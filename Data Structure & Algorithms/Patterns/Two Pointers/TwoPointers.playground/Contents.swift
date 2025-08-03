import Cocoa

// Check if string is palindrome
func isPalidrome(_ s: String) -> Bool {
    var filtered = s.lowercased().filter { $0.isLetter || $0.isNumber }
    var left = filtered.startIndex
    var right = filtered.index(before: filtered.endIndex)
    while left < right {
        if filtered[left] != filtered[right] {
            return false
        }
        left = filtered.index(after: left)
        right = filtered.index(before: right)
    }
    return true
}

// Two sum sorted array
func twoSum(_ numbers: [Int], target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    while left < right {
        let sum = numbers[left] + numbers[right]
        if target == sum {
            return [left + 1, right + 1]
        }
        else if sum < target {
            left += 1
        } else {
            right -= 1
        }
    }
    return []
}

// Remove Duplicates Sorted array in place
func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var slow = 0
    for fast in 1..<nums.count {
        if nums[slow] != nums[fast] {
            slow += 1
            nums[slow] = nums[fast]
        }
    }
    return slow + 1
}


// Container with most water
func maxArea(_ height: [Int]) -> Int {
   return 0
}
