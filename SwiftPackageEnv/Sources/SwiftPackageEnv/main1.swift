// // func printStrings(string1: String, string2: String) -> String {
// //     let greeting = " Hello \(string1) & \(string2)"
// //     return greeting
// // }

// // print(printStrings(String: "Karan", String: "Blaise"))


// // print("Hello World 2.0")
// // print("Hello World 3.0")

// // func printString() {
// //     print("Hello World from Func")
// // }

// // printString()

// // func printString(arg1: String) 
// // {
// //     print("Hello \(arg1)")
// // }
// // printString(arg1: "Karan")


// // ----------------
// // func findEmployeeOfMonth(flag: Bool, name1: String, name2: String) -> String
// // {
// //     var result : String
// //     if flag {
// //         result = "The Employee of the month is \(name1)"
// //     } else {
// //         result = "The Employee of the month is \(name2)"
// //     }
// //     return result
// // }

// // print(findEmployeeOfMonth(flag: true, name1: "Karan", name2: "Blaise"))
// // print(findEmployeeOfMonth(flag: false, name1: "Karan", name2: "Blaise"))


// // -----------------------------------------------
// // Functions, argumentLabels, parameterNames, Types


// /// Ommitting Argument Labels 
// func randomFunc(_ param1: Int, param2: Int)
// {
//     print(param1 + param2)
// }

// /// Specifying Argument Labels
// func randomFuncA(hello param1: Int, goodbye param2: Int)
// {
//     print(param1 * param2)
// }


// /// Default Parameters
// func randomFuncB(param1: Int, param2: Int = 10)
// {
//     print(param1 / param2)
// }


// /// Variadic Parameters: A variadic parameter accepts zero or more values of a specified type.
// func randomFuncC(numbers: Int ...)
// {
//     print(numbers) // Outputs [ ... ]
// }
// // randomFunc(2, param2: 1)
// // randomFuncA(hello: 2, goodbye: 2)
// // randomFuncB(param1: 20)
// // randomFuncC(numbers: 1, 2, 3, 4)


// /// In-Out Parameters: An Inout parameter is a parameter that comes in, is modified by the function then passed out.
//     func swapTwoInts(a: inout Int, b: inout Int) {
//         let temporaryA = a
//         a = b
//         b = temporaryA

//     }


// // note In-Out parameter must be variables not constants
// // In-out parameters are an alternative way for a function to have an effect outside of the scope of its function body.
// // In-out parameters are passed as follows:
// //     When the function is called, the value of the argument is copied.
// //     In the body of the function, the copy is modified.
// //     When the function returns, the copy’s value is assigned to the original argument.
// // This behavior is known as copy-in copy-out or call by value result.
// // var pa: Int = 1
// // var pb: Int = 2
// // swapTwoInts(a: &pa, b: &pb)
// // print(pa)
// // print(pb)


// /// Function Types
// func addTwoInts(_ a: Int, _ b: Int) -> Int {
//     return a + b
// }

// func multiplyTwoIns(_ a: Int, _ b: Int) -> Int {
//     return a * b
// }

// func printHelloWorld() {
//     print("hello, world")
// }


// // The function type of addTwoInts is (Int, Int) -> Int
// // The function type of printHelloWorld is () -> void

// /// Using function Types
// // var mathFunction: (Int, Int) -> Int = addTwoInts
// // let anotherMathFunction = addTwoInts
// // print(mathFunction(1, 2))

// func printMathFunctions(_ mathFunction1: (Int, Int) -> Int, _ mathFunction2: (Int, Int) -> Int, _ a: Int, _ b: Int, _ c: Int)
// {
//     print("The result of the math function is \(mathFunction1(mathFunction2(c, b), a))")
// }
// // printMathFunctions(addTwoInts, multiplyTwoIns, 1, 4, 2)



// // --- Extensions ----
// // Extensions add new functionality to an existing class, structure, enumeration, or protocol type.

// // struct Person {

// //     let age: Int

// //     init(age: Int) {
// //         self.age = age
// //     }
// // }

// // extension Person {
// //     // New functionality to add to ext1 goes here
// //     var year: Int { return self.year}
// // }


// // let p1 = Person(age: 5)
// // var p1.year = 1998

// // print(p1.age)
// // print(p1.year)




// struct Size {
//     // Properties with default value
//     var width = 0.0, height = 0.0
// }
// struct Point {
//     // Properties with default value
//     var x = 0.0, y = 0.0
// }
// struct Rect {
//     var origin = Point() // property which is an instance of another struct (Point())
//     var size = Size()     // property which is an instance of another struct (Size())
// }

// extension Rect {
//     init(center: Point, size: Size) {
//         let originX = center.x - (size.width / 2)
//     }
// }


// let defaultRect = Rect()
// let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
//     size: Size(width: 5.0, height: 5.0))

// // print(memberwiseRect)
// // print(memberwiseRect.origin)
// // print(memberwiseRect.origin.x)
// // print(memberwiseRect.origin.y)
// // print(memberwiseRect.size)
// // print(memberwiseRect.size.height)
// // print(memberwiseRect.size.width)



// // Closures
// // Closures are self-contained blocks of functionality that can be passed around and used in your code
// let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// func backward(_ s1: String, _ s2: String) -> Bool {
//     return s1 > s2
// }
// var reversedNames = names.sorted(by: backward)
// // print(reversedNames)
// // reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

// // Inline closure expression
// // { (parameters) -> return type in
// //     statements
// // }
// // Can write the closure expression in line with the method statement
// var reversedNames2 = names.sorted(by: { (s1: String, s2: String) -> Bool in
//     return s1 > s2
// })
// // print(reversedNames2)

// // Inferring type from Context: Don't need to specify the type explicitly since it is done so implicitly by the sorted method
// var reversedNames3 = names.sorted(by: {s1, s2 in return s1 > s2} )
// // print(reversedNames3)

// // Implicit returns from single-expression closure
// var reversedNames4 = names.sorted(by: { s1, s2 in s1 > s2 })
// // print(reversedNames4)

// // Shorthand Argument Names
// var reversedNames5 = names.sorted(by: { $0 > $1 })
// // print(reversedNames5)

// // Operator Methods
// var reversedNames6 = names.sorted(by: >)
// // print(reversedNames6)


// // Trailing closures - useful when the closure is long, isn't practical to place in function
// var reversedNames7 = names.sorted() { $0 > $1 }
// // print(reversedNames7)

// var reversedNames8 = names.sorted { $0 > $1 } 
// // print(reversedNames8)


// let digitNames = [
//     0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//     5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
// ]
// let numbers = [16, 58, 510]

// let strings = numbers.map { 
//     // closure as a single argument per value in numbers array
//     (number) -> String in
//     var number = number // when breakpoint is placed here, watch is not recognizing local variables such as number, or output
//     var output = ""
//     repeat {
//         output = digitNames[number % 10]! + output // returns the right digit
//         number /= 10 // Returns the left digit
//     } while number > 0
//     return output
// }

// // .map takes the closure as single argument which is then called for each item in the array

// // 16 -> 1
// // 1 -> 0

// // Six
// // OneSix

// // 58 -> 5
// // 5 -> 0

// // Eight
// // FiveEight


// // 510 -> 51
// // 51 -> 5
// // 5 -> 0

// // Zero
// // OneZero
// // FiveOneZero


// // result = [OneSix, FiveEight, FiveOneZero]

// // Learnt about Swift
// // x / y => if Output is Int or Double, it will always round towards zero
// // x:Int % y:Float or x:Float % y.Int => will not work, use truncatingRemainder method (x.truncatingRemainder(dividingBy y), will always return a Double)


// // func loadPicture(from server: Server, completion: (Picture) -> Void, onFailure: () -> Void) {
// //     if let picture = download("photo.jpg", from: server) { 
// //         // Closure 1
// //         completion(picture) 
// //     } else {
// //         // Closure 2
// //         onFailure()
// //     }
// // }



// // Capturing Values
// // A closure can capture constants and variables from the surrounding context in which it’s defined.
// func makeIncrementer(forIncrement amount: Int) -> () -> Int {   // (() -> Int) Refers to incrementer function type
// // makeIncrement is specifying an argument label
//     var runningTotal = 0
//     // Nested Function
//     func incrementer() -> Int { 
//         // running total exists in outer scope & amount exists in the outer (makeIncrementer) scope, therefore it exists in incrementer scope
//         runningTotal += amount
//         return runningTotal
//     }
//     return incrementer 
// }

// // Note with each instance of makeIncrementer created, A new running Total variable is initialised and used per the scope of that instance variable (incrementByTen, incrementBySeven)
// // Therefore, everytime that variable is called, the runningTotal variable per that instance is changed/incremented 
// let incrementByTen = makeIncrementer(forIncrement: 10)  // runningTotal = 0
// let incrementBySeven = makeIncrementer(forIncrement: 7) // runningTotal = 0

// incrementByTen()    // runningTotal += 10: 0 -> 10 
// incrementBySeven()  // runningTotal += 7: 0 -> 7
// incrementBySeven()  // runningTotal += 7: 7 -> 14
// incrementByTen()    // runningTotal += 10: 10 -> 20

// // print(incrementByTen())      // 30
// // print(incrementBySeven())    // 21

// // My attempt at writing a closure
// var arr = [1, 2, 3, 4]

// // let evenNums = arr.filter(isIncluded: (number: Int) throws -> Bool)

// // let evenNums = arr.filter { $0 % 2 == 0 }
// // let evenNums = arr.filter { $0 % 2 == 0 }
// // let evenNums = arr.filter { (num:Int) -> Bool in num % 2 == 0 }
// // let evenNums = arr.filter { (num:Int) -> Bool in return num % 2 == 0 }
// let evenNums = arr.filter({ (num:Int) -> Bool in num % 2 == 0 })
// let oddNums = arr.filter { (num:Int) -> Bool in num % 2 == 1 }
// // print(evenNums)
// // print(oddNums)

// // ---------------------
// // Escaping Closures
// // A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns.

// var completionHandlers: [() -> Void] = [] // closure is outside of function and has been passed through function
// func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) { completionHandlers.append(completionHandler) }

// // Escaping closure: completionhandler
// // completionHandler -> someFunctionWithEscapingClosure() -> completionHandler
// func someFunctionWithNonescapingClosure(closure: () -> Void) {
// closure() // closure is contained inside function
// }

// class SomeClass2 {
//     var x = 10
//     func dosomething() {
//         someFunctionWithNonescapingClosure { x = 200 }
//         someFunctionWithEscapingClosure { self.x = 100 } // referring to self explicitly
//         // someFunctionWithEscapingClosure { [self] in x = 100 } // referring to self implicitly
//     }
// }
// // let instance = SomeClass()
// // instance.dosomething()
// // print(instance.x) // prints 200

// // completionHandlers.first?()
// // print(instance.x)   // prints 100


// struct SomeStruct2 {
//     var x = 10
//     mutating func dosomething() {
//         // someFunctionWithEscapingClosure { x = 200 } // Error - escaping closure captures mutating 'self' parameter
//         someFunctionWithNonescapingClosure { x = 100 } // OK
//     }
// }
// // var instance = SomeStruct()
// // instance.dosomething()
// // print(instance.x)

// // completionHandlers.first?()
// // print(instance.x)


// // Autoclosures ---
// // An autoclosure is a closure that’s automatically created to wrap an expression that’s being passed as an argument to a function.
// var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// // print(customersInLine.count)

// let customerProviderInput = { customersInLine.remove(at: 0) }
// // print(customerProvider())

// func serve(customer customerProvider:() -> String) {
//     print("Now serving \(customerProvider())!")
// }


// // serve(customer: customerProviderInput)



// // Closures are self contained blocks functionality that can be passed around and through your code 
// // These blocks can have inputs or no inputs and outputs or no outputs.
// // These blocks can be written explicitly or in shorthand
// // The syntax is
//     // { (parameters) -> return type in
//     //     statements
//     // }

//     // method( {(parameters) -> return type in statments } ) OR method { (parameters) -> return type in statments }

// // The parameters can be written out explicitly or implicitly
// // You can have closures contained within functions and it can recognize variables from the outer scope - Captured
// // You can have escapable closures which can pass in and pass out of a function

// // class C {

// //     var g: (Int) -> Int

// //     init(h: @escaping (Int) -> Int) {
// //         g = h
// //     }

// // }

// // let c = C() { $0 + 2 } // c.g is now the function { $0 + 2 }
// // c.g(2) // 4


// // func f(x: Int) -> Int { x - 2 }
// // let c2 = C(h: f) // c2.g is now the function f
// // c2.g(2) // 0

// // func i(x: inout Int) {
// //     x = x + 2
// // }

// // func j(x: Int) -> Int { // Every parameter that passes into a function is a let
// //     var x = x      // This x is a copy of the parameter x because it is a variable (when the variable is the same name as the parameter => "shadowing")
// //     let opt: Int? = 2
// //     guard let opt = opt else {
// //         return
// //     }
// //     return x + 2
// // }

// // var y = 3
// // i(x: &y)

// // Within a class, the parameters passed through the closure can be mutable
// // Within a struct, the parameters passed through the closure cannot be mutable
// // -----------------------------------------------
// // -----------------------------------------------
// // Enumerations
// // An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
// // Start with a Capital letter 
// // Swift enumeration cases do not set an integer value by default
// // Each enumeration defines a new type

// // enum someEnumeration {
// //     // enumeration definition goes here
// // }
// enum CompassPoint {
//     case north
//     case south
//     case east
//     case west
// }

