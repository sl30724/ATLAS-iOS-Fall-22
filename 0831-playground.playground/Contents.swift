import UIKit


// typealias: similar to struct. useful for avoiding repetition
typealias SpecialNumber = Int
var myNumber: SpecialNumber = 2

typealias Coordinate = (x: Int, y: Int)
var coordinates: Coordinate = (0, 20)

coordinates.0
coordinates.1
coordinates.x
coordinates.y

print(coordinates)


enum CardinalDirection: String {
    case north, east, south, west
    
    var description: String{
        rawValue
    }
}

var direction = CardinalDirection.north


switch direction {
case .north, .south:
    print("vertical")
case .east, .west:
    print("horizontal")
}
print(direction)

// should be default for storing and passing data
struct Person {
    var firstName: String
    var lastName: String
}

let me = Person(firstName: "Sandy", lastName: "Lee")
print(me)

// compared with class
class Human {
    var firstName: String
    var lastName: String
    
    init(name: String) {
        let components = name.components(separatedBy: " ")
        firstName = components.first ?? "" //if there's no first element, return an empty string
        lastName = components.last ?? ""
    }
}
let human = Human(name: "John Cock")
human.firstName
human.lastName

struct Positions {
    let x: Int
    let y: Int
    //instance method
    var description: String {
        "\(x), \(y)"
    }
    
    static var zero: Positions {
        return Positions(x:0, y:0)
    }
}
let start = Positions(x:0, y:20)
print(start.y)


//array
var list = [Int]()
list.append(2)
list.append(4)
list.append(8)
//list.append("hello")

var list3: [Int] = [0, 2, 3, 4]
/*for item in list3(){
    print("On item \(item.element)")
}*/

var list2 = [Any]()
list2.append("john")
list2.append(10)
list2.append(0.8)

var dictionary = [Int:String]()
dictionary[3] = "Three"

func doStuff() -> Void {} // Void means return nothing if the function is empty

func math(_ number: Int, _ other: Int = 5) -> Int{ // _ number means you don't have to declare the label
    print("Hi")
    return number + other
}

math(4)
math(4, 10)

var name: String?
name = "Sandy"

if let name = name {
    print("about to execute")
}
print("\(name!)") // the ! force it to unwrap, but it's bad practice that should be avoided

let customName = name != nil ? name!: "Friend"
