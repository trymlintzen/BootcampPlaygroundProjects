//: Playground - noun: a place where people can play

import UIKit

func isEven(number num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

isEven(number: 15)

func isOdd(number num: Int) -> Bool {
    if num % 2 == 0 {
        return false
    } else {
        return true
    }
}

isOdd(number: 15)