// enum Planet: CaseIterable {
//     case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
// }

// var directionToHead = CompassPoint.north // type CompassPoint
// directionToHead = .north // shorter syntax


// // Matching Enumeration Values with a Switch Statement
// directionToHead = .south
// switch directionToHead {
//     case .north:
//         print("Lots of planets have a north")
//     case .south:
//         print("Watch out for penguins")
//     case .east:
//         print("Where the sun rises")
//     case .west:
//         print("Where the skies are blue")
// }
// // Prints "Watch out for penguins"


// var planetToVisit = Planet.earth
// // planetToVisit = .venus
// switch planetToVisit {
//     case .earth:
//         print("Safe place for humans")
//     default:
//         print("Not a safe place for humans")
// }



// let numberOfPlanets = Planet.allCases.count // Note: You have to make the enum "CaseIterable" (enum x : CaseIterable)
// print("The number of planets is \(numberOfPlanets).")

// // for planet in Planet.allCases {
// //     print(planet)
// // }

// // Associated Values ---
// // Storing values of varying types alongside these case values
// enum Barcode {
//     case upc(Int, Int, Int, Int)
//     case qr(String)
// }

// var productBarcode = Barcode.upc(8, 85909, 51226, 3)
// // productBarcode = .qr("ABCDEFGHIJKLMNOP")

// switch productBarcode {
//     case .upc(let numberSystem, let manufacturer, let product, let check):
//         print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
//     case .qr(let productCode):
//         print("QR: \(productCode)")
// }


// // RAW VALUES ---
// enum ASCIIConrtolCharacter: Character {
//     case tab = "\t"
//     case lineFeed = "\n"
//     case carriageRetur = "\r"
// }

// enum Planet2: Int {
//     case mercury = 1, venus = 2, earth = 3, mars = 4, jupiter = 5, 
//     saturn = 6, uranus = 7, neptune = 8, pluto = 9
// }

// enum CompassPoint2: String{
//     case north = "Top"
//     case south = "Bottom"
//     case east = "Left"
//     case west = "Right"
// }

// let earthsOrder = Planet2.earth.rawValue
// // print(earthsOrder)

// let northOrder = CompassPoint2.north.rawValue
// // print(northOrder)


// // let possiblePlanet = Planet2(rawValue: 4)
// // print(possiblePlanet!)

// let positionToFind = 20
// if let possiblePlanet = Planet2(rawValue: positionToFind) {
//     switch possiblePlanet {
//         case .earth:
//             print("This is a friendly place.")
//         default:
//             print("This is not a friendly place.")
//         }
//     } else {
//         print("This planet is not in our solar system.")
//     }

// // Recursive Enumerations ---
// // A recursive enumeration is an enumeration that has another instance of the enumeration as the associated value for one or more of the enumeration cases.
// enum ArithmeticExpression {
//     case number(Int)
//     indirect case addition(ArithmeticExpression, ArithmeticExpression)
//     indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
// }

// func evaluate(_ expression: ArithmeticExpression) -> Int {
//     switch expression {
//         case let .number(value):
//             return value
//         case let .addition(left, right):
//             return evaluate(left) + evaluate(right)
//         case let .multiplication(left, right):
//             return evaluate(left) * evaluate(right)
//     }
// }

// let five = ArithmeticExpression.number(5)
// let four = ArithmeticExpression.number(4)
// let sum = ArithmeticExpression.addition(five, four)
// let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
// // print(evaluate(product)) // (5 + 4) * 2 = 18

// // ----
// // Stuctures & Classes
// // Unlike other programming languages, Swift doesn’t require 
// // you to create separate interface and implementation files 
// // for custom structures and classes.

// // Classes & Structs:
// // - Define properties to store values
// // - Define methods to provide functionality
// // - Define subscripts to provide access to their values using subscript syntax
// // - Define initializers to set up their initial state
// // - Be extended to expand their functionality beyond a default implementation
// // - Conform to protocols to provide standard functionality of a certain kind

// // Classes have:
// // - Inheritance enables one class to inherit the characteristics of another.
// // - Type casting enables you to check and interpret the type of a class instance at runtime.
// // - Deinitializers enable an instance of a class to free up any resources it has assigned.
// // - Reference counting allows more than one reference to a class instance.

// struct SomeStruct {
//     // Structure definition goes here
// }

// class SomeClass {
//     // Class definition goes here
// }

// // Classes and structs are swift types - UpperCamelCase
// // Properties and Methods - lowerCamelCase

// struct Resolution {
//     var width = 0
//     var height = 0

//     // init(width: Int, height: Int) {
//     //     self.width = width
//     //     self.height = height

//         // self.width, self.height => members
//         // width, height => parameters

// // All structures have an automatically generated memberwise 
// // initializer, which you can use to initialize the member 
// // properties of new structure instances. (init(width:Int, height:Int))
// // Unlike structures, class instances don’t receive a default memberwise initializer.
//     }


// class VideoMode {
//     // var resolution = Resolution(width: 2, height: 0)
//     // var resolution = Resolution()
//     var interlaced = false
//     var frameRate = 0.0
//     var name: String?

//     init() {

//     }

//     init(interlaced: Bool, frameRate: Double, name: String?) {
//         // self.resolution = resolution
//         self.interlaced = interlaced
//         self.frameRate = frameRate
//         self.name = name
//     }
// }

// class VideoMode2 {
//     var resolution = Resolution()
//     var interlaced = false
//     var frameRate = 0.0
//     var name: String?    
// }
// // The Resolution structure definition and the VideoMode class 
// // definition only describe what a Resolution or VideoMode will 
// // look like. They themselves don’t describe a specific resolution
// // or video mode. To do that, you need to create an instance of the 
// // structure or class.
// let someResolution = Resolution()
// let someVideoMode = VideoMode()

// // print(someVideoMode.frameRate)
// // let vga = Resolution(width: 100, height: 200)

// // All Builtin types in Swift (Boolean, Strings, arrays, and dictionaries)
// // are structs. All structs are value types.
// // All classes are reference types
// // Value types have copies created when assigned, those copies are then
// // modifyable
// // Collections, defiend by the standard library use an optimization to 
// // reduce performance cost of copying.

// // Structures and Enumerations Are Value Types ----
// var hd = Resolution(width: 1920, height: 1080)
// var cinema = hd // copy of hd created and assigned to cinema

// // modifying cinema does not modify hd
// cinema.height = 2048

// // print(hd.height)        // 1080
// // print(cinema.height)    // 2048
// // hd and cinema both reference different Resolution instances (cinema references the copy of hs's instance, then the copy its modified)

// enum CompassPoint3 {
//     case north, south, east, west
//     mutating func turnNorth() { 
//         // what does mutating mean? 
//         // -> A function marked with "mutating" can change 
//         // any property within its enclosing value
//         self = .north
//     }
// }

// var currentDirection = CompassPoint3.east
// var rememberedDirection = currentDirection // copy created because currentDirection is an enum
// currentDirection.turnNorth()
// // print(currentDirection)
// // print(rememberedDirection)

// // Classes are Reference Types ----
// // Classes are not copied when they're assigned to a variable, 
// // thus changing the variable will change the original instance as well
// let tenEighty = VideoMode()
// // tenEighty.resolution = hd
// // tenEighty.interlaced = true
// // tenEighty.frameRate = 25.0
// // tenEighty.name = "1080i"

// var newTenEighty = tenEighty
// newTenEighty.frameRate = 50

// // print(tenEighty.frameRate)      // 50.0
// // print(newTenEighty.frameRate)   // 50.0
// // newTenEighty and tenEighty both reference the same VideoMode instance

// // Note: newTenEighty and tenEighty are both declared as constants,
// // yet you can change newTenEighty.frameRate and tenEighty.frameRate.
// // Because the constant decleration refers to the instance of VideoMode, not the properties themeselves.
// // The properties of the VideoMode instance can still change, not the values of the constants
// // that reference VideoMode (e.g you cannot change newTenEighty = VideoMode2())
// // newTenEighty = VideoMode2() // Error? Ask Callum

// // Identity Operators ---
// // Because classes are reference types, 
// // it’s possible for multiple constants and variables 
// // to refer to the same single instance of a class behind the scenes.

// // print(tenEighty === newTenEighty)   // true
// // print(tenEighty !== newTenEighty)   // false


// // ---------------
// // Properties
// // Stored Properties - store constant and variable values as 
//                     // part of an instance
// // Computed properties - calculate a value

// struct FixedLengthRange {
//     var firstValue: Int
//     let length : Int
// }

// class FixedWidthRange {
//     var firstValue: Int
//     let width: Int

//     init(firstValue:Int, width:Int) {
//         self.firstValue = firstValue
//         self.width = width
//     }
// }

// let rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 0)
// // rangeOfThreeItems.firstValue = 6 // Error: you cannot change the instance of a struct's property if it is declared as a constant
// let rangeOfTwoItems = FixedWidthRange(firstValue: 0, width: 3)
// // rangeOfTwoItems.firstValue = 0

// // Lazy Stored Properties --
// // A lazy stored property is a property whose initial value 
// // isn’t calculated until the first time it’s used.
// // Lazy properties must alway be declared as a variable => 
// // initial value is not retrieved until after instance init is complete
// class DataImporter {
//     /*
//     DataImporter is a class to import data from an external file.
//     The class is assumed to take a nontrivial amount of time to initialize.
//     */
//     var filename = "data.txt"
//     // the DataImporter class would provide data importing functionality here
// }

// class DataManager {
//     lazy var importer = DataImporter()
//     var data: [String] = []
//     // the DataManager class would provide data management functionality here
// }

// let manager = DataManager()
// manager.data.append("Some data")
// manager.data.append("Some more data")
// // the DataImporter instance for the importer property hasn't yet been created
// // print(manager.importer.filename)


// // Computed Properties
// // Structs, enums, clases can define computed 
// // properties which don't actuallt store a value.
// // They provide a getter and an optional setter -> 
// // set and retrieve other properties indirectly
// // Always declare computed properties as variables, 
// // because they are always changing
// struct Point2 {
//     var x = 0.0, y = 0.0
// }
// struct Size2 {
//     var width = 0.0, height = 0.0
// }

// struct Rect2 {
//     var origin = Point2()
//     var size = Size2()
//     var center: Point2 {
//         get {
//             let centerX = origin.x + (size.width / 2)
//             let centerY = origin.y + (size.height / 2)
//             return Point2(x: centerX, y: centerY)
//         }
//         set(newCenter) {
//             origin.x = newCenter.x - (size.width / 2)
//             origin.y = newCenter.y - (size.height / 2)
//         }
//     }
// }

// var square = Rect2(origin: Point2(x: 0.0, y: 0.0),
//                            size: Size2(width: 10.0, height: 10.0))

// let initialSquareCenter = square.center // initial square Center = (5.0, 5.0)
// // square.center = Point2(x: 15.0, y: 15.0)
// square.size = Size2(width: 50, height: 50)
// print(initialSquareCenter)
// print(square.center)
// // print(newSquareCenter)

// // Shorthand setter decleration - newValue default name
// struct AlternativeRect {
//     var origin = Point2()
//     var size = Size2()
//     var center: Point2 {
//         get {
//             let centerX = origin.x + (size.width / 2)
//             let centerY = origin.y + (size.height / 2)
//             return Point2(x: centerX, y: centerY)
//         }
//         set {
//             origin.x = newValue.x - (size.width / 2)
//             origin.y = newValue.y - (size.height / 2)
//         }
//     }
// }

// // Shorthand getter decleration
// struct CompactRect {
//     var origin = Point2()
//     var size = Size2()
//     var center: Point2 {
//         get {
//             Point2(x: origin.x + (size.width / 2),
//                     y: origin.y + (size.height / 2))
//         }
//         set {
//             origin.x = newValue.x - (size.width / 2)
//             origin.y = newValue.y - (size.height / 2)
//         }
//     }
// }

// var whiteShirt = 0.0
// var WhiteShirt : Double {
//     get {
//         return whiteShirt
//     }
//     set {
//         whiteShirt = newValue // newValue is a default name for a value to be set
//     }
// }

// // print(whiteShirt) // 0
// // print(WhiteShirt)  // 0
// // whiteShirt = 5
// // print(whiteShirt) // 5
// // print(WhiteShirt)  // 5


// // Readonly computed property - Only a getter but no setter
// var volume: Double {
//     get {
//         return 4.0
//     }
// }
// // print(volume)
// // volume = 5.0 // Error: Cannot set volume because it is defined as a readonly
// // You can simplify the readonly property by removing the get key word


// // Property Observers
// // Property observers observe and respond to 
// // changes in a property’s value.

// // think of them like triggers, and the on state is the property change
// // willSet is called just before the value is stored. (rising edge)
// // didSet is called immediately after the new value is stored. (falling edge)
// class StepCounter {
//     var totalSteps: Int = 0 {
//         willSet(newTotalSteps) {
//             print("About to set totalSteps to \(newTotalSteps)")
//         }
//         didSet {
//             if totalSteps > oldValue  {
//                 print("Added \(totalSteps - oldValue) steps")
//             }
//         }
//     }
// }
// let stepCounter = StepCounter()
// // stepCounter.totalSteps = 200
// // About to set totalSteps to 200
// // Added 200 steps

// // Property Wrappers
// // A property wrapper adds a layer of separation 
// // between code that manages how a property is stored 
// // and the code that defines a property.
// // @propertyWrapper // Question how does the code below know about the property Wrapper? 
// // -> The entire struct is a property wrapper, so when called by another struct with reference to the wrapper it's contents are recognized by the other struct
// @propertyWrapper struct TwelveOrLess {
//     private var number = 0
//     var wrappedValue: Int {
//         get { return number }
//         set { number = min(newValue, 12)}
//     }

