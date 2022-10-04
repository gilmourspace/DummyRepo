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
func findEmployeeOfMonth(flag: Bool, name1: String, name2: String) -> String
{
    var result : String
    if flag {
        result = "The Employee of the month is \(name1)"
    } else {
        result = "The Employee of the month is \(name2)"
    }
    return result
}

print(findEmployeeOfMonth(flag: true, name1: "Karan", name2: "Blaise"))
print(findEmployeeOfMonth(flag: false, name1: "Karan", name2: "Blaise"))