public class HollowRectangle {
    
    /*
     * 
     * Print the below pattern
     * 
     *         *****
     *         *   *
     *         *   *
     *         *****
     * 
     * 
     */

     public static void main(String[] args) {

        for (int i = 0; i < 4; i ++) {
            System.out.println();
            for (int j = 0; j < 5; j ++) {
                if (i == 0 || i == 3 || j == 0 || j == 4) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
        System.out.println();
     }
}