//     init() {

//     }
    
//     init(wrappedValue: Int) {
//         self.wrappedValue = wrappedValue
//     }
// }

// // @propertyWrapper struct Uppercased {
// //     var wrappedValue: String {
// //         didSet { wrappedValue = wrappedValue.uppercased() }
// //     }

// //     init(wrappedValue: String) {
// //         self.wrappedValue = wrappedValue.uppercased()
// //     }
// // }

// // struct User {
// //     @Uppercased var firstName: String
// //     @Uppercased var lastName: String
// // }

// // var user1 = User(firstName: "Sam", lastName: "Flynn")
// // print(user1)


// // var num1 = TwelveOrLess()
// // num1.wrappedValue = 13
// // print(num1.wrappedValue) // 12

// struct SmallRectangle {
//     @TwelveOrLess var height: Int //= 1
//     @TwelveOrLess var width: Int //= 1
// }

// var rectangle = SmallRectangle()
// // print(rectangle.height) // 0
// // print(rectangle.width)  // 0

// // With init(wrappedValue: Int) in struct
// // print(rectangle.height) // 1
// // print(rectangle.width)  // 1

// rectangle.height = 13
// rectangle.width = 13
// // print(rectangle.height) // 12
// // print(rectangle.width)  // 12

// // When you apply a wrapper to a property, 
// // the compiler synthesizes code that provides storage 
// // for the wrapper and code that provides access to the 
// // property through the wrapper.

// @propertyWrapper
// struct SmallNumber {
//     private var maximum: Int
//     private var number: Int

//     // This is the wrappedValue that is called by the instance
//     var wrappedValue: Int {
//         get { return number }
//         set { number = min(newValue, maximum) }
//     }
    
//     // initialised members
//     init() {
//         maximum = 12
//         number = 0
//     }
//     init(wrappedValue: Int) {
//         maximum = 12
//         number = min(wrappedValue, maximum)
//     }
//     init(wrappedValue: Int, maximum: Int) {
//         self.maximum = maximum
//         number = min(wrappedValue, maximum)
//     }
// }

// struct ZeroRectangle {
//     // these are the wrappedValues = number
//     @SmallNumber var height: Int
//     @SmallNumber var width: Int 
// }


// struct UnitRectangle {
//     // These are calling numbers which link to the unwrappedValue member in the struct SmallNumber which is of type int
//     // This is only possible because the init of the SmallNumber struct can take a wrappedValue as a parameter. Else, it would be an argument error
//     @SmallNumber var height: Int = 1 // Similar to a function call variable with arguments => .height = SmallNumber(wrappedValue: 1) which is the member of type Int
//     @SmallNumber var width: Int = 1
// }


// let zeroRectangle = ZeroRectangle() // change let to var
// // zeroRectangle.width = 4
// // print(zeroRectangle.height, zeroRectangle.width) // prints 0 0


// let unitRectangle = UnitRectangle()
// // print(unitRectangle.height, unitRectangle.width) // 1 1
// // var numy = SmallNumber(wrappedValue: 4, maximum: 5)
// // print(numy.maximum)

// // When you write = 1 on a property with a wrapper, that’s translated into a call to the init(wrappedValue:) initializer.
// struct NarrowRectangle {
//     @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
//     @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
// }

// var narrowRectangle = NarrowRectangle()
// // print(narrowRectangle.height, narrowRectangle.width) // prints 2 3


// narrowRectangle.height = 100
// narrowRectangle.width = 100
// // print(narrowRectangle.height, narrowRectangle.width) // prints 5, 4



// struct MixedRectangle {
//     @SmallNumber var height: Int = 1
//     @SmallNumber(maximum: 9) var width: Int = 2
// }

// var mixedRectangle = MixedRectangle()
// // print(mixedRectangle.height) // prints 1

// mixedRectangle.height = 20
// // print(mixedRectangle.height) // prints 12

// mixedRectangle.width = 20
// // print(mixedRectangle.width) // 9 because the maximum init is specified in the MixedRectangle 

// @propertyWrapper
// struct SmallNumber2 {
//     private var number: Int
//     private(set) var projectedValue: Bool

//     var wrappedValue: Int {
//         get { return number }
//         set { 
//             if /*number*/ newValue > 12 { // remember to use newValue because the newValue never gets evaluated, instead number gets assigned to newValue
//                 number = 12
//                 projectedValue = true
//             } else {
//                 number = newValue
//                 projectedValue = false
//             }
//         }
//     }

//     init() {
//         self.projectedValue = false
//         self.number = 0
//     }
// }


// struct SomeStructure2 {
//     @SmallNumber2 var someNumber: Int
// }

// var randomInstance = SomeStructure2()
// randomInstance.someNumber = 13
// // print(randomInstance.someNumber)
// // print(randomInstance.$someNumber) // true

// // randomInstance.someNumber = 11
// // print(randomInstance.$someNumber) // false


// enum Size3 {
//     case small, large
// }

// struct SizedRectangle {
//     @SmallNumber2 var height: Int 
//     @SmallNumber2 var width: Int 

//     // Function is describing "Has the size been resized recently? and it utilizes the value projection from a property wrapper"
//     mutating func resize(to size: Size3) -> Bool {
//         switch size {
//             case .small:
//                 height = 10
//                 width = 20
//             case .large:
//                 height = 100
//                 width = 100
//         }

//         return $height || $width
//     }
// }

// var randomRect = SizedRectangle()
// // Equivelant to randomRect.height = 10, randomRect.width = 20, print(randomRect.$height || randomRect.$width)
// // print(randomRect.resize(to: .small))
// // print(randomRect.height)
// // print(randomRect.width)

// // print(randomRect.resize(to: .large))
// // print(randomRect.height)
// // print(randomRect.width)


// // Global & local Variables ---
// // The capabilities described above for computing and observing properties are also available to global variables and local variables.
// // Global vairavles are variables that are defined outside any function, method, closure or type context
// // Local variables are variables that are defined within a function, method, or closure context
// // You can apply a property wrapper to a local stored variable, but not to a global variable or a computed variable.

// // Type Properties ---
// // Instance properties are properties that belong to an instance of a particular type.
// // You can also define properties that belong to the type itself, not to any one instance of that type.
// // There will only ever be one copy of these properties, no matter how many instances of that type you create. These kinds of properties are called type properties.
// // Type properties are useful for defining values that are universal to all instances of a particular type, such as a constant property that all instances can use
// // You define type properties with the static keyword.

// enum SomeEnum { 
//     static var storedTypeProperty = "Some value" // static properties are type properties
//     static var computedTypeproperty: Int {
//         get { return 1 }
//     }
// }

// struct SomeStruct3 {
//     static var storedTypeProperty = "Some value"
//     static var computedTypeProperty: Int {
//         get { return 0 }
//     }
// }

// class SomeClass3 {
//     static var storedTypeProperty = "Some value"
//     static var computedTypeProperty: Int {
//         get { return 5 }
//     }

//     class var overrideableComputedTypePropertty: Int {
//         return 107
//     }
// }

// // print(SomeStruct3.storedTypeProperty)
// // print(SomeStruct3.computedTypeProperty)


// // print(SomeClass3.storedTypeProperty)
// // print(SomeClass3.computedTypeProperty)
// // print(SomeClass3.overrideableComputedTypePropertty)

// // print(SomeEnum.storedTypeProperty)
// // print(SomeEnum.computedTypeproperty)



// // ----------------------------
// // Methods
// // Methods are functions that are associated with a particular type.
// struct Point3 {
//     var x = 0.0, y = 0.0
//     func isToTherightOf(x: Double) -> Bool {
//         return self.x > x
//     }

//     // mutating key word enables the method to modify its properties
//     mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//         x += deltaX
//         y += deltaY
//     }

//     // Alternative moveBy method
//     mutating func moveBy2(x deltaX: Double, y deltaY: Double) {
//         self = Point3(x: x + deltaX, y: y + deltaY)
//     }


//     func showPoint() {
//         print("\(x), \(y)")
//     }
// }


// var somePoint = Point3(x: 4.0, y: 5.0)
// // somePoint.moveBy(x: 5, y: 5)
// // somePoint.showPoint()
// // somePoint.moveBy2(x: 5, y: 5)
// // somePoint.showPoint()



// var someOtherPoint = Point3(x: 5.0, y: 6.0)
// someOtherPoint.moveBy(x: 5, y: 5)
// // someOtherPoint.showPoint()



// // print(somePoint.isToTherightOf(x: 3)) // true

// class Count {
//     var currentCount: Int = 0
//     func increment() {
//         self.currentCount += 1
//     }

//     func increment(by amount: Int) {
//         self.currentCount += amount
//     }

//     func reset() {
//         self.currentCount = 0
//     }
// }

// // var num = Count()
// // print(num.currentCount) // 0

// // num.increment()
// // print(num.currentCount) // 1

// // num.increment(by: 5)
// // print(num.currentCount) // 6

// // num.reset()
// // print(num.currentCount) // 0

// // Note that you can’t call a mutating method on a constant of structure type, because its properties can’t be changed.

// enum TriStateSwitch {
//     case off, low, high
//     mutating func next() {
//         switch self {
//         case .off:
//             self = .low
//         case .low:
//             self = .high
//         case .high:
//             self = .off
//         }
//     }
// }
// // var ovenLight = TriStateSwitch.low
// // ovenLight.next()
// // print(ovenLight)
// // // ovenLight is now equal to .high
// // ovenLight.next()
// // print(ovenLight)
// // // ovenLight is now equal to .off
// // ovenLight.next()
// // print(ovenLight)

// // Instance Methods
// // Instance methods, as described above, are methods that you call on an instance of a particular type.
// // You can also define methods that are called on the type itself.
// class SomeClass4 {
//     class func someTypeMethod() {
//         // type method implementation goes here
//     }
// }
// SomeClass4.someTypeMethod()
// // .someTypeMethod() // for type methods or type properties, the type itself does not need to written out 


// // ----------------
// // Ask Callum of a more efficient way of writing this LevelTracker method
// enum Level: Int, CaseIterable {
//     case level1 = 1
//     case level2 = 2
//     case level3 = 3

//     var toNextLevel: Level {
//         switch self {
//         case .level1: return .level2
//         case .level2: return .level3
//         case .level3: return .level3
//         }
//     }

//     func isUnlocked(level: Level) -> Bool {
//         switch (self, level) {
//         case (.level1, .level1), (.level2, .level1), (.level2, .level2), (.level3, _):
//             return true
//         default:
//             return false
//         }
//     }
// }

// import XCTest

// func testIsNextLevel() {
//     // zip func => [(.level1, .level2), (.level2, .level3)]
//     // If you were to add more cases, the method shoulld remain the same
//     // First thing to think about is "What are the edge cases?" 1 element, no eleement, max element ...
//     // Don't memorize the methods but memorize "what is this used for? What problems does it solve and how does it fit in with everything else?"
//     for (c1, c2) in zip(Level.allCases, Level.allCases.dropFirst()) {
//         XCTAssertEqual(c1.toNextLevel, c2)
//     }
//     guard let last = Level.allCases.last else {
//         return
//     }
//     XCTAssertEqual(last.toNextLevel, last)
// }

// func testCanUnlockLevels() {
//     // The noob way...
//     // let level: Level = .level1
//     // XCTAssertTrue(level.isUnlocked(level: .level1))
//     // XCTAssertFalse(level.isUnlocked(level: .level2))
//     // XCTAssertFalse(level.isUnlocked(level: .level3))
//     // let level2: Level = .level2
//     // XCTAssertTrue(level2.isUnlocked(level: .level1))
//     // XCTAssertTrue(level2.isUnlocked(level: .level2))
//     // let level3: Level = .level3
//     // XCTAssertTrue(level3.isUnlocked(level: .level1))
//     // XCTAssertTrue(level3.isUnlocked(level: .level2))
//     // XCTAssertTrue(level3.isUnlocked(level: .level3))

//     // Example of testing level isUnlocked function.
//     // If j is to the left of i: run Case A
//     // If j is to the right of i: run Case B
//     // This test can tolerate to new cases being added

//     let cases = Level.allCases
//     for (i, c1) in cases.enumerated() {
//         for (j, c2) in cases.enumerated() {
//             if j <= i {
//                 // case A
//                 XCTAssertTrue(c1.isUnlocked(level: c2)) // Should expect true
//                 XCTAssertFalse(c2.isUnlocked(level: c1)) // should expect false
//             } else {
//                 // Case B
//                 XCTAssertFalse(c1.isUnlocked(level: c2))
//                 XCTAssertTrue(c2.isUnlocked(level: c1))
//             }
//         }
//     }
// }

// // Composition
// // OOP Design -> defines possible operations and values the ndelegate/hadle business logic 
// // variables in a struct/type define the possible values of the struct
// // methods define the possible operations you can perform with the struct

// // Define a public operation of a struct/type and in it, procedurally call private funcs(operations) (private functions ae difficult to test!)
// // Define operation on types (as methods) then leverage those -> What you should do!

// struct LevelTracker {
//     var currentLevel: Level = .level1
//     var highestLevelUnlocked: Level = .level1

