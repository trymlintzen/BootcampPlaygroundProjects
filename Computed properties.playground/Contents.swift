//: Playground - noun: a place where people can play

import UIKit
import Foundation

var display: UILabel = UILabel()
display.text = "1234459"


// Computed propertie
private var displayValue: Double {
    get {
        print("I'm getting displayed value")
        return Double(display.text!)!
    }
    
    set {
        display.text = String(newValue)
    }
}

print(displayValue)

displayValue = 1.03

print(display.text!)
