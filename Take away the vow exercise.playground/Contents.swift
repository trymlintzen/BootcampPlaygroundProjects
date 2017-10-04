//: Playground - noun: a place where people can play

import UIKit


func disemvowel(s: String) -> String {
    return s.replacingOccurrences(of: "[aeoiu]", with: "")
    
//    var result = ""
//
//    var vowel = ["a", "e", "i","o", "u"]
//    for letter in vowel {
//        s.replacingOccurrences(of: "a", with: "")
//
//        switch letter {
//        case "a":
//            result = s.replacingOccurrences(of: "a", with: "")
//        case "e":
//            result = ""
//        case "i":
//            result = ""
//        case "o":
//            result = s.replacingOccurrences(of: "o", with: "")
//        case "u":
//            result = ""
//        default:
//            break
//        }
    }
    return result
}

disemvowel(s: "hallo")
