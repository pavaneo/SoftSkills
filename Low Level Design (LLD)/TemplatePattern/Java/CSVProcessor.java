public class CSVProcessor extends DataProcessor {

    @Override
    void beginProcess() {
        System.out.println("CSV Begin Processor");
    }

    @Override
    void endProcess() {
        System.out.println("CSV End Processor");
    }

    @Override
    void cancelProcess() {
        System.out.println("CSV Cancel Processor");
    }
    
}
