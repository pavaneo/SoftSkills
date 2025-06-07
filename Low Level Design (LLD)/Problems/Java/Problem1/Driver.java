public class Driver {
    private String name;
    private Vehicle vehicle;
    private Location location;

    public Driver(String name, Vehicle vehicle, Location location) {
        this.name = name;
        this.vehicle = vehicle;
        this.location = location;
    }

    public void updateLocation(Location location) {
        this.location = location;
    }
}