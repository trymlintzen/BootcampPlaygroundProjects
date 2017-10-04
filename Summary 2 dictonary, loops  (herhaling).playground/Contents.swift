//: Playground - noun: a place where people can play

import UIKit


//define a dictionary
var car: Dictionary<String, Any> = ["Bmw" :1, "Mini" :2, "Citroen" :2]
print(car["Citroen"])

//Optional binding check if there is a value in a dictionary
if let Citroen = car["Citroen"] as? Int {
    print(Double(Citroen) / 10)
}

//Use enums for key
enum keys: String {
    case Citroen
}

//Change values in a dictioanry
car[keys.Citroen.rawValue] = "Mercedes"
print(car["Citroen"])
print(car)

//remove value from a dictionary
car.removeValue(forKey: "Citroen")
print(car)

//update value in a dictionary
car.updateValue(2, forKey: "Citroenboo")
print(car)


//Define and initialise and array
var shoppingList: [String] = ["RedBull", "Computer", "MacBook", "Hairgel", "ChocolateSprinkles"]

//define different array
var shoppingListPrices: [Int] = [3, 4, 3 , 5, 6]

//Looping an array
for object in shoppingListPrices{
    var sum = object + 10
    print(sum)
}

//CHange value in an array
print(shoppingListPrices)
shoppingListPrices[3] = 8
print(shoppingListPrices)

//Removing and appending
shoppingListPrices.remove(at: 3)
print(shoppingListPrices)
shoppingListPrices.append(10)
print(shoppingListPrices)

//Inserting
shoppingListPrices.insert(90, at: shoppingListPrices.count-4)
print(shoppingListPrices)

//Sorting
var sorted = shoppingListPrices.sorted(by:>)
print(sorted)
