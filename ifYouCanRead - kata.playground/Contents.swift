//: Playground - noun: a place where people can play

import UIKit

func toNato(aSetence: String) -> String {


//    var stringToConvert = "go for it!"

    // dictionary with Key as Character type, and value is of type String
    var natoAlphabet: Dictionary<Character, String> = ["a": "Alfa", "b": "Bravo", "c" : "Charlie", "d" : "Delta",
                                                    "e": "Echo", "f": "Foxtrot", "g": "Golf", "h": "Hotel",
                                                    "i": "India", "j": "Juliet", "k": "Kilo", "l": "Lima",
                                                    "m": "Mike", "n": "November", "o": "Oscar", "p": "Papa",
                                                    "q": "Quebec", "r": "Romeo", "s": "Sierra", "t": "Tango",
                                                    "u": "Uniform", "v": "Victor", "w": "Whiskey", "x": "Xray",
                                                    "y": "Yankee", "z": "Zulu"]
    // maak empty string
    var result: String = ""

    // Put all letters in the string to a lowercase, so that it matches keys in our dictionary
    let lowercased = aSetence.lowercased()

    // for loop to loop through everey character in our string that we want to convert
    for char in lowercased.characters {

        // optional bindingc chekcing that we can get a value from our dictonary with the key "letter", which is the current character in the string that we are looping through
        if let word = natoAlphabet[char] {
            // we are then going to append the wordt to return or our string with the retrieved value form our dictionary
            result.append("\(word) ")  // "\(word) " example of string interpoltation, allowing
            
            
        } else {
            result.append(char)
         
        }
  
    }
    
//    print(result)
   return deleteSpace(newSetence: result)
}

func deleteSpace (newSetence: String) -> String {
    let components = newSetence.components(separatedBy: .whitespacesAndNewlines)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}

toNato(aSetence:  "Hello this is cool")
toNato(aSetence:  "My name      is Trym")




