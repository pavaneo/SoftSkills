public class LargestElement {
    
    public static int largestElement(int[] arr) {
        if (arr.length == 0) {
            throw new IllegalAccessError("Array is Empty");
        }
        int large = arr[0];
        for (int i = 1; i < arr.length; i ++) {
            if (large < arr[i]) {
                large = arr[i];
            }
        }
        return large;
    }
}
