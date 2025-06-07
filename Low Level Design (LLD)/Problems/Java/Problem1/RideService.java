import java.util.ArrayList;

public class RideService {
    
    private ArrayList<Passenger> passengers = new ArrayList<>();
    private ArrayList<Driver> drivers = new ArrayList<>();

    void addDriver(Driver newDriver) {
        drivers.add(newDriver);
    }

    void removeDriver(Driver removeDriver) {
        drivers.remove(removeDriver);
    }


    public double calculatePrice() {
        return 0.0;
    }
}
