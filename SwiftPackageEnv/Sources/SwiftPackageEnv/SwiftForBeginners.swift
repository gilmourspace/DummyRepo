// /// Swift Tutorial - For Beginners

// /// Variable - a variable holds some data.
// var str = "Hello I am Karan"   // <Variable decleration> <vaiable name> = <data>

// var a = 1
// var b = 1

// // a = 2
// // str = 1  // error str is declared as a String type, data types of variables cannot be changed unless explicetly casted.

// var myNuberOfApples = 19 // Camel case variable name

// // print(a + b)
// // print(a - b)
// // print(a * b)
// // print(a / b)

// ///  Constants - Can store data but cannot be reassigned after the first assignment.
// let c = 2
// // c = 4 // error constants cannot be changed
// // constants can make the computer work efficiently since constants cannot be changed
// // easier to write code and debug since constants are changing and can be tracked easier.

// // Datatypes A classification or a type of data.
// // Note Datatypes in swift are non primitive types meaning they are not predifined in the language
// // Thus they have constructors.
// // The system stores different types of data differently
// // i.e a string, the system has allocated differently on the system and memory.
// // i.e a string is stored in number of bytes (i.e string of size X has X bytes allocated to it
// // if it is utf8)
// // an int32, the system allocates 32 bytes of memory for the int32.
// var d: Float = 2.3      // Float represents a 32-bit (4 byte) floating-point number.
// print(Float.greatestFiniteMagnitude)
// print(Double.greatestFiniteMagnitude)
// // var greatest: Float = Double.greatestFiniteMagnitude
// // print(greatest) // Cannot convert Double to a float.
// // every type decleration in swift allocates the memory of that size of that type.
// var e: Double = 2.3     // Double represents a 64-bit (8 byte) floating-point number.
// var f: Bool = true      // 
// var g: Int = 4          // On a 64bit system, Int is Int64 therefore 64 by (8 bytes)
//                         // UInt is also a UInt64 (8 bytes)


// // && - AND
// // || - OR
// // != - Not equal

// let x = 2
// let y = 2
// if x < 4 || y < 4 {
//     print("branch 1")
// } else if a < 8 {
//     print("branch 2")
// } else {
//     print("branch 3")
// }
// // print(UInt.max) // 255 bits
// // print(UInt.min)  // 0 bits

// // print(Int.max) // 
// // print(Int.min)


// /// Switch statements
// var someCharacter: Character = "a"
// switch someCharacter {
//     case "a":
//         print("Branch 1")

//     case "b":
//         print("Branch 2")

//     default:
//         print("Some Fallback")
// }

// /// for in loop
// // for counter in lower...upper {
// //     code
// // }

// for index in 1...5 {
//     var sum = 0
//     sum += index
//     print(sum)
// }
