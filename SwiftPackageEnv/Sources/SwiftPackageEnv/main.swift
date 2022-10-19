// func printStrings(string1: String, string2: String) -> String {
//     let greeting = " Hello \(string1) & \(string2)"
//     return greeting
// }

// print(printStrings(String: "Karan", String: "Blaise"))


// print("Hello World 2.0")
// print("Hello World 3.0")

// func printString() {
//     print("Hello World from Func")
// }

// printString()

// func printString(arg1: String) 
// {
//     print("Hello \(arg1)")
// }
// printString(arg1: "Karan")


// ----------------
// func findEmployeeOfMonth(flag: Bool, name1: String, name2: String) -> String
// {
//     var result : String
//     if flag {
//         result = "The Employee of the month is \(name1)"
//     } else {
//         result = "The Employee of the month is \(name2)"
//     }
//     return result
// }

// print(findEmployeeOfMonth(flag: true, name1: "Karan", name2: "Blaise"))
// print(findEmployeeOfMonth(flag: false, name1: "Karan", name2: "Blaise"))


// -----------------------------------------------
// Functions, argumentLabels, parameterNames, Types


/// Ommitting Argument Labels 
func randomFunc(_ param1: Int, param2: Int)
{
    print(param1 + param2)
}

/// Specifying Argument Labels
func randomFuncA(hello param1: Int, goodbye param2: Int)
{
    print(param1 * param2)
}


/// Default Parameters
func randomFuncB(param1: Int, param2: Int = 10)
{
    print(param1 / param2)
}


/// Variadic Parameters: A variadic parameter accepts zero or more values of a specified type.
func randomFuncC(numbers: Int ...)
{
    print(numbers) // Outputs [ ... ]
}
// randomFunc(2, param2: 1)
// randomFuncA(hello: 2, goodbye: 2)
// randomFuncB(param1: 20)
// randomFuncC(numbers: 1, 2, 3, 4)


/// In-Out Parameters: An Inout parameter is a parameter that comes in, is modified by the function then passed out.
    func swapTwoInts(a: inout Int, b: inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA

    }


// note In-Out parameter must be variables not constants
// In-out parameters are an alternative way for a function to have an effect outside of the scope of its function body.
// In-out parameters are passed as follows:
//     When the function is called, the value of the argument is copied.
//     In the body of the function, the copy is modified.
//     When the function returns, the copy’s value is assigned to the original argument.
// This behavior is known as copy-in copy-out or call by value result.
// var pa: Int = 1
// var pb: Int = 2
// swapTwoInts(a: &pa, b: &pb)
// print(pa)
// print(pb)


/// Function Types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoIns(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func printHelloWorld() {
    print("hello, world")
}


// The function type of addTwoInts is (Int, Int) -> Int
// The function type of printHelloWorld is () -> void

/// Using function Types
// var mathFunction: (Int, Int) -> Int = addTwoInts
// let anotherMathFunction = addTwoInts
// print(mathFunction(1, 2))

func printMathFunctions(_ mathFunction1: (Int, Int) -> Int, _ mathFunction2: (Int, Int) -> Int, _ a: Int, _ b: Int, _ c: Int)
{
    print("The result of the math function is \(mathFunction1(mathFunction2(c, b), a))")
}
// printMathFunctions(addTwoInts, multiplyTwoIns, 1, 4, 2)



// --- Extensions ----
// Extensions add new functionality to an existing class, structure, enumeration, or protocol type.

// struct Person {

//     let age: Int

//     init(age: Int) {
//         self.age = age
//     }
// }

// extension Person {
//     // New functionality to add to ext1 goes here
//     var year: Int { return self.year}
// }


// let p1 = Person(age: 5)
// var p1.year = 1998

// print(p1.age)
// print(p1.year)




struct Size {
    // Properties with default value
    var width = 0.0, height = 0.0
}
struct Point {
    // Properties with default value
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point() // property which is an instance of another struct (Point())
    var size = Size()     // property which is an instance of another struct (Size())
}

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
    }
}


let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
    size: Size(width: 5.0, height: 5.0))

// print(memberwiseRect)
// print(memberwiseRect.origin)
// print(memberwiseRect.origin.x)
// print(memberwiseRect.origin.y)
// print(memberwiseRect.size)
// print(memberwiseRect.size.height)
// print(memberwiseRect.size.width)