//     mutating func requestToProgress(/*currentLevel*/) {
//         if highestLevelUnlocked.isUnlocked(level: currentLevel.toNextLevel) {
//             advance(to: currentLevel.toNextLevel)
//         }
//         // switch self.currentLevel {
//         // case .level1:
//         // if isUnlocked(.level2) || isUnlocked(.level3) {
//         //     advance(to: .level2)
//         // } else {
//         //     errorMessage(.level2)
//         // }

//         // case .level2:
//         // if isUnlocked(.level3) {
//         //     advance(to:.level3)
//         //     print("Highest Level achieved!\nCongratulations you win!")
//         // } else {
//         //     errorMessage(.level3)
//         // }

//         // case .level3:
//         //     print("There are no further levels.")
//         // }
//     }

//     private mutating func advance(to nextLevel: Level) {
//         currentLevel = nextLevel
//     }

//     mutating func unlock(_ level: Level) {
//         if level.rawValue > highestLevelUnlocked.rawValue { 
//             highestLevelUnlocked = level
//         }
//     }

//     // func isUnlocked(_ level: Level) -> Bool { return highestLevelUnlocked.rawValue >= level.rawValue }

//     private func errorMessage(_ level: Level) { print("Cannot progress. Level \(level.rawValue) is locked.")}
// }

// // my Feedback:
// // - do not require enum
// // - questioning whether it is better to write functions as static, since level tracker is only referring to game1 instance?


// // - self refers to the type member of the instance, then what does calling the property itself do? 
// // -> In practice, you don’t need to write self in your code very often. If you don’t explicitly write self, Swift assumes that you are referring to a property or method of the 
// // current instance whenever you use a known property or method name within a method. This assumption is demonstrated by the use of count (rather than self.count) inside the three 
// // instance methods for Counter. The main exception to this rule occurs when a parameter name for an instance method has the same name as a property of that instance.

// var game1 = LevelTracker()


// // // Player at level 1
// // print(game1.currentLevel) // level1

// // // is Level2 locked?
// // print(game1.isUnlocked(.level2)) // false

// // // unlock level2
// // game1.unlock(.level2)

// // // is level2 unlocked?
// // print(game1.isUnlocked(.level2)) // true

// // // progress to next level
// // game1.requestToProgress()

// // // Player at level 2
// // print(game1.currentLevel) // level2

// // // Is level 3 unlocked?
// // print(game1.isUnlocked(.level3)) // false

// // game1.requestToProgress() // will print error message

// // // unlock level3
// // game1.unlock(.level3)

// // // Is level3 locked?
// // print(game1.isUnlocked(.level3)) // true

// // game1.requestToProgress() // Won game, highest level reached

// // // print(game1.currentLevel) // level 3

// // game1.requestToProgress() // Highest level achieved


// // ---
// // Modifying value types within Instance methods ---

// struct Player {
//     var tracker = LevelTracker()
//     let playerName: String
    
//     mutating func complete(level: Level) { // requires mutating because datatype is a struct not a class
//         // Converts enum into all cases array ofthe enum [level1, level2, level3]
//         let nextLevel = level.next() // gets next level in enum
//         tracker.unlock(nextLevel)
//         tracker.requestToProgress()
//         // tracker.advance(to: nextLevel)
//     }
//     init(name: String) {
//         playerName = name
//     }
// }

// // -------------- COME BACK TO LATER ... ------------
// // need to review this solution's syntax to see what's actually going on... 
// // (https://stackoverflow.com/questions/51103795/how-to-get-next-case-of-enumi-e-write-a-circulating-method-in-swift-4-2)
// // but essentially it returns the next enum value
// extension CaseIterable where Self: Equatable {
//     func next() -> Self {
//         let all = Self.allCases
//         let idx = all.firstIndex(of: self)!
//         let next = all.index(after: idx)
//         return all[next == all.endIndex ? all.startIndex : next]
//     }
// }
// // --------------------------------------------------
// // Can fix later if so desire to ---
// // var player1 = Player(name: "Karan")
// // var player2 = Player(name: "Jason")
// // player1.complete(level: .level1)
// // player1.complete(level: .level2)

// // player2.complete(level: .level3)

// // print(player1.tracker.currentLevel) // level 2
// // print(player2.tracker.currentLevel)


// // -------------------------------------------------------------------------------------
// // Subscripts ---
// // Subscripts are shortcuts to set and retrieve values by index without needing seperate methods for setting and retrieval.
// // Unlike instance methods, subscripts can be read-write or read-only. This behavior is communicated by a getter and setter in the same way as for computed properties:
// // Subscripts cannot use inout parameters -> Do subscripts provide access to mutating variables?
// // Subscripts can take multiple parameters


// // subscript(index: Int) -> Int {
// //     get {
// //         // Return an appropriate subscript value here.
// //     }
// //     set(newValue) {
// //         // Perform a suitable setting action here.
// //     }
// // }

// // subscript(index: Int) -> Int {
// //     // Return an appropriate subscript value here.
// // }

// struct TimesTable {
//     let multiplier: Int

//     // readonly subscript
//     subscript(index: Int) -> Int {
//         // print("The Index: \(index)")
//         return multiplier * index
//     }
// }
// let threeTimesTable = TimesTable(multiplier: 3)
// // print(threeTimesTable[6]) // 18

// struct Matrix {
//     let rows: Int, columns: Int
//     var grid: [Double]
//     init(rows: Int, columns: Int) {
//         self.rows = rows
//         self.columns = columns
//         self.grid = Array(repeating: 0.0, count: rows * columns)
//     }
//     func indexIsValid(row: Int, column: Int) -> Bool {
//         return row >= 0 && row < rows && column >= 0 && columns <= columns 
//     }

//     subscript(row: Int, column: Int) -> Double {
//         get {
//             assert(indexIsValid(row: row, column: column), "Index out of range")
//             return grid[(row *  columns) + column]
//         }
//         set {
//             assert(indexIsValid(row: row, column: column), "Index out of range")
//             grid[(row * columns) + column] = newValue
//         }
//     }
// }

// var instanceMatrix = Matrix(rows: 2, columns: 2)
// // print(instanceMatrix) // This prints Matrix ( ... )

// instanceMatrix[0, 2] = 1
// print(instanceMatrix[0, 2])
// // instanceMatrix[1, 0] = 1

// // print(instanceMatrix[0, 3])

// // print(instanceMatrix.grid)
// // print(instanceMatrix.indexIsValid(row: 2, column: 2))


// // let instanceResolution = Resolution(width: 5, height: 5)
// // print(instanceResolution) // Why does this print Resolution(width: 5, height: 5)

// // let instanceVideoMode = VideoMode(interlaced: false, frameRate: 0.0, name: "Karan")
// // print(instanceVideoMode) // why does this print SwiftPackageEnv.VideoMode? -> VideoMode is a class not a struct, a struct would print Videomode( ... ), a class would print <nameOfEnv>.<nameOfClass>
// // print(instanceVideoMode)

// // enum Planet3: Int {
// //     case mercury=1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
// //     static subscript(n: Int) -> Planet3 {
// //         guard let result = Planet3(rawValue: n) else { return 0 }
// //         return result
// //     }
// // }
// // let mars = Planet3[4]
// // print(mars)


// // enum Planet4: Int {
// //     case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
// //     static subscript(n: Int) -> Planet4 {
// //         return Planet4(rawValue: n)!
// //     }
// // }
// // let mars2 = Planet4[4]
// // print(mars2)


// // Inheritance ---
// // A class can inherit methods, properties, and other characteristics from another class.
// // The inheriting class is known as a subclass
// // The class inherits from is known as a superclass

// // Base class - is a class that doesn't inherit from another class
// class Vehicle {
//     var currentSpeed = 0.0
//     var description: String {
//         return "travelling at \(currentSpeed) miles per hour"
//     }
//     func makeNoise() {
//         // do nothing - an arbitrary vehicle doesn't necessarily make a noise
//     }
// }

// let someVehicle = Vehicle()
// // print("Vehicle: \(someVehicle.description)")

// // class SomeSubclass: SomeSuperclass { 
// //     // subsclass definitiion goes here
// // }

// class Bicycle: Vehicle {
//     var hasBasket = false
// }


// let someBicycle = Bicycle()
// someBicycle.hasBasket = true
// someBicycle.currentSpeed = 15.0
// // print(someBicycle.description)

// class Tandem: Bicycle {
//     var currentNumberOfPassengers = 0
// }

// class Train: Vehicle {
//     override func makeNoise() {
//         print("Choo Choo")
//     }
// }


// // let train = Vehicle()
// let train = Train()
// // train.makeNoise() // Choo Choo


// // let tandem = Tandem()
// // tandem.hasBasket = true
// // tandem.currentNumberOfPassengers = 2
// // tandem.currentSpeed = 22.0
// // print("Tandem: \(tandem.description)")
// // // Tandem: traveling at 22.0 miles per hour


// // Overriding A subclass can provide its own custom implementation 
// // of an instance method, type method, instance property, type property, 
// // or subscript that it would otherwise inherit from a superclass.

// // Overriding properties
// class Car: Vehicle {
//     var gear = 1
//     override var description: String {
//         return super.description + " in gear \(gear)"
//     }
// }
// let car = Car()
// // print(car.description)


// // Overriding property observers
// class AutomaticCar: Car {
//     // Whenever you set current speed
//     override var currentSpeed: Double {
//         didSet {
//             gear = Int(currentSpeed / 10.0) + 1
//         }
//     }
// }

// let autoCar = AutomaticCar()
// autoCar.currentSpeed = 20
// // autoCar.gear = 2
// // print(autoCar.gear)

// // Preventing Overrides
// // You can prevent a method, property, or subscript from being overridden by marking it as final. 



// // Initialization ---
// // Initialization is the process of preparing an instance of a class, structure, or enumeration for use.
// struct Fahrenheit {
//     var temperature: Double
//     init() {
//         temperature = 32.0
//     }

//     // OR
//     // var temperature = 32.0 // Simpler form
// }
// var f = Fahrenheit()
// print("The default temperature is \(f.temperature) degrees Fahrenheit")

// struct Celsius {
//     var temperatureInCelsius: Double
//     init(fromFahrenheit fahrenheit: Double) {
//         temperatureInCelsius = (fahrenheit - 32.0) / 1.8
//     }
//     init(fromKelvin kelvin: Double) {
//         temperatureInCelsius = kelvin - 273.15
//     }

//     init(_ celsius: Double) {
//         temperatureInCelsius = celsius
//     }
// }
// let boilingPointOfWater = Celsius(fromFahrenheit: 212.0) // 100 degrees in Celsius
// // print(boilingPointOfWater.temperatureInCelsius)
// let freezingPointOfWater = Celsius(fromKelvin: 273.15) // 0 degrees in Celsius
// // print(freezingPointOfWater.temperatureInCelsius)

// struct Color {
//     let red, green, blue: Double
//     init(red: Double, green: Double, blue: Double) {
//         self.red = red
//         self.green = green
//         self.blue = blue
//     }

//     init(white: Double) {
//         red = white
//         green = white
//         blue = white
//     }
// }

// let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
// let halfGray = Color(white: 0.5)

// class SurveyQuestion {
//     var text: String
//     var response: String?
//     init(text: String) {
//         self.text = text
//     }
//     func ask() {
//         print(text)
//     }
// }
// let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
// // print(cheeseQuestion.response) // returns nil
// // For class instances, 
// // a constant property can be modified during initialization only by the class that introduces it.
// // It can’t be modified by a subclass.

// struct Point4 {
//     var x = 0.0, y = 0.0
// }



// struct Rect4 {
//     var origin = Point()
//     var size = Size()

//     // functionally the same as the default initializer. By calling it,
//     // this init returns an instance whos origin and size properties are both initialized
//     // with the default values of Point(x: 0.0, y: 0.0) and Size(width: 0.0, height: 0.0)
//     init() {}

//     // The second Rect initializer is functionlly the same as the memberwise initializer that the 
//     // structure would have recieved if it didn't have its own custom initializers.
//     init(origin: Point, size: Size) {
//         self.origin = origin
//         self.size = size
//     }

//     // the third Rect initializer, init(center:size:), is slightly more complex. It starts by calculating 
//     // an appropriate origin point based on a center point and a size value. It then calls (or delegates) 
//     // to the init(origin:size:) initializer, which stores the new origin and size values in the appropriate properties:
//     init(center: Point, size: Size) {
//         let originX = center.x - (size.width / 2)
//         let originY = center.y - (size.height / 2)

//         // initializer delegation
//         self.init(origin: Point(x: originX, y: originY), size: size) // Calls the above initializer
//     }
// }

// let basicRect = Rect()
// // basicRect's origin is (0.0, 0.0) and its size is (0.0, 0.0)

// let originRect = Rect(origin: Point(x: 2.0, y: 2.0),
//                         size: Size(width: 5.0, height: 5.0))
// // originRect's origin is (2.0, 2.0) and its size is (5.0, 5.0)

// let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
// // centerRect's origin is (2.5, 2.5) and its size is (3.0, 3.0)


// // Designated initializers are the primary initializers for a class.
// // Convenience initializers are secondary, supporting initializers for a class. 


// // Designated initializers for classes are written in the same way
// // as simple initializers for value types:
// //     init(parameters) {
// //         statements
// //     }


// // Convenience initializers are written in the same style, 
// // but with the convenience modifier placed before the init 
// // keyword, separated by a space:
// //     convenience init(parameters) {
// //         statements
// //     }



// // Rule 1 - A designated initializer must call a designated 
// //          initializer from its immediate superclass.

// // Rule 2 - A convenience initializer must call another 
// //          initializer from the same class.

// // Rule 3 - A convenience initializer must ultimately call a 
// //          designated initializer.

