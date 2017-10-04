//: Playground - noun: a place where people can play

import UIKit

//  func maken met Double of Int
func devide(number1: Double, number2: Double) -> Double {
    let numerator = number1 / number2
    return numerator
}

print(devide(number1: 30.5, number2: 20.8))

// func maken met Array

func sumNumbers(arrayOfNumbers: [Int]) -> Int {
    var total = 0
    for number in arrayOfNumbers {
//        print(number)
//        print(total)
        total = number + total
    }
    return total
}

let numbers = [1,2,1,6,4,22,5,44,234,4,46,3,23234,34,346,45,3,2,213,4,46,65]
print(sumNumbers(arrayOfNumbers: numbers))

//  sort even en odd numbers (niet afgemaakt)
//
//func sortedEvenOddNumbers(numbers3: Int) -> (evens: [Int] , odds: [Int]) {
//    var evens = [Int] ()
//    var odds = [Int] ()
//    for number1 in numbers3 {
//        if number1 % 2 == 0 {
//            evens.append(number1)
//        } else {
//            odds.append(number1)
//        }
//        return (evens, odds)
//    }
//}
//
//let theSortedNumbers = sortedEvenOddNumbers(numbers3: numbers)
//print("the even numbers are: \(theSortedNumbers.evens) ; the odd numbers are: \(theSortedNumbers.odds)")
//
//