// Closures
// Closures are self-contained blocks of functionality that can be passed around and used in your code
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// print(reversedNames)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

// Inline closure expression
// { (parameters) -> return type in
//     statements
// }
// Can write the closure expression in line with the method statement
var reversedNames2 = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
// print(reversedNames2)

// Inferring type from Context: Don't need to specify the type explicitly since it is done so implicitly by the sorted method
var reversedNames3 = names.sorted(by: {s1, s2 in return s1 > s2} )
// print(reversedNames3)

// Implicit returns from single-expression closure
var reversedNames4 = names.sorted(by: { s1, s2 in s1 > s2 })
// print(reversedNames4)

// Shorthand Argument Names
var reversedNames5 = names.sorted(by: { $0 > $1 })
// print(reversedNames5)

// Operator Methods
var reversedNames6 = names.sorted(by: >)
// print(reversedNames6)


// Trailing closures - useful when the closure is long, isn't practical to place in function
var reversedNames7 = names.sorted() { $0 > $1 }
// print(reversedNames7)

var reversedNames8 = names.sorted { $0 > $1 } 
// print(reversedNames8)


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { 
    // closure as a single argument per value in numbers array
    (number) -> String in
    var number = number // when breakpoint is placed here, watch is not recognizing local variables such as number, or output
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output // returns the right digit
        number /= 10 // Returns the left digit
    } while number > 0
    return output
}

// .map takes the closure as single argument which is then called for each item in the array

// 16 -> 1
// 1 -> 0

// Six
// OneSix

// 58 -> 5
// 5 -> 0

// Eight
// FiveEight


// 510 -> 51
// 51 -> 5
// 5 -> 0

// Zero
// OneZero
// FiveOneZero


// result = [OneSix, FiveEight, FiveOneZero]

// Learnt about Swift
// x / y => if Output is Int or Double, it will always round towards zero
// x:Int % y:Float or x:Float % y.Int => will not work, use truncatingRemainder method (x.truncatingRemainder(dividingBy y), will always return a Double)


// func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void) {
//     if let picture = download("photo.jpg", from: server) { 
//         // Closure 1
//         completion(picture) 
//     } else {
//         // Closure 2
//         onFailure()
//     }
// }



// Capturing Values
// A closure can capture constants and variables from the surrounding context in which it’s defined.
func makeIncrementer(forIncrement amount: Int) -> () -> Int {   // (() -> Int) Refers to incrementer function type
// makeIncrement is specifying an argument label
    var runningTotal = 0
    // Nested Function
    func incrementer() -> Int { 
        // running total exists in outer scope & amount exists in the outer (makeIncrementer) scope, therefore it exists in incrementer scope
        runningTotal += amount
        return runningTotal
    }
    return incrementer 
}

// Note with each instance of makeIncrementer created, A new running Total variable is initialised and used per the scope of that instance variable (incrementByTen, incrementBySeven)
// Therefore, everytime that variable is called, the runningTotal variable per that instance is changed/incremented 
let incrementByTen = makeIncrementer(forIncrement: 10)  // runningTotal = 0
let incrementBySeven = makeIncrementer(forIncrement: 7) // runningTotal = 0

incrementByTen()    // runningTotal += 10: 0 -> 10 
incrementBySeven()  // runningTotal += 7: 0 -> 7
incrementBySeven()  // runningTotal += 7: 7 -> 14
incrementByTen()    // runningTotal += 10: 10 -> 20

// print(incrementByTen())      // 30
// print(incrementBySeven())    // 21

// My attempt at writing a closure
var arr = [1, 2, 3, 4]

// let evenNums = arr.filter(isIncluded: (number: Int) throws -> Bool)

// let evenNums = arr.filter { $0 % 2 == 0 }
// let evenNums = arr.filter { $0 % 2 == 0 }
// let evenNums = arr.filter { (num:Int) -> Bool in num % 2 == 0 }
// let evenNums = arr.filter { (num:Int) -> Bool in return num % 2 == 0 }
let evenNums = arr.filter({ (num:Int) -> Bool in num % 2 == 0 })
let oddNums = arr.filter { (num:Int) -> Bool in num % 2 == 1 }
// print(evenNums)
// print(oddNums)

// ---------------------
// Escaping Closures
// A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns.

var completionHandlers: [() -> Void] = [] // closure is outside of function and has been passed through function
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) { completionHandlers.append(completionHandler) }

