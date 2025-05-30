class DataProcessor {

    void beginProcess() {
        System.out.println("Dafault Begin Processor");
    }

    void endProcess() {
        System.out.println("Default End Processor");
    }

    void cancelProcess() {
        System.out.println("Default Cancel Processor");
    }

    final void processData() {
        beginProcess();
        cancelProcess();
        endProcess();
    }
}