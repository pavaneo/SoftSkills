public class JsonProcessor extends DataProcessor {

    @Override
    void beginProcess() {
        System.out.println("Json Begin Processor");
    }

    @Override
    void endProcess() {
        System.out.println("Json End Processor");
    }

    @Override
    void cancelProcess() {
        System.out.println("Json Cancel Processor");
    }
}