// Escaping closure: completionhandler
// completionHandler -> someFunctionWithEscapingClosure() -> completionHandler
func someFunctionWithNonescapingClosure(closure: () -> Void) {
closure() // closure is contained inside function
}

class SomeClass2 {
    var x = 10
    func dosomething() {
        someFunctionWithNonescapingClosure { x = 200 }
        someFunctionWithEscapingClosure { self.x = 100 } // referring to self explicitly
        // someFunctionWithEscapingClosure { [self] in x = 100 } // referring to self implicitly
    }
}
// let instance = SomeClass()
// instance.dosomething()
// print(instance.x) // prints 200

// completionHandlers.first?()
// print(instance.x)   // prints 100


struct SomeStruct2 {
    var x = 10
    mutating func dosomething() {
        // someFunctionWithEscapingClosure { x = 200 } // Error - escaping closure captures mutating 'self' parameter
        someFunctionWithNonescapingClosure { x = 100 } // OK
    }
}
// var instance = SomeStruct()
// instance.dosomething()
// print(instance.x)

// completionHandlers.first?()
// print(instance.x)


// Autoclosures ---
// An autoclosure is a closure that’s automatically created to wrap an expression that’s being passed as an argument to a function.
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// print(customersInLine.count)

let customerProviderInput = { customersInLine.remove(at: 0) }
// print(customerProvider())

func serve(customer customerProvider:() -> String) {
    print("Now serving \(customerProvider())!")
}


// serve(customer: customerProviderInput)



// Closures are self contained blocks functionality that can be passed around and through your code 
// These blocks can have inputs or no inputs and outputs or no outputs.
// These blocks can be written explicitly or in shorthand
// The syntax is
    // { (parameters) -> return type in
    //     statements
    // }

    // method( {(parameters) -> return type in statments } ) OR method { (parameters) -> return type in statments }

// The parameters can be written out explicitly or implicitly
// You can have closures contained within functions and it can recognize variables from the outer scope - Captured
// You can have escapable closures which can pass in and pass out of a function

// class C {

//     var g: (Int) -> Int

//     init(h: @escaping (Int) -> Int) {
//         g = h
//     }

// }

// let c = C() { $0 + 2 } // c.g is now the function { $0 + 2 }
// c.g(2) // 4


// func f(x: Int) -> Int { x - 2 }
// let c2 = C(h: f) // c2.g is now the function f
// c2.g(2) // 0

// func i(x: inout Int) {
//     x = x + 2
// }

// func j(x: Int) -> Int { // Every parameter that passes into a function is a let
//     var x = x      // This x is a copy of the parameter x because it is a variable (when the variable is the same name as the parameter => "shadowing")
//     let opt: Int? = 2
//     guard let opt = opt else {
//         return
//     }
//     return x + 2
// }

// var y = 3
// i(x: &y)

// Within a class, the parameters passed through the closure can be mutable
// Within a struct, the parameters passed through the closure cannot be mutable
// -----------------------------------------------
// -----------------------------------------------
// Enumerations
// An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
// Start with a Capital letter 
// Swift enumeration cases do not set an integer value by default
// Each enumeration defines a new type

// enum someEnumeration {
//     // enumeration definition goes here
// }
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
}

var directionToHead = CompassPoint.north // type CompassPoint
directionToHead = .north // shorter syntax


// Matching Enumeration Values with a Switch Statement
directionToHead = .south
switch directionToHead {
    case .north:
        print("Lots of planets have a north")
    case .south:
        print("Watch out for penguins")
    case .east:
        print("Where the sun rises")
    case .west:
        print("Where the skies are blue")
}
// Prints "Watch out for penguins"


var planetToVisit = Planet.earth
// planetToVisit = .venus
switch planetToVisit {
    case .earth:
        print("Safe place for humans")
    default:
        print("Not a safe place for humans")
}



let numberOfPlanets = Planet.allCases.count // Note: You have to make the enum "CaseIterable" (enum x : CaseIterable)
print("The number of planets is \(numberOfPlanets).")

// for planet in Planet.allCases {
//     print(planet)
// }

// Associated Values ---
// Storing values of varying types alongside these case values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qr(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
// productBarcode = .qr("ABCDEFGHIJKLMNOP")

switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
    case .qr(let productCode):
        print("QR: \(productCode)")
}


// RAW VALUES ---
enum ASCIIConrtolCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageRetur = "\r"
}

