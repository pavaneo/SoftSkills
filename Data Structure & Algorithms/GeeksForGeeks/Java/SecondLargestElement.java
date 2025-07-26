public class SecondLargestElement {
    
    public static int secondLargestElement(int[] arr) {
        if (arr.length < 0) {
            throw new IllegalAccessError("Array Must Contain At least two elements");
        }

        int largest = Integer.MIN_VALUE;
        int second = Integer.MIN_VALUE;

        for (int i: arr) {
            if (i > largest) {
                second = largest;
                largest = i;
            } else if (i > second && i != largest) {
                second = i;   
            }
        }
        return second;
    }
}
