//: Playground - noun: a place where people can play

import UIKit

// als je false in true veranderd, dan wordt "wear a rain jacket" geprint, anders "enjoy ..day"
// example of a boolean
var isItRaining: Bool = false

// "isItRaining is een conditional
if isItRaining {
    print("wear a rain jacket")
} else {
    print("enjoy your sunny day")
}


var population: Int = 1000
var message: String
// example of if with less than or equals <= (pag 20)


if population <= 10000 {
    message = "\(population) is a small town"
} else if population > 1000000 {
    message = "\(population) This is place is huge"
} else {
    message = "\(population) is pretty big!"
}

print (message)

if population > 1000000 || isItRaining {
    print ("Lots of people will get wet")
    
}

// Ternary operator (vol uitgeschreven)
if population <= 10000 {
    message = "\(population) is a small town"
} else {
    message = "\(population) is pretty big!"
}

// Ternary operator (in just one line)
message = population > 10000 ? "\(population) is a small town" :  "\(population) is pretty big!"
print (message)



// SWITCH
var statusCode: Int = 404
var errorString: String
switch statusCode {
case 400:
    errorString = "Bad request"
case 401:
    errorString = "Unauthorized request"
case 402:
    errorString = "Forbidden "
case 403:
    errorString = "Not found"
case 404:
    errorString = "None"
default:
    errorString = "Not known"
}

// andere notatie. 400...499 betekend range.
switch statusCode {
case 400, 401, 402, 403, 404:
    errorString = "Something went wrong"
default:
    errorString = "Not known"
}
print (errorString)

// enum opzoeken in het boek



// ENUM
// stenen hieronder is goed voorbeeld, omdat er een limited aantal kleuren stenen zijn.

enum Stones {
    case Red
    case Blue
    case Green
    case Purple
}

var find: Stones = Stones.Red
var message2: String

switch find {
case .Red:
    message2 = "you found it"
case .Blue:
    message2 = "wrong"
case .Green:
    message2 = "wrong again"
case .Purple:
    message2 = "bad"

}
// geen default, omdat er niet meer kleuren stenen zijn. Met intergers (getallen) zijn er meer.

print(message2)
