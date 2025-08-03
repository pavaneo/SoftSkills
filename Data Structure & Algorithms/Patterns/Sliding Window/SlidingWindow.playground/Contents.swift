import Foundation

// Sliding window [2, 1, 5, 1, 3, 2] and k = 3

func maximumSumWithWindow(_ num: [Int], _ k: Int) -> Int {
    var maxSum = 0
    var windowSum = 0
    for i in 0..<num.count {
        // First add the values to window or add next item
        windowSum += num[i]
        if i >= k {
            // subtract last item
            windowSum -= num[i - k]
        } else if i >= k - 1 {
            // Find out the maximum sum
            maxSum = max(maxSum, windowSum)
        }
    }
    return maxSum
}


func firstNegativeNumberInEveryWindow() {
    return
}
