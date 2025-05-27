import UIKit


// Publisher

protocol Publisher {
    func register(sub: Subscriber)
    func unregister(sub: Subscriber)
    func notify()
}


// Subscriber

protocol Subscriber {
    func updateTemp(value: Double)
}

// Concrete class that implement Subscribers

class MobileDevice: Subscriber {
    func updateTemp(value: Double) {
        print("New Updated Temperature for Mobile Device is: \(value)")
    }
}

// Concrete class that implement Publishers

class DigitalDisplay: Subscriber {
    func updateTemp(value: Double) {
        print("New Updated Temperature for Digital Display is: \(value)")
    }
}

// Concrete class that implement Publisher

class WeatherStation: Publisher {
    
    // Hold the number of subscribers
    var subscribers: [Subscriber] = []
    
    // Temperature Instance
    var temperature: Double = 0.0
    
    init(temperature: Double) {
        self.temperature = temperature
    }
    
    func register(sub: Subscriber) {
        subscribers.append(sub)
    }
    
    func unregister(sub: Subscriber) {
        subscribers.removeAll { ObjectIdentifier($0 as AnyObject) == ObjectIdentifier(sub as AnyObject) }
    }
    
    func updateTemperature(_ newTemperature: Double) {
        self.temperature = newTemperature
        notify()
    }
    
    func notify() {
        for sub in subscribers {
            sub.updateTemp(value: temperature)
        }
    }
}


let station = WeatherStation(temperature: 25.0)
let mobile = MobileDevice()
let display = DigitalDisplay()

station.register(sub: mobile)
station.register(sub: display)

station.updateTemperature(30.0)

station.unregister(sub: mobile)

station.updateTemperature(40.0)
