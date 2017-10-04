//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Dictionaries
// something with a key (top gun) and a value (1)

var movieRatings = ["Top Gun" : 1 , "Star Wars" : 10, "Indiana Jones" : 9]

movieRatings ["Top Gun"] = 5   // veranderde key value naar 5

movieRatings.updateValue(10, forKey: "Pulp fiction")

for(key, value) in movieRatings {
    print(key)
    print(value)
}

// Exercise


var EnglishDictonary: Dictionary<String, String> = ["hello": "greet"]
var DutchDictionary: Dictionary<String, String> = ["hallo": "begroeting", "ney":"no"]
var FrenchDictionary: Dictionary<String, String> = ["bonjour": "frans begroeting"]

var arryDictionary = [EnglishDictonary, DutchDictionary, FrenchDictionary]


for currentDictionary in arryDictionary {
    print(currentDictionary)
    if currentDictionary == EnglishDictonary {
        print(currentDictionary["hello"])
    } else if currentDictionary == DutchDictionary {
        print(currentDictionary["ney"])
    } else {
        print("nothing")
    }
}


var movieRating: Dictionary<String, Int> = ["Interstellar": 9 , "Pulp fiction" : 8]
print(movieRating)
movieRating.updateValue(7, forKey: "Interstellar")
print(movieRating)






