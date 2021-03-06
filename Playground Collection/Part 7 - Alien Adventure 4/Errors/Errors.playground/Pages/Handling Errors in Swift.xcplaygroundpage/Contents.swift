/*:
## Errors and Error Handling
*/

// Defining our own custom error type.
enum MyError: Error {
    case itDidNotWork
}

// This method throws an error.
func methodThatThrows() throws {
    print("After this line, we will throw an error")
    throw MyError.itDidNotWork
}

// Because this function IS NOT declared with "throws" it means that no errors can be generated by this function.
func theErrorStopsHere() {
    
    // However, this function can call other functions which throw errors, but we are responsible for catching/handling them.
    do {
        try methodThatThrows()
    } catch {
        print("We caught an error")
    }
}

theErrorStopsHere()
//: [Next](@next)