// // Note:
// // Designated initializers must always delegate up.
// // Convenience initializers must always delegate across.




// class Vehicle2 {
//     var numberOfWheels = 0
//     var description: String {
//         return "\(numberOfWheels) wheel(s)"
//     }
// }

// class Bicycle2: Vehicle2 {
//     override init() { // designated init of sub class, override because this init() matches the superclass of Bicycle2's init (Vehicle2's init)
//         super.init() // calls the designated init of superclass: sets numberOfWheels = 0
//         numberOfWheels = 2
//     }
// }

// class Hoverboard: Vehicle2 {
//     var color: String
//     init(color: String) {
//         self.color = color
//         // super.init() implicitly called here
//     }
//     override var description: String {
//         return "\(super.description) in a beautiful \(color)"
//     }
// }


// let instanceV2 = Vehicle2()
// // print("Vehicle: \(instanceV2.description)") // prints "0 wheel(s)""

// let instanceB2 = Bicycle2()
// // calls override init in Bicycle2 which calls superclass's init
// // which sets numberOfWheels = 0
// // then sets numberOfWheels = 2
// // print("Bicycle: \(instanceB2.description)") // prints  "Bicycle: 2"

// let instanceH2 = Hoverboard(color: "Orange")
// // print("Hoverboard: \(instanceH2.description)") // prints "Hoverboard: 0 wheel(s) in a beautiful Orange


// // Automatic Initializer Inheritance
// // As mentioned above, subclasses don’t inherit their superclass initializers by default. 
// // However, superclass initializers are automatically inherited if certain conditions are met.
// // In practice, this means that you don’t need to write initializer overrides in many common scenarios,
// // and can inherit your superclass initializers with minimal effort whenever it’s safe to do so.



// // Protocols ---
// // A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
// // Syntax:

// protocol SomeProtocol {
//     // protocol definition goes here
//     var mustBeSettable: Int { get set }
//     var doesNotNeedToBeSettable: Int { get }
//     static func someTypeMethod()
// }

// protocol RandomNumberGenerator {
//     func random() -> Double
// }

// protocol AnotherProtocol {
//     static var someTypeProperty: Int { get set }
// }

// protocol FullyNamed {
//     var fullName: String { get }
// }


// // struct SomeStruct4: FirstProtocol, AnotherProtocol {
// //     // structure definition goes here
// // }

// // class SomeClass5: SomeSuperClass2, FirstProtocol, AnotherProtocol {
// //     // class definition goes here
// //}

// // Property Requirements
// // A protocol can require any conforming type to provide an 
// // instance property or type property with a particular name and type



// struct Person2: FullyNamed {
//     var fullName: String
// }
// let john = Person2(fullName: "John Appleseed")
// // print(john.fullName)

// class LinearCongruentialGenerator: RandomNumberGenerator {
//     var lastRandom = 42.0
//     let m = 139968.0
//     let a = 3877.0
//     let c = 29573.0
//     func random() -> Double {
//         lastRandom = ((lastRandom * a + c)
//             .truncatingRemainder(dividingBy: m))
//             return lastRandom / m
//     }
// }

// let generator = LinearCongruentialGenerator()
// // print(generator.random())
// // print(generator.random())

// // Mutating Method Requirements
// // It’s sometimes necessary for a method to modify (or mutate) the instance it belongs to.
// // Bonus of this protocol is that multiple functions that use a toggle can conform to this protocol
// protocol Togglable {
//     mutating func toggle()
// }

// enum OnOffSwitch: Togglable {
//     case on, off
//     mutating func toggle() {
//         switch self {
//         case .off:
//             self = .on
//         case .on:
//             self = .off
//         }
//     }
// }

// var lightSwitch = OnOffSwitch.off
// lightSwitch.toggle()
// // print(lightSwitch)
// // lightSwitch is now equal to .on

// // Initializer Requirements
// // You can implement a protocol initializer requirement on a conforming class as either a designated initializer 
// // or a convenience initializer. In both cases, you must mark the initializer implementation with the required modifier
// protocol SomeProtocol2 {
//     init(someParameter: Int)
// }




// class SomeClass6: SomeProtocol2 {
//     required init(someParameter: Int) {
//         // Initializer implementation goes here
//     }
// }

// protocol SomeProtocol3 {
//     init()
// }

// class SomeSuperClass {
//     init() {
//         // initializer implementation goes here
//     }
// }

// class SomeSubClass: SomeSuperClass, SomeProtocol3 {
//     // "required" from SomeProtocol conformance; "override" from SomeSuperClass
//     required override init() {
//         // initializer implementation goes here
//     }
// }

// // Protocols as Types
// // Protocols don’t actually implement any functionality themselves. 
// // Nonetheless, you can use protocols as a fully fledged types in your code.
// // Using a protocol as a type is sometimes called an existential type

// // here's an example of a Protocol used as a type
// class Dice {
//     let sides: Int
//     let generator: RandomNumberGenerator // Protocol as a type
//     init(sides: Int, generator: RandomNumberGenerator) {
//         self.sides = sides
//         self.generator = generator
//     }
//     func roll() -> Int {
//         return Int(generator.random() * Double(sides)) + 1
//     }
// }

// // Delegation
// // Delegation is a design pattern that enables a class or structure to hand off
// // (or delegate) some of its responsibilities to an instance of another type.
// protocol DiceGame {
//     var dice: Dice { get }
//     func play()
// }
// protocol DiceGameDelegate: AnyObject {
//     func gameDidStart(_ game: DiceGame)
//     func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
//     func gameDidEnd(_ game: DiceGame)
// }

// class SnakesAndLadders: DiceGame {
//     let finalSquare = 25
//     let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
//     var square = 0
//     var board: [Int]
//     init() {
//         board = Array(repeating: 0, count: finalSquare + 1)
//         board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//         board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//     }

//     weak var delegate: DiceGameDelegate? // initialised to nil as it is not required to play the game

//     func play() {
//         square = 0
//         delegate?.gameDidStart(self)
//         gameLoop: while square != finalSquare {
//             let diceRoll = dice.roll()
//             delegate?.game(self, didStartNewTurnWithDiceRoll: diceRoll)
//             switch square + diceRoll {
//             case finalSquare:
//                 break gameLoop
//             // I don't understand this syntax 
//             case let newSquare where newSquare > finalSquare: // defining newSwquare value syntax
//                 continue gameLoop

//             // is it equivelant to this:
//             // case square where square > finalSquare:
//             //     break gameLoop // shouldn't you end game?
//             // -----
//             default:
//                 square += diceRoll // move up on the board by diceRoll amount
//                 square += board[square] // board[square] returns 0 unless it hits a snake or ladder which takes you to another square on the board
//             }
//         }
//         delegate?.gameDidEnd(self)
//     }
// }

// class DiceGameTracker: DiceGameDelegate {
//     var numberOfTurns = 0
//     func gameDidStart(_ game: DiceGame) {
//         numberOfTurns = 0
//         if game is SnakesAndLadders {
//             print("Started a new game of Snakes and Ladders")
//         }
//         print("The game is using a \(game.dice.sides)-sided dice")
//     }
//     func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {
//         numberOfTurns += 1
//         print("Rolled a \(diceRoll)")
//     }
//     func gameDidEnd(_ game: DiceGame) {
//         print("The game lasted for \(numberOfTurns) turns")
//     }
// }

// let tracker = DiceGameTracker()
// let game = SnakesAndLadders()
// game.delegate = tracker
// // game.play()

// // var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
// // for _ in 1...5 {
// //     print("Random dice roll is \(d6.roll())")
// // }

// // Adding Protocol conformance with an extension
// // You can extend an existing type to adopt and conform to a new protocol, even if you don't 
// // have access to the source code for the existing type.
// protocol TextRepresentable {
//     var textualDescription: String { get }
// }

// extension Dice: TextRepresentable {
//     var textualDescription: String {
//         return "A \(sides)-sided dice"
//     }
// }

// let d12 = Dice(sides: 12, generator: LinearCongruentialGenerator())
// // print(d12.textualDescription)
// // Prints "A 12-sided dice"

// var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
// // print(d6.textualDescription)
// // Prints "A 6-sided dice"

// extension SnakesAndLadders: TextRepresentable {
//     var textualDescription: String {
//         return "A game of Snakes and Ladders with \(finalSquare) squares"
//     }
// }
// // print(game.textualDescription)
// // Prints "A game of Snakes and Ladders with 25 squares"

// // Conditionally conforming to a protocol
// // A generic type may be able to satisfy the requirements of a protocol
// //  only under certain conditions, such as when the 
// // type’s generic parameter conforms to the protocol.

// extension Array: TextRepresentable where Element: TextRepresentable {
//     var textualDescription: String {
//         let itemsAsText = self.map { $0.textualDescription }
//         return "[" + itemsAsText.joined(separator: ", ") + "]"
//     }
// }


// // let myDice = [d6, d12]
// // print(myDice.textualDescription)

// // Declaring Protocol Adoption with an Extension
// // f a type already conforms to all of the requirements of a protocol, 
// // but hasn’t yet stated that it adopts that protocol, 
// // you can make it adopt the protocol with an empty extension:
// struct Hamster {
//     var name: String
//     var textualDescription: String {
//         return "A hamster named \(name)"
//     }
// }
// extension Hamster: TextRepresentable {}

// // Instances of Hamster can now be used wherever TextRepresentable is the required type:
// let simonTheHamster = Hamster(name: "Simon")
// let somethingTextRepresentable: TextRepresentable = simonTheHamster
// print(somethingTextRepresentable.textualDescription)
// // Prints "A hamster named Simon"


// // Adopting a Protocol Using a Synthesized Implementation

// class Vector3D2 /*: Equatable*/ { // Why doesn't the class conform to the Equatable protocol?
//     var x = 0.0, y = 0.0, z = 0.0
//     init(x: Double, y: Double, z: Double) {
//         self.x = x
//         self.y = y
//         self.z = z
//     }
// }

// // Example Equatable: 
// //  - Structures that have only stored properties that conform to the Equatable protocol
// //  - Enumerations that have only associated types that conform to the Equatable protocol
// //  - Enumerations that have no associated types
// struct Vector3D: Equatable {
//     var x = 0.0, y = 0.0, z = 0.0
// }

// let twoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
// let anotherTwoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
// // note: == applies to structs that have the same member values
// if twoThreeFour == anotherTwoThreeFour {
//     print("These two vectors are also equivalent.")
// }
// // Prints "These two vectors are also equivalent."

// // Example Hashable:
// //  - Structures that have only stored properties that conform to the Hashable protocol
// //  - Enumerations that have only associated types that conform to the Hashable protocol
// //  - Enumerations that have no associated types


// // Collection of Protocol Types
// let things: [TextRepresentable] = [game, d12, simonTheHamster]
// // for thing in things {
// //     print(thing.textualDescription)
// // }
// // A game of Snakes and Ladders with 25 squares
// // A 12-sided dice
// // A hamster named Simon

// // extension SnakesAndLadders: PrettyTextRepresentable {
// //     var prettyTextualDescription: String {
// //         var output = textualDescription + ":\n"
// //         for index in 1...finalSquare {
// //             switch board[index] {
// //             case let ladder where ladder > 0:
// //                 output += "▲ "
// //             case let snake where snake < 0:
// //                 output += "▼ "
// //             default:
// //                 output += "○ "
// //             }
// //         }
// //         return output
// //     }
// // }

// /// ----------------------------------------------------------------------------
// // Concurrency
// // Swift has built-in support for writing asynchronous and parallel code in a structured way.
// //  listPhotos(inGallery: "Summer Vacation") { photoNames in
// //     let sortedNames = photoNames.sorted()
// //     let name = sortedNames[0]
// //     downloadPhoto(named: name) { photo in 
// //     show(photo)
// //     }
// //  }

// // Defining & Calling Asynchronous Functions
// func listPhotos(inGallery name: String) async ->
// [String] {
//     let result = ["Photo1", "Photo2"]// stuff..
//     // code ... 
//     return result
// }

// func downloadPhoto(named namedPhoto: String) async -> Bool {
//     return true
// }

// // await
// // For a function or method that’s both asynchronous and throwing, you write async before throws.
// // When calling an asynchronous method, execution suspends until that method returns. 
// // You write await in front of the call to mark the possible suspension point.

// // async
// // To indicate that a function or method is asynchronous, you write the async keyword in its declaration
// // after its parameters, similar to how you use throws to mark a throwing function. 



// // let photoNames = await listPhotos(inGallery: "Summer Vacation")
// // let sortedNames = photoNames.sorted()
// // let name = sortedNames[0]
// // let photo = await downloadPhoto(named: name)
// // show(photo)


// // func funcHello() async -> String {
// //     return "Hello"
// // }

// // let hello = await "Hello"
// // // print("Hello")

// // let hello = await funcHello() 


// /// Associated Types ----
// // An associated type gives a placeholder name to a type that’s used as part of the protocol.
// // When defining a protocol its sometimes useful to declare one 
// //or more associated types as part of the protocols definition


// // Here's an example of a protocol called Container that defines an associated type called Item
// // protocol Container {
// //     associatedtype Item
// //     mutating func append(_ item: Item)
// //     var count: Int { get }
// //     subscript(i: Int) -> Item { get }
// // }

// // protocol randomProtocol {
// //     associatedtype myVariable: Int where 
// // }

// // struct IntStack: Contaier {
// //     // original IntStack implementation
// //     var Items: [Int]
// //     mutating func push(_ item: Item) {
// //         Items.append(item)
// //     }
    
