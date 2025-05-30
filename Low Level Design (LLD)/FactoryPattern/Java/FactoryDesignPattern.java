class FactoryDesignPattern {

    public static void main(String[] args) {
        System.out.println();
        System.out.println("Factory Design Pattern");

        // For car object

        String[] vehicleList = {"car", "bus"};

        System.out.println();
        System.out.println();
        for(int i = 0; i < vehicleList.length; i ++) {
            Vehicle factory = VehicleFactory.vehicleFactory(vehicleList[i]);
            factory.color();
        }
        System.out.println();
        System.out.println();
    }
}