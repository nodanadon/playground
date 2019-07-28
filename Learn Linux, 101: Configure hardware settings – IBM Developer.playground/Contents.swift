import UIKit

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
