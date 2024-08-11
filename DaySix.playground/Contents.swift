// Day 6 Closures

import UIKit

//Basic closures

let learnSwift = {
    print("Closures are like functions")
}

learnSwift()

//Closure with parameters

let greeting = { (name: String) -> String in
    return "Hello, \(name)!"
}

print(greeting("Rudy"))


// Returning values from a closure

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
    let message = "I'm going to \(place) in my car"
    return message
}

let message = drivingWithReturn("Orlando")

print(driving("Miami"))
print(message)

//Closures as parameters

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived")
}

//Trailing closure syntax

travel {
    print("i'm driving in my car")
}

//Parenthesis can be removed
