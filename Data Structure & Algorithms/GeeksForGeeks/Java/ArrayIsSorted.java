public class ArrayIsSorted {
    
    public static Boolean isArraySorted(int[] arr) {
        for(int i = 1; i < arr.length; i ++) {
            if (arr[i - 1] > arr[i]) {
                return false;
            }
        }
        return true;
    }
}