enum Planet2: Int {
    case mercury = 1, venus = 2, earth = 3, mars = 4, jupiter = 5, 
    saturn = 6, uranus = 7, neptune = 8, pluto = 9
}

enum CompassPoint2: String{
    case north = "Top"
    case south = "Bottom"
    case east = "Left"
    case west = "Right"
}

let earthsOrder = Planet2.earth.rawValue
// print(earthsOrder)

let northOrder = CompassPoint2.north.rawValue
// print(northOrder)


// let possiblePlanet = Planet2(rawValue: 4)
// print(possiblePlanet!)

let positionToFind = 20
if let possiblePlanet = Planet2(rawValue: positionToFind) {
    switch possiblePlanet {
        case .earth:
            print("This is a friendly place.")
        default:
            print("This is not a friendly place.")
        }
    } else {
        print("This planet is not in our solar system.")
    }

// Recursive Enumerations ---
// A recursive enumeration is an enumeration that has another instance of the enumeration as the associated value for one or more of the enumeration cases.
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
        case let .number(value):
            return value
        case let .addition(left, right):
            return evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            return evaluate(left) * evaluate(right)
    }
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
// print(evaluate(product)) // (5 + 4) * 2 = 18

// ----
// Stuctures & Classes
// Unlike other programming languages, Swift doesn’t require 
// you to create separate interface and implementation files 
// for custom structures and classes.

// Classes & Structs:
// - Define properties to store values
// - Define methods to provide functionality
// - Define subscripts to provide access to their values using subscript syntax
// - Define initializers to set up their initial state
// - Be extended to expand their functionality beyond a default implementation
// - Conform to protocols to provide standard functionality of a certain kind

// Classes have:
// - Inheritance enables one class to inherit the characteristics of another.
// - Type casting enables you to check and interpret the type of a class instance at runtime.
// - Deinitializers enable an instance of a class to free up any resources it has assigned.
// - Reference counting allows more than one reference to a class instance.

struct SomeStruct {
    // Structure definition goes here
}

class SomeClass {
    // Class definition goes here
}

// Classes and structs are swift types - UpperCamelCase
// Properties and Methods - lowerCamelCase

struct Resolution {
    var width = 0
    var height = 0

    // init(width: Int, height: Int) {
    //     self.width = width
    //     self.height = height

        // self.width, self.height => members
        // width, height => parameters

// All structures have an automatically generated memberwise 
// initializer, which you can use to initialize the member 
// properties of new structure instances. (init(width:Int, height:Int))
// Unlike structures, class instances don’t receive a default memberwise initializer.
    }


class VideoMode {
    // var resolution = Resolution(width: 2, height: 0)
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?    
}

class VideoMode2 {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?    
}
// The Resolution structure definition and the VideoMode class 
// definition only describe what a Resolution or VideoMode will 
// look like. They themselves don’t describe a specific resolution
// or video mode. To do that, you need to create an instance of the 
// structure or class.
let someResolution = Resolution()
let someVideoMode = VideoMode()

// print(someVideoMode.frameRate)
// let vga = Resolution(width: 100, height: 200)

// All Builtin types in Swift (Boolean, Strings, arrays, and dictionaries)
// are structs. All structs are value types.
// All classes are reference types
// Value types have copies created when assigned, those copies are then
// modifyable
// Collections, defiend by the standard library use an optimization to 
// reduce performance cost of copying.

// Structures and Enumerations Are Value Types ----
var hd = Resolution(width: 1920, height: 1080)
var cinema = hd // copy of hd created and assigned to cinema

// modifying cinema does not modify hd
cinema.height = 2048

// print(hd.height)        // 1080
// print(cinema.height)    // 2048
// hd and cinema both reference different Resolution instances (cinema references the copy of hs's instance, then the copy its modified)

enum CompassPoint3 {
    case north, south, east, west
    mutating func turnNorth() { 
        // what does mutating mean? 
        // -> A function marked with "mutating" can change 
        // any property within its enclosing value
        self = .north
    }
}

var currentDirection = CompassPoint3.east
var rememberedDirection = currentDirection // copy created because currentDirection is an enum
currentDirection.turnNorth()
// print(currentDirection)
// print(rememberedDirection)

// Classes are Reference Types ----
// Classes are not copied when they're assigned to a variable, 
// thus changing the variable will change the original instance as well
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.frameRate = 25.0
tenEighty.name = "1080i"

