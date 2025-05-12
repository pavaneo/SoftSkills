
import java.util.Scanner;

public class Input {
    
    public static void main(String[] args) {

        try (Scanner sc = new Scanner(System.in)) {
            int a = sc.nextInt();
            int b = sc.nextInt();
            System.out.println();
            System.out.println("Total Sum =" + (a + b));

            if ((a + b) % 2 == 0) {
                System.out.println("Sum is even");
            } else {
                System.out.println("Sum is odd");
            }
        }
    }
}
