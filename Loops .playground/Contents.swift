//: Playground - noun: a place where people can play

import UIKit


var myFirstInt: Int = 0
// Basic for loop
for i in 1...5 {
    // ++myFirstInt    /// myFirstInt +=1   myFirstInt = myFirstInt +1
    myFirstInt += 1
    print (myFirstInt)
    print ("value of i: \(i)")
}

// Array, a collection of variables of the SAME TYPE
enum Stones {
    case Red
    case Blue
    case Green
    case Purple
}
// Array of stones
var inventory: [Stones]
inventory = [.Red , .Green , .Blue , .Purple, .Red , .Red , .Green, .Green]

// Looping an array
for item in inventory {
    print(item)
}
// Different array types
var names: [String] = []
var plants: [String]

//Appending
names.append("Trym")

for name in names {
    print(name)
}

names.append("Kyrill")
names.append("Ben")
names.append("Michiel")
names.append("Bart")
names.remove(at: 0)       // verwijderd de eerste index en schuift alles op

names[0] = "Tim"          // veranderd de array 0 in Tim

for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

print(names.count)              // belangrijke functie voor in app

names.sort()



// While loops

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
while shields > 0 {
    
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep (5)
        print("Blasters ready to fire")
        sleep (1)
        blastersOverheating = false   // Bool : kan true of false zijn
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    // Fire blasters!
    print ("Fire blasters!")
    shields -= 1
    
}


// ARRAYS
// start from 0