var newTenEighty = tenEighty
newTenEighty.frameRate = 50

// print(tenEighty.frameRate)      // 50.0
// print(newTenEighty.frameRate)   // 50.0
// newTenEighty and tenEighty both reference the same VideoMode instance

// Note: newTenEighty and tenEighty are both declared as constants,
// yet you can change newTenEighty.frameRate and tenEighty.frameRate.
// Because the constant decleration refers to the instance of VideoMode, not the properties themeselves.
// The properties of the VideoMode instance can still change, not the values of the constants
// that reference VideoMode (e.g you cannot change newTenEighty = VideoMode2())
// newTenEighty = VideoMode2() // Error? Ask Callum

// Identity Operators ---
// Because classes are reference types, 
// it’s possible for multiple constants and variables 
// to refer to the same single instance of a class behind the scenes.

// print(tenEighty === newTenEighty)   // true
// print(tenEighty !== newTenEighty)   // false


// ---------------
// Properties
// Stored Properties - store constant and variable values as 
                    // part of an instance
// Computed properties - calculate a value

struct FixedLengthRange {
    var firstValue: Int
    let length : Int
}

class FixedWidthRange {
    var firstValue: Int
    let width: Int

    init(firstValue:Int, width:Int) {
        self.firstValue = firstValue
        self.width = width
    }
}

let rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 0)
// rangeOfThreeItems.firstValue = 6 // Error: you cannot change the instance of a struct's property if it is declared as a constant
let rangeOfTwoItems = FixedWidthRange(firstValue: 0, width: 3)
// rangeOfTwoItems.firstValue = 0

// Lazy Stored Properties --
// A lazy stored property is a property whose initial value 
// isn’t calculated until the first time it’s used.
// Lazy properties must alway be declared as a variable => 
// initial value is not retrieved until after instance init is complete
class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}

class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
    // the DataManager class would provide data management functionality here
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property hasn't yet been created
// print(manager.importer.filename)


// Computed Properties
// Structs, enums, clases can define computed 
// properties which don't actuallt store a value.
// They provide a getter and an optional setter -> 
// set and retrieve other properties indirectly
// Always declare computed properties as variables, 
// because they are always changing
struct Point2 {
    var x = 0.0, y = 0.0
}
struct Size2 {
    var width = 0.0, height = 0.0
}

