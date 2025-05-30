public class VehicleFactory {
    
    static Vehicle vehicleFactory(String type) {
        switch (type) {
            case "car":
                return new Car();
            case "bus":
                return new Bus();
            default:
                throw new AssertionError();
        }
    }
}
