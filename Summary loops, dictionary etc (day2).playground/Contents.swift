//: Playground - noun: a place where people can play

import UIKit


//initialise and delcare a dictionary, key value pairs
var english: Dictionary<String, Int> = ["key1" : 1, "key2" : 2]

//intialise and array and declare one, note the Square brackets
var heights: [Double] = [1.8, 3.3, 4, 5]
var height: Double
print(heights[3])

//change value in array
heights[3] = 8
print(heights[3])

//count array
heights.append(7)
print(heights.count)

//delete from an array


//loop array
for currentHeight in heights {
    if currentHeight > 3.5 {
        print(currentHeight)
    }
}

print(heights.count)



//udpate dictionary
english.updateValue(4, forKey: "key1")
print(english)