// //     mutating func pop() {
// //         Items.removeLast()
// //     }

// //     // Conformance to the Container protocol
// //     typealias Item = Int

// //     var count: Int {
// //         return Items.count
// //     }

// //     subscript(i: Int) -> Int {
// //         return items[i]
// //     }
// // }

// // It is possible to append to Item
// // It is possible to get the Count of Item through the count property within the Container that returns an Int
// // It is possible to retrieve each item in the Container with a subscript that takes in an index value


// // This protocol doesn’t specify how the items in the container should be stored 
// // or what type they’re allowed to be. The protocol only specifies the three bits of 
// // functionality that any type must provide in order to be considered a Container
// // A conforming type can provide additional functionality,
// // as long as it satisfies these three requirements.



// /// Adding Constaints to an associated type// In this protocol, 
// // Suffix is an associated type, like the Item type in the Appendable 
// // example above. Suffix has two constraints: It must conform to the SuffixableContainer
// // protocol (the protocol currently being defined) => "This is known as a Concept", 
// // and its Item type must be the same as the Appendable's Item type.
// // The constraint on Item is a generic where clause
// protocol Appendable {
//     associatedtype Item
//     // associatedtype Item = String
//     mutating func append(_ item: Item/* Item is our associated type*/)
// }

// // Concept => Where you have your associated type the same type as your protocol?
// // protocol SuffixableContainer: Appendable {
// //     associatedtype Suffix: SuffixableContainer
// //     where Suffix.Item == Item
// // }

// // A concept 'A'
// protocol A {}

// // A concept 'B'
// protocol B: A {}

// // A realisation of concept 'B'.
// struct S: B {}

// /// A test that relies on concept 'A'. and it never relies on a realisation
// // func test<T: A>(t: A) {}

// // // We can call the test with a realisation of B, because the concept B conforms to the concept A.
// // // The test uses the realisation s in order for it to test something. And that realisation is also a realisation of Concept A (because B conforms to A)
// // let s = S()
// // test(t: s)



// // // I can create a concept that depends or constrains other concepts.
// // protocol C {

// //     // You have an associated type Z which 
// //     // Concept C depends on the Associated Type Z (like a sibling relationship) which is constrained so that is must conform to A
// //     // Constrain (is general) => (Z == A or Z == Int etc.) or Z: A
// //     // Conformance => Z: A (A is the parent of Z)
    
// //     associatedtype Z: A

// //     var x: Z { get }

// // }

// // A realisation of C, and C requires a variable x that matches the constraint defined by Z
// // Z is a type that must conform to A
// // S is a realisation of B, and B conforms to A
// // Therefore the type of x can be S
// // struct S2: C {

// //     // 
// //     var x: S = S()

// // }

// // struct S2: C {

// //     /// A variable.
// //     private var _x: S

// //     var x: S {
// //         get {
// //             _x
// //         } set {
// //             _x = newValue
// //         }
// //     }

// //     init(x: S) {
// //         var y = 2 // There is no getter and setter for this guy...
// //         self._x = x
// //     }

// // }

// // // I depend on concept C, but I constrain it to only C's that work with B's.
// // func test2<T: C>)(t: T) where T.Z: B {
// // }

// // // We can call test2 with our new realisation.
// // test2(t: S2())

// // protocol P {}

// // struct SP: P {}

// // struct S3 {

// //     var p: P

// //     init() {
// //         self.p = SP()
// //     }

// // }





// // extension Array where Self.Element == Int {

// //     func firstIndex2(of element: Int) -> Int? {
// //         _firstIndex(of: element, startingAt: 0)
// //     }

// //     func _firstIndex(of element: Int, startingAt index: Int) -> Int? {
// //         if index >= self.count {
// //             return nil
// //         } else if self[index] == element {
// //             return index
// //         } else {
// //             return _firstIndex(of: element, startingAt: index + 1)
// //         }
// //     }

// //     func grouped(by: (Int, Int) -> Bool) -> [[Int]] {
// //         _grouped(by: by, array: [], startingAt: 0)
// //     }

// //     func _grouped(by: (Int, Int) -> Bool, array: Collection, startingAt index: Int) -> [Int] {

// //         if index <= self.count {
// //         }
// //         if by(self[index], self[index+1]) {
// //             array.append(contentsOf: [self[index], self[index+1]])
// //         }
// //         else if !by(self[index], self[index+1]) {
// //             array.append([])
// //         }
// //     }

// //     // func adjacentEqual(p1: Int, p2: Int) -> Bool {
// //     //     return p1 == p2
// //     // }

// // }

// // let arrTest = [1, 1, 2, 3, 1, 1]
// // let result = arrTest.grouped { $0 == $1 }
// // expected = [[1,1], [2], [3], [1,1]]

// // No variables
// // No loops


// // let arrTest = [1, 2, 3, 4, 5, 6]
// // let result = arrTest.firstIndex2(of: 6)
// // print(result)
// // expected result = 3
// // -----------------------------------------------------------------------------
// // Generics


// /// Non generic Swap two ints function
// /// 
// /// - Parameter a: Int value
// /// - Parameter b: Int value
// /// Note: Function does not have a return type, innout parameters are an alternative
// /// way for a function to modify/have an effect outside of its scope.
// /// Question: why inout parameter syntax is memory address and not just normal variables 
// /// Answer: innout parameters are always vars, whereas a normal parameter is a let constant or a literal
// /// you cannot modify a literal.
// /// you place an & to indicate the variable paremeter (innout) can be modified by the function.
// func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//     let temporaryA = a
//     a = b
//     b = temporaryA
// }

// // Compile time error.
// // func swapTwoInts2(_ a: Int, _ b: Int) {
// //     let temporaryA = a
// //     a = b
// //     b = temporaryA
// // }


// var someInt = 3
// var anotherInt = 4
// swapTwoInts(a: &someInt, b: &anotherInt)


// /// Generic swap function which swaps two values.
// /// In swapTwoValues, T is a place holder for the type. It does not specify what
// /// the type of T is. T is determined when swapTwoValues function is called.
// /// 
// /// - Parameter a: Generic variable 
// /// - Parameter b: Generic variable 
// func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
//     let temporaryA = a
//     a = b
//     b = temporaryA
// }

// var a = 1.0
// var b = 2.0

// swapTwoValues(&a, &b)
// // print(a)
// // print(b)



// // swapTwoValues(&someInt, &anotherInt)
// // print(someInt)
// // print(anotherInt)

// // var someString = "Hello"
// // var anotherString = "Goodbye"
// // swapTwoValues(&someString, &anotherString)
// // print(someString)
// // print(anotherString)


// someInt = 1
// anotherInt = 2
// swap(&someInt, &anotherInt) // Swift's standard library swap function
// // print(someInt)
// // print(anotherInt)

// /// Type Parameters (<T>)
// /// Type parameters are a placeholder of a type for a function.
// /// syntax is immediately after the functions name eg: someFunc<T>( ... )
// /// Once specified you can use T to specify the parameters passed into the function.
// /// Type T parameter is replaced by an actual type when called.


// /// Generic types are types such as classes, structs, enums that can work with any type
// struct Stack {

//     var stackArray: [Int] = []

//     mutating func push(_ item: Int) {
//         self.stackArray.append(item)
//     }

//     mutating func pop() {
//         self.stackArray.removeLast()
//     }
// }


// var stackInstance = Stack()
// // print(stackInstance.stackArray)

// stackInstance.push(5)
// stackInstance.push(4)
// // print(stackInstance.stackArray)

// stackInstance.pop()
// // print(stackInstance.stackArray)


// /// Great now currently the Stack struct has an array which can only contain type Ints.
// /// How can we make this more generic to take any type?
// /// Answer:


// struct Stack2<T>{
//     var stackArray: [T] = []
//     mutating func push(_ item: T) {
//         self.stackArray.append(item)
//     }
//     mutating func pop() -> T {
//         return self.stackArray.removeLast()
//     }
// }

// // note you have to specify the type parameters real type when the struct is instantiated
// var stackInstance2 = Stack2<Any>()
// stackInstance2.push("Hello")
// stackInstance2.push("goodbye")
// stackInstance2.push(2)
// print(stackInstance2.stackArray)

// print(stackInstance2.pop())
// // print(stackInstance2.stackArray)


// /// Type Constraint Syntax
// // func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
// //     // function body goes here
// // }
 

// // struct SomeStruct5<T, U, V, ...>: SomeProtocol, ... where T.property == SomeUnit... {
// //     code ...
// // }



// /// Extending a generic type
// // when you extend a generic type, you don't provide the type parameter list of the extension's
// // definition. The type parameter list from the original type definition is already available to you in the body of the extension
// // and the original type parameter names are used to refer to the type parameters from the original type defintion.

// extension Stack2 {
//     var topItem: T? {
//         // return self.stackArray.isEmpty ? nil : stackArray[stackArray.count - 1] 
//         return self.stackArray.last ?? nil
//     }
// }

// // Why does this return an optional and not the unwrapped optional value? ------------------------------------------------------------------------------------------------
// print(stackInstance2.topItem)
// // Output: Optional("goodbye")
// // Expected: "goodbye"

// /// Type Constraints
// // We've demonstrated that generic functions, generic types can work with any types
// // however, it sometimes we would like to enforce type constraints to the type parameters.
// // Constraints specify that a type parameter must inherit from a specific class, or conform to a particular protocol
// // or protocol composition.

// struct GenericGridPoint {

//     // Stored variables
//     private var _x: Int
//     private var _y: Int

//     // Computed Properties
//     var x: Int {
//         get {
//             return _x
//         }
//         set {
//             _x = newValue
//         }
//     }

//     var y: Int {
//         get {
//             return _x
//         }
//         set {
//             _x = newValue
//         }
//     }

//     init(_ x: Int, _ y: Int) {
//         self._x = x
//         self._y = y
//     }

// }

// extension GenericGridPoint: Hashable {
//     // Hashable conforms to Equatable.
//     // Equatable Protocol requirement: ==(_:_: ... ) "Returns a boolean value indicating whether two values are equal."
//     static func == (lhs: GenericGridPoint, rhs: GenericGridPoint) -> Bool {
//         return lhs.x == rhs.x && lhs.y == rhs.y
//     }

//     func hash(into hasher: inout Hasher) {
//         hasher.combine(x)
//         hasher.combine(y)
//     }

// }

// // print(func == (2, 2)) ??
// // var p1 = GenericGridPoint(1, 2)
// // print(p1.x) // 1


// // In the Equatable Protocol, what is the syntax of func == (_:_:) and why can I not use it in normal Swift code?
// // In Hashable, Why do we want to conform a type to the Hashable protocol? My understanding of Hashing that is is a custom function used to map data of an arbitrary size to a fixed size. So what is an example of using Hashing for a struct?



// //String type findIndex function
// // func findIndex(ofString valueToFind: String, inArray: [String]) -> Int? {
// //     for (index, value) in inArray.enumerated() where valueToFind == value { return index }
// //     return nil
// // }

// // Generic type findIndex function
// // Note compiletime error: "valueToFind == value", valueToFind must conform to Equatable because 
// // not all T types can be compared with the equal to operator (==) and the not equal to (!=).
// // Because of this, it isn't guaranteed that this code will work for every possible T type.
// // func findIndex<T>(ofValue valueToFind: T, inArray: [T]) -> Int? {
// //     for (index, value) in inArray.enumerated() where valueToFind == value { return index }
// //     return nil
// // }


// // Solution: implement a constraint to the type parameter to make it Equatable.
// func findIndex<T: Equatable>(ofValue valueToFind: T, inArray: [T]) -> Int? {
//     for (index, value) in inArray.enumerated() where valueToFind == value { return index }
//     return nil
// }

// /// AssociatedTypes
// ///  An associated type is a Type place holder for a property in a protocol.
// /// The real type isn't specified until the protocol is adopted by a realisation.
// /// Associated types are specified with the addociatedtype keyword.

// protocol Container {
//     associatedtype Item
//     // Must be possible to add a new item to the item Container
//     mutating func append(_ item: Item)
//     // Must be possible to get the count of the items in the container
//     var count: Int { get }
//     // Must be possible to retrieve an item via specifying an index i from the container
//     subscript(index: Int) -> Item { get }
// }


// struct Stack3<T>: Container {

//     var items: [T] = []
//     mutating func push(_ item: T) {
//         self.items.append(item)
//     }
//     mutating func pop() -> T?{
//         return self.items.removeLast()
//     }

//     // Protocol conformance
//     typealias Item = T

//     var count: Int {
//         self.items.count
//     }

//     mutating func append(_ item: Item) {
//         push(item)
//     }

//         subscript(index: Int) -> Item {
//             return items[index]
//     }
// }

// var stackInstance3 = Stack3<Any>()
// // Test append String type
// stackInstance3.append("Hi")
// // Test to append Int type
// stackInstance3.append(4)
// // Test to append Double type
// stackInstance3.append(7.5)
// // Test pop // output Oprtional(7.5)
// // print(stackInstance3.pop())
// // Test property count of instance
// // print(stackInstance3.count) // output 2
// // Test subscript of instance
// // print(stackInstance3[1])// output "4"
// // Check type
// // print(type(of: stackInstance3)) // output Stack3<Any>

// protocol SuffixableContainer: Container {
//     // Suffix is an associatedtype which conforms to the protocol its currently defined in
//     // the associatedtype is constrained by the where clause which specifies the Suffix.Item of the SuffixContainer is the same type
//     // as the Item defined in Container.
//     associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
//     func suffix(_ size: Int) -> Suffix
// }

