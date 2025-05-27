
import java.util.ArrayList;

public class ArrayListJava {
    
    public static void main(String[] args) {
        
        ArrayList<String> names = new ArrayList<>();
        names.add("Bangalore");
        names.add("Delhi");
        names.add("Mumbai");

        printAll(names);
        

        // Insert
        System.out.println("After insert at position 0");
        names.add(0, "Davangere");
        printAll(names);

        // Remove
        System.out.println("After remove at position 0");
        names.remove(0);
        printAll(names);

        //Update
        System.out.println("After update at position 0");
        names.set(0, "Davangere");
        printAll(names);
    }

    public static void printAll(ArrayList<String> names) {
        System.out.println();
        System.out.println("------------------");
        System.out.println("City Names as below:");
        System.out.println("------------------");
        for(String name: names) {
            System.out.println(name);
        }
        System.out.println("------------------");
        System.out.println();
    }
}
