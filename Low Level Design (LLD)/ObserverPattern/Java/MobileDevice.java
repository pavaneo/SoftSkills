// Concrete class that implements Subscribers where models can receive objects send from Publishers
public class MobileDevice implements Subscribers {

    @Override
    public void updateWeatherReport(double newTemp) {
        System.out.println("Updated weather report for Mobile Device " + newTemp);
    }
}