// /// An example of adding an extension conforming to a protocol with type constraints on the associatedtype.
// extension Stack3: SuffixableContainer {
//     func suffix(_ size: Int) -> Stack3 {
//         var result = Stack3()
//         for index in (count-size)..<count {
//             result.append(self[index])
//         }
//         return result
//     }

// }

// var stackOfInts = Stack3<Int>()
// stackOfInts.append(10)
// stackOfInts.append(20)
// stackOfInts.append(30)

// // print(stackOfInts)

// // let suffix = stackOfInts.suffix(2)
// // print(suffix)


// struct AllItemsMatch<C1: Container, C2: Container> 
// where C1.Item == C2.Item, C1.Item: Equatable {

//         let someContainer: C1
//         let anotherContainer: C2

//         var matchingCount: Bool {
//             someContainer.count == anotherContainer.count
//         }

//         var checkEachPaiOfItems: Bool {
//             for i in 0..<someContainer.count where someContainer[i] != anotherContainer[i] { return false }
//             return true
//         }

//         init(someContainer: C1, anotherContainer: C2) {
//             self.someContainer = someContainer
//             self.anotherContainer = anotherContainer
//         }
// }


// var someContainer = Stack3(items: [1, "String", 3, 4])
// var anotherContainer = Stack3(items: [1, 2, "String", 4])
// var anotherAnotherContainer = Stack3(items: 
//                                                     [Stack2(stackArray: [1]),
//                                                      Stack2(stackArray: [2]),
//                                                      Stack2(stackArray: [3])]
//                                                 )

// // let instance1 = AllItemsMatch(someContainer: someContainer, anotherContainer: anotherContainer)
// // error for instance2, someContainer and anotherContainer must have the same type and some container must be equatable
// // let instance2 = AllItemsMatch(someContainer: someContainer, anotherContainer: anotherAnotherContainer)

// // error someContainer and anotherContainer are not the same type
// // let instance3 = AllItemsMatch(someContainer: someContainer, anotherContainer: anotherAnotherContainer)

// // print(instance1.matchingCount)
// // print(instance1.checkEachPaiOfItems)

// extension Stack3 where T: Equatable {
//     func isTop(_ item: T) -> Bool {
//         guard let topItem = self.items.last else { return false }
//         return topItem == item
//     }
// }


// let stackInstance4 = Stack3(items: [1, 2, 3, 4])
// // print(stackInstance4.isTop(4))// true
// // print(stackInstance4.isTop(3))// false


// extension Container where Item: Equatable{

//     func startsWith(_ item: Item) -> Bool {
//         return count > 1 && self[0] == item
//     }
// }

// extension Container where Item == Double {
//     func average() -> Item {
//         var sum: Double = 0.0
//         for i in 0..<count {
//             sum += self[i]
//         }
//         return sum / Double(count)
//     }
// }


// extension Array: Container { }
// // print([9, 9, 9].startsWith(42)) // false
// // print([42, 9, 9].startsWith(42)) // true
// // print([9.0, 9.0, 9.0].average())

// // ---------------------------
// /// Extensions
// /// Extensions are a way to add further functionality to an existing class,
// /// structure, enumeration or protocol type. Even without having access to the
// /// source code.
// /// 
// /// Syntax.
//     // extension SomeType {
//     //     // new functionality to add to SomeType goes here
//     // }

//     // Adding Protocol Conformance with an Extension
//     // extension SomeType: SomeProtocol, AnotherProtocol {
//     //     // implementation of protocol requirements goes here
//     // }

// // Adding computed properties to a Double via an Extension.
// extension Double {
//     var ft: Double { return self / 3.28084 }
//     var mm: Double { return self / 1000.0 }
//     var cm: Double { return self / 100.0 }
//     var m: Double { return self }
//     var km: Double { return self * 100.0 }
// }
// // print(24.1.km) // 2410.0

// /// Initializers
// /// Extensions can add additional convinience initializers (secondary initializers)
// /// that were not specified in the original type but not designatied initializers
// /// (primary initializers of a type)

// extension Int {
//     subscript(digitIndex: Int) -> Int {
//         var decimalBase = 1
//         for _ in 0..<digitIndex {
//             decimalBase *= 10
//         }
//         print(decimalBase)
//         return (self / decimalBase) % 10
//     }
// }

// // print(1234[1])
// // print(1234[0])
// // print(1200[0])
// // print(1200[1])
// // print(1200[2])
// // print(1200[3])

// // print(100[0]) // decimalBase = 1
// // 100 / 1 % 10 = 0

// // print(100[1]) // decimalBase = 10
// // print((100 / 10) % 10)
// // 100 / 10 % 10 = 0

// // print(100[2]) // decimalBase = 100
// // 100 / 100 % 10 = 1

// // Nested Types ---
// extension Int {
//     enum Kind {
//         case negative, zero, positive
//     }
//     var kind: Kind {
//         switch self {
//             case 0:
//                 return .zero
//             case let x where x > 0:
//             return .positive
//         default:
//             return .negative
//         }
//     }
// }

// // print(4.kind) // positive
// // print(0.kind) // zero
// // let value = -4
// // print((-4).kind) // negative

// /// Deinit
// // A Deinit is called immediately after a class instance is deallocated.
// // For a struct, you can make copies of it. So when the original struct is "freed"
// // There is no way of telling whether the instance was the last copy Therefore, 
// // you cannot have a deinit.
// class Bank {
//     static var coinsInBank = 10_000
//     static func distribute(coins numberOfCoinsRequested: Int) -> Int {
//         let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
//         coinsInBank -= numberOfCoinsToVend
//         return numberOfCoinsToVend
//     }
//     static func recieve(coins: Int) {
//         coinsInBank += coins
//     }
// }


// class Player1 {
//     var coinsInPurse: Int

//     init(coins: Int) {
//         coinsInPurse = Bank.distribute(coins: coins)
//     }

//     func win(coins: Int) {
//         coinsInPurse += Bank.distribute(coins: coins)
//     }

//     deinit {
//         print("Player is killed. Coins returned to the bank.")
//         Bank.recieve(coins: coinsInPurse)
//     }
// }

// // print(Bank.coinsInBank) // 10_000
// // var playerOne: Player1? = Player1(coins: 100)
// // // print(playerOne!.coinsInPurse)
// // print(Bank.coinsInBank) // 9_900

// // playerOne!.win(coins: 2_000)
// // print(playerOne!.coinsInPurse) // 2100

// // playerOne = nil
// // print(Bank.coinsInBank) // 10_000


// // -----------------------------------------------------------------------------
// /// Optional Chaining
// // Optional chaining is a process for querying and calling properties, methods,
// // and subscripts on an optional that might currently be nil.
// // ! => Forced unwrap and returns run-time error when value is nil
// // ? => "Gracefully" unwraps optional and returns compile-time error when value is nil
// // See example below

// struct Person3 {
//     var residence: Residence2?
// }

// struct Residence {
//     var numberOfRooms = 1
// }

// // var johnny = Person3()

// // print(johnny.residence?.numberOFRooms) // compile time error
// // print(johnny.residence!.numberOFRooms) // run time error

// // johnny.residence.numberOFRooms returns value of type Int?

// // johnny.residence = Residence()

// // print(johnny.residence?.numberOFRooms)

// // if let v = johnny.residence?.numberOFRooms {
// //     print(v)
// // }


// // Defining Model Classes for Optional Chaining ---
// struct Room {
//     let name: String
//     init(name: String) { self.name = name }
// }

// // struct Residence2 {
// //     var rooms: [Room] = []
// //     var numberOfRooms: Int { return rooms.count }
// //     subscript(i: Int) -> Room {
// //         get {
// //             return rooms[i]
// //         }
// //         set {
// //             rooms[i] = newValue
// //         }
// //     }
// //     var address: Address?
// //     func printNumberOfRooms() {
// //         print("The number of Rooms are \(numberOfRooms)")
// //     }
// // }

// struct Address {
//     var buildingName: String?
//     var buildingNumber: String?
//     var street: String?
//     func buildingIdentifier() -> String? {
//         if let buildingNumber = buildingNumber, let street = street {
//             return ("\(buildingNumber), \(street)")
//         } else if buildingName != nil {
//             return buildingName
//         } else {
//             return nil
//         }
//     }
// }


// var harold = Person3()
// harold.residence = Residence2()
// harold.residence?.printNumberOfRooms()

// // var rooms: [Room]

// // Note you are trying to initialize a variable prior to the ..
// // Question: If rooms is being initialized prior to numberOfRooms
// // lazy var numberOfRooms = rooms.count
// struct Residence2 {
//     // var rooms: [Room]
//     // var numberOfRooms: Int

//     // // This:
//     // init() {
//     //     self.rooms = []
//     //     self.numberOfRooms = self.rooms.count
//     // }

//     // is equal to this:
//     var rooms: [Room] = []
//     // var numberOfRooms = self.rooms.count // self is not defined because init() gets called after the stored properties are defined

//     // This is an error because the stored properties that are calling self are being assigned.before self is initialised.
//     // self gets initialised after the stored properties of a struct are defined.

//     func printNumberOfRooms() -> Int {
//         return rooms.count
//     }

//     subscript(i: Int) -> Room {
//         get {
//             return rooms[i]
//         }
//         set {
//             rooms[i] = newValue
//         }
//     }
//     var address: Address?
// }








// // Accessing Properties Through Optional Chaining ---
// // var johnny2 = Person3()
// // johnny2.residence = Residence2()

// // if let residence = johnny2.residence {
// //     print(residence)
// // } else {
// //     print("Unable To Retrieve Residence.")
// // }




// /// Calling Methods Through Optional Chaining ---
// // if (johnny2.residence?.address = someAddress) != nil {
// //     print("It was possible to set the address.")
// // } else {
// //     print("It ws not possible to set the address.")
// // }

// // print(johnny2.residence?.address)

// var johnny2 = Person3()
// johnny2.residence = Residence2()
// var someAddress = Address()
// someAddress.street = "123StreetSt"
// johnny2.residence?.address = someAddress // Linking multiple levels of chaining

// // retrieve an Int through multiple optional chains, however the end result is an optional
// // if let johnsStreet = johnny2.residence?.address?.street { // unwrapped optional
// //     print("Johnny2's street name is \(johnsStreet)")
// // } else {
// //     print("Unable to retrieve the address.")
// // }

// // let johnsStreet = johnny2.residence?.address?.street 
// // print(johnsStreet) // optional




// // Notes: Optional Chaining
// // ! force unwraps an optional in a chain, if used and optional returns nil => run-time error
// // ? gracefully unwraps an optional in a chain, if used and optional returns nil => compile-time error
// // An optional in a type instantiates to nil if declared but not defined.
// // Methods in a struct can return return optional types. 
// // To call a propertty from an optional chain: x.y?.z?.q (where y and z properties are optionals). Also utilise it in an if let statement:
// //      if let value = x.y?.z?.g {
//         // do something
// //      } else {
//         // do something else
// //      }

// // To call a method from an optional chain: x.y?.z?.func() (where y and z properties are optionals)
// //      if x.y?.z?.func() != nil {
//         // do something
// //      } else {
//         // do something else
// // }

// // To access optional chains through subscripts, make sure the optional unwrapper(?) comes before the subscript: x.y.z?[0].name Or x.y.z?[0]
// // Linking multiple levels of chaining:
// //  - Returning a non-optional type through an optional chain will automatically return the return type as an optional
// //  - Returning an optional type through an optional chain will only return an optional type (not become a more optional due to chaining)


// /// Error Handling -------------------------------------------------------------
// enum VendingMachineError: Error {
//     case invalidSelection
//     case insufficientFunds(coinsNeeded: Int)
//     case outOfStock
// }

// // throw VendingMachineError.insufficientFunds(coinsNeeded: 5) // run time error

// /// Handling Errors: there are 4 ways to handle errors in Swift.
// //      1. You can propagate the error from a function to the code that calls that function. (// And handle it as a do catch or optional value) - func() throws { try ... }
// //      2. Handle the error using a do-catch statement. - do { } catch ... { } catch { }
// //      3. Handle the error as an optional value - try?
// //      4. Assert that the error will not occur (questionable) - try!

// /// Propagating Errors Using Throwing Functions
// // func canThrowErrors() throws -> String
// // func cannotThrowErrors() -> String

// // Anything value types other than "Most" collections you instantiate in a function is stored on the stack



// enum MyErrors: Error {
//     case invalidNumber
//     case numberLessThanZero
//     case numberIsNotWorthy
//     case numberIsAString
// }

// // Lewis' Architecture ---------------------------------------------------------
// // protocol ThrowsAnError {

// //     func throwAnError() throws
// // }

// // struct StructThatThrowsAnError<T> {

// //     var number: T

// // }

// // extension StructThatThrowsAnError where T: ThrowsAnError {
// //     func checkNumber() throws {
// //         try number.throwAnError()
// //         print("Number passed tests!")
// //     }
// // }

// // extension Int: ThrowsAnError {
// //     func throwAnError() throws {
// //         if self < 0 { throw MyErrors.numberLessThanZero }
// //         if self != 7 { throw MyErrors.numberIsNotWorthy }
// //     }
// // }

// // extension Double: ThrowsAnError {
// //     func throwAnError() throws {
// //         if self < 0 { throw MyErrors.numberLessThanZero }
// //         if self != 7.0 { throw MyErrors.numberIsNotWorthy }
// //     }
// // }

// // extension String: ThrowsAnError {
// //     func throwAnError() throws {
// //         throw MyErrors.numberIsAString
// //     }
// // }

