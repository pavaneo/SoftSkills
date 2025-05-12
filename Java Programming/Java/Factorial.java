public class Factorial {
    

    public static void main(String[] args) {
        System.out.println("factorial of number " + 5 + " is " + factorialOfNumber(5));
        
    }

    public static int factorialOfNumber(int number) {
        if (number <= 1) {
            return number;
        }
        return  number * factorialOfNumber(number - 1);
    }
}
