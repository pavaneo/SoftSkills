
// Publisher
interface Publishers {
    void register(Subscribers sub);
    void remove(Subscribers sub);
    void notifySub();
}

// Subscribers
interface Subscribers {
    void updateWeatherReport(double newTemp);
}

// Main class for observer pattern
public class WeatherStation {
    public static void main(String[] args) {
        System.out.println();
        System.out.println("*********************************************************************************");
        System.out.println("Observer Patter - Publisher and subscriber Technique");
        System.out.println("*********************************************************************************");
        System.out.println();
        MobileDevice mobile = new MobileDevice();
        DigitalDisplay display = new DigitalDisplay();
        WeatherStationIndia station = new WeatherStationIndia();

        System.out.println("Register Subscribers");
        System.out.println("----------------------------------------");
        station.register(mobile);
        System.out.println("Mobile device registered");
        station.register(display);
        System.out.println("Digital Display registered");
        System.out.println();
        System.out.println("****** Updating weather ******");
        System.out.println();
        station.updateWeather(35.0);
        System.out.println();

        System.out.println("Remove mobile device subscribers");
        System.out.println("----------------------------------------");
        System.out.println();
        station.remove(mobile);
        System.out.println("****** Updating weather ******");
        System.out.println();
        station.updateWeather(40.0);
        System.out.println();

    }    
}
