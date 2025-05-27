
import java.util.Arrays;


public class SlidingWindowProblem {

    public static void main(String[] args) {

        Integer k = 1;
        int[] arr = {100, 200, 300, 400};
        System.out.println(Arrays.toString(arr));

        maxSumBruteForce(arr, k);
        slidingWindowMethod(arr, k);

        // Longest sub string without repeating character
        String mainString = "abcabcbb";
        longestSubStringWithoutRepeatingCharacters(mainString);

        // Sub array with given sum
        int[] intArr = {1, 4, 20, 3, 10, 5};
        int totalSum = 33;
        subArrayWithGivenSum(intArr, totalSum);
    }

    public static void subArrayWithGivenSum(int[] arr, int sum) {
        int curr = 0;
        int s = 0;
        for (int i = 0; i < arr.length; i++) {
            curr += arr[i];
            while (sum < curr) {
                curr -= arr[s];
                s++;
            }
            if (curr == sum) {
                System.out.println("Sub Array With Given Sum Found");
                return;
            }
        }
        System.out.println("Hello World");
        System.out.println("Sub Array With Given Sum Not Found");
    }

    // Input = "abcabcbb"  
    public static void longestSubStringWithoutRepeatingCharacters(String s) {
        System.out.println();
        System.out.println("Longest Substring with out repeating character count are: ");
        System.out.println();
    }

    // 100, 200, 300, 400 and k = 2
    public static void maxSumBruteForce(int[] arr, Integer k) {
        int sum = 0;
        int toIndex = arr.length - k;
        for (int i = 0; i <= toIndex; i++) {
            Integer rangeSum = 0;
            for (int j = i; j < i + k; j++) {
                System.out.println(arr[j]);
                rangeSum = rangeSum + arr[j];
            }
            sum = Integer.max(sum, rangeSum);
        }
        System.out.println("Total Sum = " + sum);
    }

    public static void slidingWindowMethod(int[] arr, Integer k) {
        int current = 0;
        for (int i = 0; i < arr.length; i++) {
            current = current + arr[i];
        }
        int result = 0;
        for (int i = k; i < arr.length; i++) {
            current = current + arr[i] - arr[i - k];
            result = Integer.max(current, result);
        }
        System.out.println("Total Sum Sliding Window = " + result);
    }
}
