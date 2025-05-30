public class TemplatePattern {
    
    public static void main(String[] args) {
        
        System.out.println();
        System.out.println("*****************************");

        CSVProcessor csv = new CSVProcessor();
        csv.processData();

        System.out.println();
         System.out.println("*****************************");

        JsonProcessor json = new JsonProcessor();
        json.processData();

        System.out.println();
        System.out.println("*****************************");

    }
}
