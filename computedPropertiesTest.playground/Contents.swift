//: Playground - noun: a place where people can play

import UIKit


var widthB: Double = 100
var widthL: Double = 100
//var AreaValue: Int = 0

var area: Double {
    get {
       return widthL * widthB
    }
    set (newArea) {
        widthL = sqrt(newArea)
        widthB = sqrt(newArea)
    }
}

print(area)
area = 64
print(widthL)
print(widthB)


