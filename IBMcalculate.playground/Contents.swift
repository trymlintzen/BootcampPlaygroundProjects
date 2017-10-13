//: Playground - noun: a place where people can play

import UIKit


func bmi(_ weight: Int, _ height: Double) -> String {
    var bmiResult: Double = Double(weight) / (height * height)
    var trueResult: String = ""
    switch bmiResult {
    case _ where bmiResult <= 18.5:
         trueResult = "Underweight"
    case let tree where tree <= 25.0:
        trueResult = "Normal"
    case _ where bmiResult <= 30.0:
        trueResult = "Overweight"
    case _ where bmiResult > 30:
        trueResult = "Obese"
    default:
        break
    }
    return trueResult
}

bmi(50, 1.50)