struct Rect2 {
    var origin = Point2()
    var size = Size2()
    var center: Point2 {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point2(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect2(origin: Point2(x: 0.0, y: 0.0),
                           size: Size2(width: 10.0, height: 10.0))

let initialSquareCenter = square.center // initial square Center = (5.0, 5.0)
// square.center = Point2(x: 15.0, y: 15.0)
square.size = Size2(width: 50, height: 50)
print(initialSquareCenter)
print(square.center)
// print(newSquareCenter)

// Shorthand setter decleration - newValue default name
struct AlternativeRect {
    var origin = Point2()
    var size = Size2()
    var center: Point2 {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point2(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

// Shorthand getter decleration
struct CompactRect {
    var origin = Point2()
    var size = Size2()
    var center: Point2 {
        get {
            Point2(x: origin.x + (size.width / 2),
                    y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var whiteShirt = 0.0
var WhiteShirt : Double {
    get {
        return whiteShirt
    }
    set {
        whiteShirt = newValue // newValue is a default name for a value to be set
    }
}

// print(whiteShirt) // 0
// print(WhiteShirt)  // 0
// whiteShirt = 5
// print(whiteShirt) // 5
// print(WhiteShirt)  // 5


// Readonly computed property - Only a getter but no setter
var volume: Double {
    get {
        return 4.0
    }
}
// print(volume)
// volume = 5.0 // Error: Cannot set volume because it is defined as a readonly
// You can simplify the readonly property by removing the get key word


// Property Observers
// Property observers observe and respond to 
// changes in a property’s value.

// willSet is called just before the value is stored.
// didSet is called immediately after the new value is stored.
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
// stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps

// Property Wrappers
// A property wrapper adds a layer of separation 
// between code that manages how a property is stored 
// and the code that defines a property.
// @propertyWrapper // Question how does the code below know about the property Wrapper? 
// -> The entire struct is a property wrapper, so when called by another struct with reference to the wrapper it's contents are recognized by the other struct
@propertyWrapper struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12)}
    }

    init() {

    }
    
    init(wrappedValue: Int) {
        self.wrappedValue = wrappedValue
    }
}

// @propertyWrapper struct Uppercased {
//     var wrappedValue: String {
//         didSet { wrappedValue = wrappedValue.uppercased() }
//     }

//     init(wrappedValue: String) {
//         self.wrappedValue = wrappedValue.uppercased()
//     }
// }

// struct User {
//     @Uppercased var firstName: String
//     @Uppercased var lastName: String
// }

// var user1 = User(firstName: "Sam", lastName: "Flynn")
// print(user1)


// var num1 = TwelveOrLess()
// num1.wrappedValue = 13
// print(num1.wrappedValue) // 12

struct SmallRectangle {
    @TwelveOrLess var height: Int //= 1
    @TwelveOrLess var width: Int //= 1
}

var rectangle = SmallRectangle()
// print(rectangle.height) // 0
// print(rectangle.width)  // 0

// With init(wrappedValue: Int) in struct
// print(rectangle.height) // 1
// print(rectangle.width)  // 1

rectangle.height = 13
rectangle.width = 13
// print(rectangle.height) // 12
// print(rectangle.width)  // 12

// When you apply a wrapper to a property, 
// the compiler synthesizes code that provides storage 
// for the wrapper and code that provides access to the 
// property through the wrapper.

@propertyWrapper
struct SmallNumber {
    private var maximum: Int
    private var number: Int

    // This is the wrappedValue that is called by the instance
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, maximum) }
    }
    
    // initialised members
    init() {
        maximum = 12
        number = 0
    }
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}

struct ZeroRectangle {
    // these are the wrappedValues = number
    @SmallNumber var height: Int
    @SmallNumber var width: Int 
}


struct UnitRectangle {
    // These are calling numbers which link to the unwrappedValue member in the struct SmallNumber which is of type int
    // This is only possible because the init of the SmallNumber struct can take a wrappedValue as a parameter. Else, it would be an argument error
    @SmallNumber var height: Int = 1 // Similar to a function call variable with arguments => .height = SmallNumber(wrappedValue: 1) which is the member of type Int
    @SmallNumber var width: Int = 1
}


let zeroRectangle = ZeroRectangle() // change let to var
// zeroRectangle.width = 4
// print(zeroRectangle.height, zeroRectangle.width) // prints 0 0


let unitRectangle = UnitRectangle()
// print(unitRectangle.height, unitRectangle.width) // 1 1
// var numy = SmallNumber(wrappedValue: 4, maximum: 5)
// print(numy.maximum)

// When you write = 1 on a property with a wrapper, that’s translated into a call to the init(wrappedValue:) initializer.
struct NarrowRectangle {
    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
}

var narrowRectangle = NarrowRectangle()
// print(narrowRectangle.height, narrowRectangle.width) // prints 2 3


narrowRectangle.height = 100
narrowRectangle.width = 100
// print(narrowRectangle.height, narrowRectangle.width) // prints 5, 4



struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 2
}

var mixedRectangle = MixedRectangle()
// print(mixedRectangle.height) // prints 1

mixedRectangle.height = 20
// print(mixedRectangle.height) // prints 12

mixedRectangle.width = 20
// print(mixedRectangle.width) // 9 because the maximum init is specified in the MixedRectangle 

@propertyWrapper
struct SmallNumber2 {
    private var number: Int
    private(set) var projectedValue: Bool

    var wrappedValue: Int {
        get { return number }
        set { 
            if /*number*/ newValue > 12 { // remember to use newValue because the newValue never gets evaluated, instead number gets assigned to newValue
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }

    init() {
        self.projectedValue = false
        self.number = 0
    }
}


struct SomeStructure2 {
    @SmallNumber2 var someNumber: Int
}

var randomInstance = SomeStructure2()
randomInstance.someNumber = 13
// print(randomInstance.someNumber)
// print(randomInstance.$someNumber) // true

// randomInstance.someNumber = 11
// print(randomInstance.$someNumber) // false


enum Size3 {
    case small, large
}

struct SizedRectangle {
    @SmallNumber2 var height: Int 
    @SmallNumber2 var width: Int 

    // Function is describing "Has the size been resized recently? and it utilizes the value projection from a property wrapper"
    mutating func resize(to size: Size3) -> Bool {
        switch size {
            case .small:
                height = 10
                width = 20
            case .large:
                height = 100
                width = 100
        }

        return $height || $width
    }
}

var randomRect = SizedRectangle()
// Equivelant to randomRect.height = 10, randomRect.width = 20, print(randomRect.$height || randomRect.$width)
// print(randomRect.resize(to: .small))
// print(randomRect.height)
// print(randomRect.width)

// print(randomRect.resize(to: .large))
// print(randomRect.height)
// print(randomRect.width)


// Global & local Variables ---
// The capabilities described above for computing and observing properties are also available to global variables and local variables.
// Global vairavles are variables that are defined outside any function, method, closure or type context
// Local variables are variables that are defined within a function, method, or closure context
// You can apply a property wrapper to a local stored variable, but not to a global variable or a computed variable.

// Type Properties ---
// Instance properties are properties that belong to an instance of a particular type.
// You can also define properties that belong to the type itself, not to any one instance of that type.
// There will only ever be one copy of these properties, no matter how many instances of that type you create. These kinds of properties are called type properties.
// Type properties are useful for defining values that are universal to all instances of a particular type, such as a constant property that all instances can use
// You define type properties with the static keyword.

enum SomeEnum { 
    static var storedTypeProperty = "Some value" // static properties are type properties
    static var computedTypeproperty: Int {
        get { return 1 }
    }
}

struct SomeStruct3 {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        get { return 0 }
    }
}

class SomeClass3 {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        get { return 5 }
    }

    class var overrideableComputedTypePropertty: Int {
        return 107
    }
}

// print(SomeStruct3.storedTypeProperty)
// print(SomeStruct3.computedTypeProperty)


// print(SomeClass3.storedTypeProperty)
// print(SomeClass3.computedTypeProperty)
// print(SomeClass3.overrideableComputedTypePropertty)

// print(SomeEnum.storedTypeProperty)
// print(SomeEnum.computedTypeproperty)



// ----------------------------
// Methods
// Methods are functions that are associated with a particular type.
struct Point3 {
    var x = 0.0, y = 0.0
    func isToTherightOf(x: Double) -> Bool {
        return self.x > x
    }

    // mutating key word enables the method to modify its properties
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }

    // Alternative moveBy method
    mutating func moveBy2(x deltaX: Double, y deltaY: Double) {
        self = Point3(x: x + deltaX, y: y + deltaY)
    }


    func showPoint() {
        print("\(x), \(y)")
    }
}


var somePoint = Point3(x: 4.0, y: 5.0)
// somePoint.moveBy(x: 5, y: 5)
// somePoint.showPoint()
// somePoint.moveBy2(x: 5, y: 5)
// somePoint.showPoint()



var someOtherPoint = Point3(x: 5.0, y: 6.0)
someOtherPoint.moveBy(x: 5, y: 5)
// someOtherPoint.showPoint()



// print(somePoint.isToTherightOf(x: 3)) // true

class Count {
    var currentCount: Int = 0
    func increment() {
        self.currentCount += 1
    }

