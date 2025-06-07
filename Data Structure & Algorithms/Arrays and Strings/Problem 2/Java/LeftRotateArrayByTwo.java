
import java.util.ArrayList;



class LeftRotateArrayByTwo {

    public static void main(String[] args) {
        System.out.println("Left Rotate Array By Given Places");

        int[] input1 = {1, 2, 3, 4, 5};
        int places = 2;
        leftRotateByDplaces(input1, places);

    }

    public static void leftRotateByDplaces(int[] arr, int places) {
       ArrayList<Integer> modify = new ArrayList<>();
       for (int i = places; i < arr.length; i ++) {
        modify.add(arr[i]);
       }

       for(int j = 0; j < places; j ++) {
        modify.add(arr[j]);
       }

       printAllElement(modify);
    }

    public static void printAllElement(ArrayList<Integer> elements) {
        for (int i = 0; i < elements.size(); i++) {
            System.out.println(elements.get(i));
        }
    }
}