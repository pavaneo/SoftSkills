public class ReverseArray {
    
    public static int[] reverseArray(int[] arr) {

        if (arr.length == 0) {
            throw new IllegalAccessError("Array Is Empty");
        }

        int start = 0;
        int end = arr.length - 1;

        while (start < end) { 
            int temp = arr[start];
            arr[start] = arr[end];
            arr[end] = temp;

            start += 1;
            end -= 1;
        }

        return arr;
    }
}
