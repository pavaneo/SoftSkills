import Cocoa

/*
 
 Closures:
 
 Self contained block of functionality that can be passed around and used in code. It can capture and store references to variables and constants from the surrounding context.
 
 */

let geeth: () -> (String) = {
    return "Hello World"
}

let geeth1: (String) -> (String) = { name in
    return "Hello \(name)"
}

print(geeth())
print(geeth1("Geeth"))

// Closure Capturing

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    return {
        total += incrementAmount
        return total
    }
}

let increment = makeIncrementer(incrementAmount: 2)

print(increment())
print(increment())


// Trailing Closure

func perform(operation: () -> Void) {
    operation()
}

perform {
    print("Hello Trailing Closure")
}

// Auto Closure - Automatically creates closure from expression

func log(message: @autoclosure () -> String) {
    print("Log: \(message())")
}

log(message: "Print Auto Closure")

// Escaping Closure - Call after the function returns

var completionHandler: [() -> Void] = []

@MainActor func logMessage(completion: @escaping () -> Void) {
    completionHandler.append(completion)
}

logMessage {
    print("********")
}

