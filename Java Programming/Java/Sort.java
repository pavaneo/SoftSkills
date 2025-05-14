
import java.util.ArrayList;
import java.util.Collections;

public class Sort {
    

    public static void main(String[] args) {
        ArrayList<Integer> items = new ArrayList<>();
        System.out.println("--------Before sort----------");
        items.add(90);
        items.add(4);
        items.add(100);
        items.add(3);
        printAll(items);
        System.out.println("--------After sort----------");
        Collections.sort(items);
        printAll(items);

    }

    public static void printAll(ArrayList<Integer> items) {
        for (Integer item: items) {
            System.out.println(item);
        }
    }
}
