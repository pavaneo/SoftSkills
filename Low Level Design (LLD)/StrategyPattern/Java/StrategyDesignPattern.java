interface Mobile {
    void call();
    void sendMessage();
    void browseInternet();
}

class StrategyDesignPattern {

    public static void main(String[] args) {
        
        System.out.println();
        System.out.println("---------------------------------------");
        System.out.println("Samsung Device");
        System.out.println("---------------------------------------");
        System.out.println();
        SmartPhone smart = new SmartPhone(new Samsung());
        smart.call();
        smart.browseInternet();
        smart.sendSMS();

        System.out.println();
        System.out.println("---------------------------------------");
        System.out.println("Apple Device");
        System.out.println("---------------------------------------");
        System.out.println();
        SmartPhone apple = new SmartPhone(new Apple());
        apple.call();
        apple.browseInternet();
        apple.sendSMS();
        System.out.println();
    }
}