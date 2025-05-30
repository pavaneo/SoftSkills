import UIKit

protocol Vehicle {
    func color()
}

enum VehicleType {
    case car
    case bus
}

class Car: Vehicle {
    func color() {
        print("Color for Car is White")
    }
}

class Bus: Vehicle {
    func color() {
        print("Color of Bus is red")
    }
}

class VehicleFactory {
    
    static func createVehicle(type: VehicleType) -> Vehicle {
        switch type {
        case .car:
            return Car()
        case .bus:
            return Bus()
        }
    }
}

let carVehicle = VehicleFactory.createVehicle(type: .car)
let busVehicle = VehicleFactory.createVehicle(type: .bus)

carVehicle.color()
busVehicle.color()
