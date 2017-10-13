//: Playground - noun: a place where people can play

import UIKit
import Foundation

func solution(_ string:String) -> Int {
    
   
    var numerals: Dictionary<String, Int> = ["I":1,"II":2,"III":3, "IV":4, "V":5,"VI":6, "VII":7, "VIII":8,"IX":9,"X":10,"L":50, "C":100,"D": 500, "M":1000]

    var ourNumbersConversion: [Int] = []
    for numeral in string.characters {
        if let numeralResult = numerals[String(numeral)] {
            ourNumbersConversion.append(numeralResult)
            

        }
        
    }
    print(ourNumbersConversion)
    for (index, number) in ourNumbersConversion.enumerated() {
        if index + 1 > ourNumbersConversion.count {
            var resultNumber1 = 
            
        }
    }
    
    return 0
}


solution("XXIIXV")
