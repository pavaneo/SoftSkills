import Foundation

//Enum - Defines common type “for a group of related values and enables you to work with those values in a type-safe way within your code.”

/*
 
 Enums represent finite choices or states.

 Enums cannot have stored properties (only computed).

 Enums are value types like structs.

 Enums support associated values, unlike structs.
 
 6. What is the difference between raw values and associated values?
 
 
 Rawvalue:
 
 Fixed
 Applicable to all cases
 
 
 Associated values:
 
 Flexible
 Applicable to Per cases
 
 
 14. When would you use enums over structs or classes?
        Use enums when:

        You have a finite set of related values.

        You want to model state or choice.

        Each case may carry different types of data.
 
 
 15. Explain Optionals in terms of enums.
        Answer:
        Optionals in Swift are enums under the hood:

        enum Optional<Wrapped> {
            case none
            case some(Wrapped)
        }

 
 */

// String Raw Value
public enum Direction: String {
    case north = "North Direction"
    case south = "South Direction"
    case east = "East Direction"
    case west = "West Direction"
}

// Int Raw Value
public enum Steps: Int {
    case one 
    case two
    case three
    case four
}

// Associated Value - “useful to be able to store values of other types alongside these case values”
public enum SocialMedicaPlatform {
    case linkedin(numberOfPosts: Int)
    case instagram
    case facebook
    case youtube
    case twitter
}

public struct SocialMedia {
    public init() {}
    public func socialMediaDetails(media: SocialMedicaPlatform) {
        switch media {
        case .facebook:
            print("Not Using Facebook")
        case .instagram:
            print("Not Using Instgram")
        case .youtube:
            print("Would Love to use Youtube")
        case .twitter:
            print("Ok to use twitter")
        case .linkedin(let posts):
            print("Total \(posts) posts has been shared on linkedIn")
        }
    }
}


// case interatable - Iterate through all the cases and get the total number of case count
public enum IndoorGames: String, CaseIterable {
    case chess
    case badmitton
    case carrom
    case snakeAndLadder
}

//Recursive Enumerations - Indirect
// “A recursive enumeration is an enumeration that has another instance of the enumeration as the associated value for one or more of the enumeration cases. You indicate that an enumeration case is recursive by writing indirect before it”.

public indirect enum LinkedList {
    case head(value: Int, node: LinkedList?)
    case tail(value: Int, node: LinkedList?)
    case node(value: Int, node: LinkedList?)
}


// Enum with Generics

public enum GenericEnum<Element: Decodable, T: Error> {
    case success(Element)
    case failure(T)
}


// Enum can have Methods and computed properties

enum Device {
    case iPhone, iPad

    var description: String {
        switch self {
        case .iPhone: return "Apple Phone"
        case .iPad: return "Apple Tablet"
        }
    }
}

// Optional Enum

enum optionalWrapper<Wrapped> {
    case none
    case some(Wrapped)
}