    func increment(by amount: Int) {
        self.currentCount += amount
    }

    func reset() {
        self.currentCount = 0
    }
}

// var num = Count()
// print(num.currentCount) // 0

// num.increment()
// print(num.currentCount) // 1

// num.increment(by: 5)
// print(num.currentCount) // 6

// num.reset()
// print(num.currentCount) // 0

// Note that you can’t call a mutating method on a constant of structure type, because its properties can’t be changed.

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
// var ovenLight = TriStateSwitch.low
// ovenLight.next()
// print(ovenLight)
// // ovenLight is now equal to .high
// ovenLight.next()
// print(ovenLight)
// // ovenLight is now equal to .off
// ovenLight.next()
// print(ovenLight)

// Instance Methods
// Instance methods, as described above, are methods that you call on an instance of a particular type.
// You can also define methods that are called on the type itself.
class SomeClass4 {
    class func someTypeMethod() {
        // type method implementation goes here
    }
}
SomeClass4.someTypeMethod()
// .someTypeMethod() // for type methods or type properties, the type itself does not need to written out 


// ----------------
// Ask Callum of a more efficient way of writing this LevelTracker method
enum Level: Int, CaseIterable {
    case level1 = 1
    case level2 = 2
    case level3 = 3
}

struct LevelTracker {
    var currentLevel: Level = .level1
    var highestLevelUnlocked:Level = .level1

