//: Playground - noun: a place where people can play



import UIKit
let expression = NSExpression(format:"2+8*2")
if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
    print(result)
} else {
    print("error evaluating expression")
}
