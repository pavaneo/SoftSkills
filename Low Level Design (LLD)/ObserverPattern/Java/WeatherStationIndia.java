// Concrete class that implements Publisher where this can notify Subscribers for any changes in the events

import java.util.ArrayList;
import java.util.List;

public class WeatherStationIndia implements Publishers {

    public double temp;

    private List<Subscribers> subscribers;

    public WeatherStationIndia() {
        subscribers = new ArrayList<>();
    }

    @Override
    public void register(Subscribers sub) {
        subscribers.add(sub);
    }

    @Override
    public void remove(Subscribers sub) {
        subscribers.remove(sub);
    }

    public void updateWeather(double newTemp) {
        temp = newTemp;
        notifySub();
    }

    @Override
    public void notifySub() {
       for (Subscribers sub : subscribers) {
           sub.updateWeatherReport(temp);
       }
    }
}
