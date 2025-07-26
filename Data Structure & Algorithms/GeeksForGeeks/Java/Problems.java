
import java.util.ArrayList;
import java.util.Arrays;

class Problems {

    public static void main(String args[]) {
        System.out.println();
        System.out.println("****************************************************************");
        System.out.println("Welcome to DSA Problems");
        System.out.println("****************************************************************");
        run();
        runLoop();
    }

    public static ArrayList<String> run() {
        ArrayList<String> problemList = new ArrayList<>();
        int arr[] = new int[] {4, 8, 1, 0, 10};
        int sortedArray[] = new int[] {4, 8, 10, 80, 90};
        int nonSortedArray[] = new int[] {4, 8, 10, 18, 9};

        problemList.add("Adding Two Numbers: "+ AddTwoNumber.addTwoNumbers(40, 10));
        problemList.add("Largest element of array [4, 8, 1, 0, 10]: "+ LargestElement.largestElement(arr));
        problemList.add("Check If array is sorted [4, 8, 10, 80, 90]: "+ ArrayIsSorted.isArraySorted(sortedArray));
        problemList.add("Check If array is sorted [4, 8, 10, 18, 9]: "+ ArrayIsSorted.isArraySorted(nonSortedArray));
        problemList.add("Second Largest Element [4, 8, 10, 18, 9]: "+ SecondLargestElement.secondLargestElement(nonSortedArray));
        problemList.add("Reverse Array [4, 8, 10, 18, 9] is => "+ Arrays.toString(ReverseArray.reverseArray(nonSortedArray)));


        return problemList;
    }

    public static void runLoop() {

        ArrayList<String> problemList = run();

        for (int i = 0; i < problemList.size(); i++) {
            if (i == problemList.size() - 1) {
                System.out.println("\n******************************* Latest ********************************\n");
                System.out.println(problemList.get(i));
                System.out.println("\n******************************* Latest ********************************\n\n");
            } else {
                System.out.println();
                System.out.println(problemList.get(i));
                System.out.println();
            }
        }
    }
}