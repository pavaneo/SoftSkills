import Foundation

/*
 “A class can inherit methods, properties, and other characteristics from another class”
 */


//Base Class
open class Vehicle {
    open var currentSpeed: Double = 0.0
    open var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    public init(currentSpeed: Double = 0.0) {
        self.currentSpeed = currentSpeed
    }
    
    open func makeNoise() {
        print("Wroom Wroom!")
    }
}

//// Sub-Class
public class Bicycle: Vehicle {
    public var hasBasket = false
    public override var description: String {
        return "Hello Sub Class"
    }
//    public override var currentSpeed: Double {
//        return 40.0
//    }
    
    public init(hasBasket: Bool = false, currentSpeed: Double) {
        super.init(currentSpeed: 50.0)
        self.hasBasket = hasBasket
    }
    
    public override func makeNoise() {
        print("Pooow Pooow")
    }
}