    mutating func requestToProgress(/*currentLevel*/) {
        switch self.currentLevel {
        case .level1:
        if isUnlocked(.level2) || isUnlocked(.level3) {
            advance(to: .level2)
        } else {
            errorMessage(.level2)
        }

        case .level2:
        if isUnlocked(.level3) {
            advance(to:.level3)
            print("Highest Level achieved!\nCongratulations you win!")
        } else {
            errorMessage(.level3)
        }

        case .level3:
            print("There are no further levels.")
        }
    }

    private mutating func advance(to nextLevel: Level) {
        currentLevel = nextLevel
    }

    mutating func unlock(_ level: Level) {
        if level.rawValue > highestLevelUnlocked.rawValue { 
            highestLevelUnlocked = level
            }
    }

    func isUnlocked(_ level: Level) -> Bool { return highestLevelUnlocked.rawValue >= level.rawValue }

    private func errorMessage(_ level: Level) { print("Cannot progress. Level \(level.rawValue) is locked.")}
}

// my Feedback:
// - do not require enum
// - questioning whether it is better to write functions as static, since level tracker is only referring to game1 instance?


// - self refers to the type member of the instance, then what does calling the property itself do? 
// -> In practice, you don’t need to write self in your code very often. If you don’t explicitly write self, Swift assumes that you are referring to a property or method of the 
// current instance whenever you use a known property or method name within a method. This assumption is demonstrated by the use of count (rather than self.count) inside the three 
// instance methods for Counter. The main exception to this rule occurs when a parameter name for an instance method has the same name as a property of that instance.

// var game1 = LevelTracker()
// // Player at level 1
// print(game1.currentLevel) // level1

// // is Level2 locked?
// print(game1.isUnlocked(.level2)) // false

// // unlock level2
// game1.unlock(.level2)

// // is level2 unlocked?
// print(game1.isUnlocked(.level2)) // true

// // progress to next level
// game1.requestToProgress()

// // Player at level 2
// print(game1.currentLevel) // level2

// // Is level 3 unlocked?
// print(game1.isUnlocked(.level3)) // false

// game1.requestToProgress() // will print error message

// // unlock level3
// game1.unlock(.level3)

// // Is level3 locked?
// print(game1.isUnlocked(.level3)) // true

// game1.requestToProgress() // Won game, highest level reached

// // print(game1.currentLevel) // level 3

// game1.requestToProgress() // Highest level achieved


// ---
// Modifying value types within Instance methods ---

struct Player {
    var tracker = LevelTracker()
    let playerName: String
    
    mutating func complete(level: Level) { // requires mutating because datatype is a struct not a class
        // Converts enum into all cases array ofthe enum [level1, level2, level3]
        let nextLevel = level.next() // gets next level in enum
        tracker.unlock(nextLevel)
        tracker.requestToProgress()
        // tracker.advance(to: nextLevel)
    }
    init(name: String) {
        playerName = name
    }
}

// -------------- COME BACK TO LATER ... ------------
// need to review this solution's syntax to see what's actually going on... 
// (https://stackoverflow.com/questions/51103795/how-to-get-next-case-of-enumi-e-write-a-circulating-method-in-swift-4-2)
// but essentially it returns the next enum value
extension CaseIterable where Self: Equatable {
    func next() -> Self {
        let all = Self.allCases
        let idx = all.firstIndex(of: self)!
        let next = all.index(after: idx)
        return all[next == all.endIndex ? all.startIndex : next]
    }
}
// --------------------------------------------------
// Can fix later if so desire to ---
// var player1 = Player(name: "Karan")
// var player2 = Player(name: "Jason")
// player1.complete(level: .level1)
// player1.complete(level: .level2)

// player2.complete(level: .level3)

// print(player1.tracker.currentLevel) // level 2
// print(player2.tracker.currentLevel)


// -------------------------------------------------------------------------------------
// Subscripts ---
// Subscripts are shortcuts to set and rstrieve values by index without needing seperate methods for setting and retrieval.
// Unlike instance methods, subscripts can be read-write or read-only. This behavior is communicated by a getter and setter in the same way as for computed properties:
// Subscripts cannot use inout parameters

// subscript(index: Int) -> Int {
//     get {
//         // Return an appropriate subscript value here.
//     }
//     set(newValue) {
//         // Perform a suitable setting action here.
//     }
// }

// subscript(index: Int) -> Int {
//     // Return an appropriate subscript value here.
// }

struct TimesTable {
    let multiplier: Int

    // readonly subscript
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
// print(threeTimesTable[6]) // 18