// // var randomY = StructThatThrowsAnError(number: 5.0)
// // try randomY.checkNumber()

// /// Karan's Architecture ------------------------------------------------------
// // protocol ChecknumberProtocolForString {

// //     func checkNumber() throws
// // }

// // protocol CheckNumberProtocolForInt {

// //     func checkNumber() throws
// // }


// // struct StructThatThrowsAnError<T> {
// //     var number: T
// // }

// // extension StructThatThrowsAnError: CheckNumberProtocolForInt where T: BinaryInteger {

// //     func checkNumber() throws {
// //         if number < 0 {
// //             throw MyErrors.numberLessThanZero
// //         }

// //         if number != 7 {
// //             throw MyErrors.numberIsNotWorthy
// //         }
// //         print("Number passed tests!")
// //     }
// // }

// // extension StructThatThrowsAnError: CheckNumberProtocolForString where T: StringProtocol {

// //     func checkNumber() throws {
// //         throw MyErrors.numberIsAString
// //     }
// // }

// // var randomY = StructThatThrowsAnError(number: 5.0)
// // try randomY.checkNumber()

// // Callum's Architecture -------------------------------------------------------
// protocol CheckNumProtocol {

//     func checkNumber() throws
// }

// struct StructThatThrowsAnError<T> {

//     var number: T

// }

// extension StructThatThrowsAnError: CheckNumProtocol where T: CheckNumProtocol {

//     func checkNumber() throws {
//         try number.checkNumber()
//     }

// }

// extension Int: CheckNumProtocol {

//     func checkNumber() throws {
//         if self < 0 {
//             throw MyErrors.numberLessThanZero
//         }
//         if self != 7 {
//             throw MyErrors.numberIsNotWorthy
//         }
//     }

// }

// extension String: CheckNumProtocol {

//     func checkNumber() throws {
//         throw MyErrors.numberIsAString
//     }

// }

// // var randomY = StructThatThrowsAnError(number: 5.0)
// // try randomY.checkNumber()
// // -----------------------------------------------------------------------------
// // Handling errors using do Catch
// /*
// do {
//     try expression
//     statements
// } catch pattern1 {
//     statements
// } catch pattern 2 where condition {
//     statments
// } catch pattern3, pattern4 where condition {
//     statments
// } catch {
//     statements
// }
// */
// var randomY = StructThatThrowsAnError(number: "5.0")

// do {
//     try randomY.checkNumber()
// } catch MyErrors.numberIsAString {
//     print("The number needs to be a type that conforms to Binary Integer.")
// } catch MyErrors.numberLessThanZero {
//     print("The number must be geater than or equal to zero.")
// } catch MyErrors.numberIsNotWorthy {
//     print("The number must be 7.")
// } catch {
//     print("Unexpected Error: \(error).")
// }


// // Convertin Errors to Optional Values ---
// func someThrowingFunction() throws -> Int  {
//     throw MyErrors.numberIsNotWorthy
// }

// // This:
// // let x = try? someThrowingFunction() // x returns nil if error is thrown in function and propagated up
// // print(x)

// // // is equal to this:
// // let y: Int?
// // do {
// //     y = try someThrowingFunction()
// // } catch {
// //     y = nil
// // }
// // print(x)
// // print(y)


// // Disabling Error Propagation ---
// // let z = try! someThrowingFunction()

// /// What you need to know aboout error handling
// // let error1 = try someThrowingFunction()     // throws a run time error which propagates out of function scope
// // let error2 = try? someThrowingFunction()    // throw a run time erro then converts to optional
// // let error3 = try! someThrowingFunction()    // Asserts that error propagation is disabled

// // Do catch error handling
// // do {
// //     try someThrowingFunction()
// // } catch MyErrors.numberIsNotWorthy {
// //     print("Number is Not worthy catch.")
// // } catch {
// //     print("some unexpected error.")
// // }

// // Specifying Cleanup Actions
// // A defer is a block of code that is executed when leaving the scope (i.e At function return)
// // defer { }


// /// Type Casting ---------------------------------------------------------------
// // Type casting is a way to check the type of an instance. (Use of is & as operators)

// protocol RandomProtocol {

//     var variableY: Int { get }
// }

// struct RandomStruct: RandomProtocol {

//     var variableY: Int = 0
// }

// let randomX = RandomStruct()

// // Checking for protocol conformance ---
// // print(randomX is RandomProtocol)    // returns true => is returns true if an instance conforms to a protocol (any if there is an associated type in the protocol.)
// // print(randomX as? RandomProtocol)   // return optional value of protocols type if instance conforms to protocol, nil if instance does not conform to a protocol.
// // print(randomX as! any Container)    // Force a downcasr to the protocol type and triggers a run time error if downcast doesn't succeed.
// // ----

// // is: a type checker that returns true if the type is the same (type checker
// let x = 4
// // print(x is Int) // true

// // Downcasting
// // A constant or variable of a class may have a reference to a subclass, thus to 
// // cast it as the subclass, you can try to downcast it. (Note: Downcasting can fail)

// // as? - will execute a try? on a downcast (as) and return an optional if downcast was successful.  nil if downcast returned an error.
// // as! - Force downcasts and force-unwraps the result, will return unwrapped value or run time error if downcast was un-successful.


// // Nested Types ----------------------------------------------------------------
// struct s1 {

//     var instanceS2 = s2()

//     struct s2 {
//         var num: Int = 1
//     }


// }


// let instance4 = s1()
// // print(instance4.instanceS2.num) // 1

// // -----------------------------------------------------------------------------
// /// Opaque Types - A function or method with an opaque return type hides its return value’s type information.
// protocol Shape: Equatable {
//     func draw() -> String
// }

// struct Triangle: Shape {
//     var size: Int
//     func draw() -> String {
//         var result: [String] = []
//         for length in 1...size {
//             result.append(String(repeating: "*", count: length))
//         }
//         return result.joined(separator: "\n")
//     }
// }

// struct FlippedShape<T: Shape>: Shape {
//     var shape: T
//     func draw() -> String {
//         let lines = shape.draw().split(separator: "\n")
//         return lines.reversed().joined(separator: "\n")
//     }
// }

// struct JoinedShape<T: Shape, U: Shape>: Shape {
//     var top: T
//     var bottom: U
//     func draw() -> String {
//         return top.draw() + "\n" + bottom.draw()
//     }
// }

// let triangle = Triangle(size: 3)
// let flippedTriangle = FlippedShape(shape: triangle)
// // let joinedTriangle = JoinedShape(top: triangle, bottom: flippedTriangle)
// // print(triangle.draw())
// // print("\n")
// // print(FlippedShape(shape: triangle).draw())
// // print("\n")
// // print(joinedTriangle.draw())

// // some Shape hides the types used in implementation
// func joinedTriangleFunction<T, U>(top: T, bottom: U) -> some Shape {
//     return JoinedShape(top: triangle, bottom: flippedTriangle)
// }


// // Note the type is some Shape which is a type that conforms to shape
// let joinedTriangle = joinedTriangleFunction(top: triangle, bottom: flippedTriangle)
// // print(joinedTriangle.draw())

// // The joinedTrianlgeFunction function in this example declares its return type as some Shape;
// // as a result, the function returns a value of some given type that conforms to the Shape protocol,
// // without specifying any particular concrete type.

// // Writing joinedTriangleFunction() this way lets it express the fundamental aspect of its 
// // public interface—the value it returns is a shape—without making the specific types that the shape 
// // is made from a part of its public interface.

// // This implementation uses two triangles and a square, but the function could be rewritten to
// // draw a trapezoid in a variety of other ways without changing its return type.


// // Combining opaque return types with generics ---
// // func flip<T: Shape>(_ shape: T) -> some Shape {
// //     return FlippedShape(shape: shape)
// // }

// func join<T: Shape, U: Shape>(_ top: T, _ bottom: U) -> some Shape {
//     JoinedShape(top: top, bottom: bottom)
// }

// let opaqueJoinedTriangles = join(Triangle(size: 3), flip(Triangle(size: 3)))
// // print(opaqueJoinedTriangles.draw())

// // If a function with an opaque return type returns from multiple places. 
// // The value that is returned must have the 

// func `repeat`<T: Shape>(shape: T, count: Int) -> some Collection {
//     return Array<T>(repeating: shape, count: count)
// }


// func flip<T: Shape>(_ shape: T) -> some Shape {
//     return FlippedShape(shape: shape)
// }

// // func protoFlip<T: Shape>(_ shape: T) -> Shape {
// //     return FlippedShape(shape: shape)
// // }


// // Differences Between Opaque Types and Protocol Types ---
// struct Square: Shape {
//     var size: Int
//     func draw() -> String {
//         let line = String(repeating: "*", count: size)
//         let result = Array<String>(repeating: line, count: size)
//         return result.joined(separator: "\n")
//     }
// }

// // Unlike flip(_:), the value that protoFlip(_:) returns isn’t required to always have the same type
// // —it just has to conform to the Shape protocol.
// // protoFlip(_:) makes a much looser API contract with its caller than flip(_:).
// func protoFlip<T: Shape>(_ shape: T) -> any Shape {
//     if shape is Square {
//         return shape
//     }

//     return FlippedShape(shape: shape)
// }

// func invalidFlip<T: Shape>(_ shape: T) -> some Shape {
//     // if shape is Square {
//     //     return shape // Error: return types don't match
//     // }

//     // if shape is Square {
//     //     return JoinedShape(top: shape, bottom: shape) // Error: return types don't match
//     // }

//     if shape is Square {
//         return FlippedShape(shape: shape)
//     }

//     return FlippedShape(shape: shape) // Error: return types don't match
// }


// let smallTriangle = Triangle(size: 3)
// let protoFlippedTriangle: any Shape = protoFlip(smallTriangle)
// let sameThing: any Shape = protoFlip(smallTriangle)
// // protoFlippedTriangle == sameThing

// // func compareShapes<T: Shape, U: Shape>(shape1: T, shape2: U) -> Bool where T == U {
// //     shape1 == shape2
// // }

// // compareShapes(shape1: smallTriangle, shape2: smallTriangle)

// // protocol P: Equatable {

// // }

// // struct S: P {}

// // struct O: P {}

// // let a: any P = S()
// // var b: any P = a
// // b = O()

// // a == b

// // Returning an opaque type looks very similar to using a protocol type as the return type of a function,
// // but these two kinds of return type differ in whether they preserve type identity. An opaque type refers
// // to one specific type, although the caller of the function isn’t able to see which type; a protocol type 
// // can refer to any type that conforms to the protocol. 


// // func makeProtocolContainer<T>(item: T) -> Container {
// //     return [item]
// // }

// /// The use case for Opaque Types
// protocol P: Equatable {}

// struct Massive<T, U, V, W, X, Y, Z, A, B, C, D, E, F, G>: P {

//     init(t: T, u: U, v: V, w: W, x: X, y: Y, z: Z, a: A, b: B, c: C, d: D, e: E, f: F, g: G) {}

// }

// func doSomething() -> some P {
//     return Massive(t: 1, u: 2, v: 3, w: 4, x: 5, y: 6, z: 7, a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7)
// }
// // -----------------------------------------------------------------------------
// /// String Splicing in Swift
// var string: String = "Hello Goodbye"
// // print(string[string.startIndex..<string.index(before: string.endIndex)])
// let start = string.startIndex
// let end = string.index(start, offsetBy: 4)
// let newString = string[start..<end]
// // print(newString is String) // false => Substring does not conform to String protocol
// let reformedString = String(newString)
// // print(reformedString)
// // -----------------------------------------------------------------------------
// var myList = [4, 3, 2, 1]
// var myList2 = ["Bravo", "Zulu", "Alpha"]
// myList.sort()
// myList2.sort()
// // print(myList)
// // print(myList2)

// // -----------------------------------------------------------------------------
// /// Automatic Reference Counting (ARC)
// //      Swift uses Automatic Reference Counting to track & manage your app's memory usage.
// //      When an instance is no longer neededthe ARC frees up that instance's memory.
// //      If the ARC deallocated an instance that was still in use, you cannot access that instance's properties, constants methods etc.
// //      => Trying to access it would result in a crash.

// // By assigning an instance to a variable, a strong reference of that instance is established
// // By assigning it to multipl variables, multiple strong references are established.
// // By reassigning a single variable to nil, 2 strong rreferences are still present.
// // By reassigning all of them to nil, the strong reference is deallocated.


// // Strong reference cycle ----
// class Person {
//     let name: String
//     init(name: String) { self.name = name }
//     var apartment: Apartment?
//     deinit { print("\(name) is being deinitialized") }
// }

// class Apartment {
//     let unit: String
//     init(unit: String) { self.unit = unit }
//     weak var tenant: Person?
//     deinit { print("Apartment \(unit) is being deinitialized") }
// }

// var peter: Person?
// var unit4A: Apartment?
// peter = Person(name: "Peter Appleseed")
// unit4A = Apartment(unit: "4A")
// peter?.apartment = unit4A
// unit4A?.tenant = peter

// // Note: deinits are not called, because the strong reference between the Person instance and Apartment instance still remains.
// // Prone to memory leak. 
// peter = nil
// unit4A = nil

// // Resolving Strong Reference Cycles Between Class Instances ----
// // There are two ways to resolve strong reference cycles: weak references and unowned references.
// // Use a weak reference when the other instance has a shorter lifetime.



// func functionThatThrows() throws {
//     throw(MyErrors.invalidNumber)
// }

// try functionThatThrows()
