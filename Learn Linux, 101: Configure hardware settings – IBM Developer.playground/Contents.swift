import UIKit

/* Enumaration */
enum Rank: Int {
    case ace = 1
    case two, three, four, five, siz, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .clubs:
            return "black"
        case .spades:
            return "black"
        case .hearts:
            return "red"
        case .diamonds:
            return "red"
        }
    }
}

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

/* struct */
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescriotion() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}


class Shape {
    var numberOfSides = 0
    func simpleDescrption() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

class TrianglAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}


/* Function */
func greet(person: String, day: String) ->
    String {
        return "Hello \(person), today is \(day)."
}

func greet(_ person: String, on day: String) ->
    String {
        return "Hello \(person), todat is \(day)."
}

func calculateStatistics(scores: [Int]) ->
    (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
        
        return (min, max, sum)
}

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

func hasAnyMatches(list: [Int], condition:
    (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var str = "Hello, playground"
print("Hello to the world")

var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explictFloat: Float = 70.0

let label = "The Width is "
let width = 94
let widthlabel = label + String(width)


print(widthlabel)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let firstName: Float = 5.0
let lastName: Float = 4.0

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges)
    pieces of fruit."
"""
print(quotation)

var shoppingList = ["catfish", "water", "tulips"]
print(shoppingList[1])
shoppingList[1] = "bottle of water"
print(shoppingList[1])

shoppingList.append("blue paint")
print(shoppingList)

var occupations = [
    "Melcolm": "Captain",
    "Kaylee": "Mechanic"
]

occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)
print(optionalString != nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting)
} else {
    print("else")
}

let nickName: String? = nil
let fullName: String = "Jhon Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

print(informalGreeting)

let vegetable = "red pepper"
switch vegetable {
case "celery" :
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would male a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumber = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest = 0

for (kind, numbers) in interestingNumber {
    for number in numbers {
        print(number)
        if number > largest {
            largest = number
        }
    }
}

print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

/* do-while (C ver.)         */
/* repeat-while (Swift ver.) */
var m = 2
repeat {
    m *= 2
}while m < 100
print(m)

/* Use ..< to make a range */
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

var greetString = greet(person: "Bob", day: "Tuesdat")
print(greetString)

var greetString2 = greet("john", on: "Wednesday")
print(greetString2)

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
/* 0->min 1-> max 2->sum*/
print(statistics.0)
print(statistics.1)
print(statistics.2)

print(returnFifteen())

var increment = makeIncrementer()
print(increment(7))

var numbers = [20, 19, 17, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)


/* Objects and Classes session */
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescrption()
print(shapeDescription)

var namedShape = NamedShape(name: "Taro")
print(namedShape.simpleDescription())

let test = Square(sideLength: 5.2, name: "my test squaare")
test.area()
print(test.simpleDescription())
print(test.area())

let ace = Rank.ace
print(ace)
let aceRawValue = ace.rawValue
print(aceRawValue)

if let convertedRank = Rank(rawValue: 3){
    let threeDescription = convertedRank.simpleDescription()
    
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch failure {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadeDescription = threeOfSpades.simpleDescriotion()
