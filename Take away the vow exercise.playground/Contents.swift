//: Playground - noun: a place where people can play

import UIKit

func disemVow (giveASetence sentence: String) -> String {
//    var sentence = "Hello how are you"
    var disemVowelWorld = ""
    for letter in sentence {
        switch letter {
        case "a", "A", "e", "E", "i", "I", "o", "O", "u", "U" :
            break
        default:
            disemVowelWorld.append(letter)
        }
//        print(disemVowelWorld)
    
}
    return (disemVowelWorld)
    }
    
disemVow(giveASetence: "Hello world")





