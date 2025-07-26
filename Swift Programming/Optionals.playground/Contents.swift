import Cocoa

// Optionals implement Enum under the hood

enum OptionalsWrapper<Wrapped> {
    case none
    case some(Wrapped)
}


func getValueDescription<T>(_ value: OptionalsWrapper<T>) -> String {
    
    switch value {
    case .none:
        return "none"
    case .some(let wrappedValue):
        return String(describing: wrappedValue)
    }
}

let value1: OptionalsWrapper<Int> = .some(10)
print(getValueDescription(value1))

let value2: OptionalsWrapper<Int> = .none
print(getValueDescription(value2))


// Store optinal values in an array

let content: [Any?] = [1, nil, 4]
print(content)

// Switch with optionals

let name: String? = nil

switch name {
case .some(let value):
    print("Value is \(value)")
case .none:
    print("Value is nil")
}
