import UIKit

// Lazy Stored Properties
var xyz = Person()
xyz.firstName
xyz.lastName
xyz.getFullName

// Computed properties
var squares = Square(numberOfSquares: 2)

squares.numberOfSquares

// Calculates and return values
squares.totalNumberOfSquares

// Assign value to total number of squares
squares.totalNumberOfSquares
squares.totalNumberOfSquares = 10
squares.totalNumberOfSquares

// Generics
addTwoNumbers(a: 3, b: 4)

var genericStructInt = GenericStack<Int>()
genericStructInt.addItem(item: 4)
genericStructInt.removeLastItem()

var genericStructDouble = GenericStack<Double>()
genericStructDouble.addItem(item: 3.5)
genericStructDouble.removeLastItem()

var resultGenerics = Result(value: 16)
resultGenerics.addNumberToDecimal()

//Heigher order function

let higherOrderFunctionResult = calculateDouble(activity: multiplyTwoNumber, distance: 30.0)
let mappedValues = HigherOrderFunction().returnMappedArrayValue()
let mappedString = HigherOrderFunction().returnMappedString()
let mappedDict = HigherOrderFunction().dictionaryUppercase(items: ["one": "first", "two": "second", "three": "third"])

let flatMapCollection = FlatMapFunction().flatMapCombination()
let compactMapCollection = CompactMap().compactMapCombination()

let filterCollection = FilterCollection().printEvenNumbersFromCollection()
let sortedCollection = SortedCollection().sortGivenCollection()
let sortedCollectionIncreasingOrder = SortedCollection().sortIncreasingOrder()
let sortedCollectionDecreasingOrder = SortedCollection().sortDecreasingOrder()

let reduceCollection = ReduceCollection().sumOfAllTheElement()

// Equatable and hashable

let string1 = "Hello"
let string2 = "World"

if string1 == string2 {
    print("Same")
} else {
    print("Not Same")
}

// Enum

Direction.east.rawValue
Steps.two.rawValue

let stepsCount = Steps(rawValue: 4)
stepsCount

SocialMedia().socialMediaDetails(media: .linkedin(numberOfPosts: 10))

IndoorGames.allCases.count
print("\n")
for cases in IndoorGames.allCases {
    print(cases.rawValue)
}

let tail = LinkedList.tail(value: 60, node: nil)

let node = LinkedList.head(
    value: 20,
    node: LinkedList.node(
        value: 30,
        node: LinkedList.node(
            value: 40,
            node: LinkedList.node(
                value: 50, node: tail))))

let head = LinkedList.head(value: 10, node: node)

print("\n")
print(head)


// Inheritance

let vehicle = Vehicle()
//let bicycle = Bicycle()
vehicle.makeNoise()
//bicycle.makeNoise()



let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
print(beginning)


// Arrays

print("/******************** Array *********************\n")

var intergerValues = [1, 3, 4, 5]
intergerValues.insert(50, at: 3)
intergerValues.remove(at: 2)
print(intergerValues)

for (key, value) in intergerValues.enumerated() {
    print("key -> \(key) and the value is \(value)")
}

print("/******************** Sets *********************\n")

var setArray = Set<String?>()
print("set count -> \(setArray.count)")

setArray.insert("Pavan")
setArray.insert("")
print("set count after modify -> \(setArray.count)")

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]

let valuesOfSets = oddDigits.union(evenDigits).sorted(by: { $0 < $1 })
print(valuesOfSets)

print("\n******************** Enums *********************\n")


enum Direction1 {
    case east(String)
    case west(String)
    case north(Int)
    case south(String)
}

func checkEnumValues(dir: Direction1) {
    switch dir {
    case .east(let eastString):
        print("eastString \(eastString)")
    case .west(let westString):
        print("westString \(westString)")
    case .north(let northString):
        print("northString \(northString)")
    case .south(let southString):
        print("northString \(southString)")
    }
}

print(Direction1.east("Hello"))

enum Temperature {
    case celsius(Double)
    case fahrenheit(Double)
    
    init(fromCelsius celsius: Double) {
        if celsius < -273.15 {
            self = .celsius(-273.15)
        } else {
            self = .celsius(celsius)
        }
    }
    
    init(fromFahrenheit fahrenheit: Double) {
        if fahrenheit < -459.67 {
            self = .fahrenheit(-459.67)
        } else {
            self = .fahrenheit(fahrenheit)
        }
    }
}

