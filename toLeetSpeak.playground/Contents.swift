//: Playground - noun: a place where people can play

import UIKit

func toLeetSpeak(leetInput: String) -> String {

    var leetAlphabet: Dictionary<Character,String> = [
        "A" : "@",
        "B" : "8",
        "C" : "(",
        "D" : "D",
        "E" : "3",
        "F" : "F",
        "G" : "6",
        "H" : "#",
        "I" : "!",
        "J" : "J",
        "K" : "K",
        "L" : "1",
        "M" : "M",
        "N" : "N",
        "O" : "0",
        "P" : "P",
        "Q" : "Q",
        "R" : "R",
        "S" : "$",
        "T" : "7",
        "U" : "U",
        "V" : "V",
        "W" : "W",
        "X" : "X",
        "Y" : "Y",
        "Z" : "2"
    ]

    var leetWord = ""
    
    
    for letter in leetInput.characters {
        if let word = leetAlphabet[letter] {
            leetWord.append(word)
        }
    }
    return leetWord
}

toLeetSpeak(leetInput: "LEET by HELLO")
