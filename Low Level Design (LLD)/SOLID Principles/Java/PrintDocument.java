public class PrintDocument {
    public static void main(String[] args) {

        // Parent
        Printer print = new Printer();
        print.print();
        print.write();
        

        // Child1 
        SimplePrinter simple = new SimplePrinter();
        simple.print();

        // simple.write()
        // This above function is violating LSP, it through error

        // simple.write();

        // Child2
        MultiPrinter multi = new MultiPrinter();
        multi.print();
        multi.write();
    }
}