// Using custom initializers
let temp1 = Temperature(fromCelsius: -300.0)  // Adjusted to -273.15
let temp2 = Temperature(fromFahrenheit: 32.0)

print(temp1)  // Output: celsius(-273.15)
print(temp2)  // Output: fahrenheit(32.0)


print("\n******************** Properties *********************\n")




class FixedLengthRange {
    var firstValue: String? = nil
    var length: String? = nil
    
    init() {}
    
}
//var rangeOfThreeItems = FixedLengthRange(firstValue: "", length: "")
//rangeOfThreeItems.firstValue = "9"
//print("Hello World \(rangeOfThreeItems.firstValue)")

enum BinaryTree {
    case empty
    indirect case node(value: Int, left: BinaryTree, right: BinaryTree)
}

//enum NetworkError: Error {
//    case parseError(error: NetworkError)
//    indirect case debugError(error: NetworkError)
//}
//
//enum ParseError: Error {
//    case parse
//    case none
//}
//
//enum DebugError: Error {
//    case log
//    case print
//}

//print(NetworkError.debugError(error: .debugError(error: <#T##NetworkError#>)))



print("\n******************** Structure *********************\n")

struct Rect {
    var width: Double
    var height: Double
    var area: Double {
        get {
            return width * height
        }
    }
}

let rect = Rect(width: 10, height: 10)
print(rect.area)


struct Circle {
    var area: Double = 0 {
        willSet(newValue) {
            print("area new value \(newValue)")
            checkForArea()
        }
        didSet {
            if area > 150 {
                print("Area is more than 150")
            }
        }
    }
}

func checkForArea() {
    print("called one time")
}

var circle = Circle()
circle.area = 300
//circle.area = 150


print("\n******************** Methods *********************\n")

struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func decrement() {
        count -= 1
    }
    
    mutating func reset() {
        count = 0
    }
}

struct PersonName {
    static func name() {
        print("Pavan")
    }
}

class CompanyName {
    class func name() {
        print("Tyfone")
    }
}

PersonName.name()
CompanyName.name()
Person()



print("\n******************** Inheritance *********************\n")


class Train1: Vehicle {
    override func makeNoise() {
        super.makeNoise()
        print("chukubuku chukubuku")
    }
}

let train = Train1()
train.makeNoise()


print("\n******************** Intialization *********************\n")


struct Fahrenheit {
    var temperature: Double
    
    init() {
        temperature = 50.0
    }
}


class State {
    var name: String
    init(name: String) {
        print(name)
        self.name = name
    }
}

class District: State {
    override init(name: String) {
        print(name)
        super.init(name: name)
    }
}

District(name: "Delhi")
State(name: "Davangere").name


print("\n******************** Generics *********************\n")


func addTwo<T: Numeric>(_ a: inout T, _ b: inout T) {
    print("Result -> \(a + b)")
}

var a = 2
var b = 4
addTwo(&a, &b)


struct InStack<T> {
    var items: [T] = []
    
    mutating func pushItem(item: T) {
        self.items.append(item)
    }
    
    mutating func popItem() {
        self.items.removeLast()
    }
    
    func displayItems() {
        for i in self.items {
            print(i)
        }
    }
}

var stack = InStack<Int>()

stack.pushItem(item: 10)
stack.pushItem(item: 20)
stack.pushItem(item: 30)

stack.displayItems()
print("For Integer---")
stack.popItem()
stack.popItem()
stack.displayItems()

print("For Strings---")

var stackString = InStack<String>()

stackString.pushItem(item: "Pavan")
stackString.pushItem(item: "kumar")
stackString.pushItem(item: "Jain")

stackString.displayItems()
print("---")
stackString.popItem()
stackString.popItem()
stackString.displayItems()


extension InStack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}


protocol Shape {
    func draw() -> String
}

struct VerticalShapes: Shape {
    var shapes: [any Shape]
    func draw() -> String {
        return shapes.map { $0.draw() }.joined(separator: "\n\n")
    }
}


print("\n******************** Enum *********************\n")

enum Storyboard: String {
    case uikit
    case none
}

enum SwiftUI: String {
    case valueTypes
    case referenceTypes
    
    var description: String {
        return self.rawValue
    }
}

let storyboard = Storyboard.uikit.rawValue
print(storyboard)

let swiftui = SwiftUI.valueTypes.description
print(swiftui)
