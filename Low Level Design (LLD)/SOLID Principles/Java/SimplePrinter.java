public class SimplePrinter extends Printer {
    
     @Override
    public void print() {
        System.out.println("Simple Printer Print");
    }

     @Override
    public void write() {
        throw new IllegalArgumentException("Not supported");
    }
}
