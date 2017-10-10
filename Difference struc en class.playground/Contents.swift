//: Playground - noun: a place where people can play

import UIKit

// Structs and classes alwasy begint with Capital
class BankAccount {
    
    // properties and variables begint with a small letter
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
}




class Person {
    var name: String
    var account: BankAccount
    init(name: String, account: BankAccount) {
        self.name = name
        self.account = account
    }
}

var account1 = BankAccount.init(balance: 1000.0)
var account2 = BankAccount.init(balance: 1000.0)

print(account1)
print(account2)

if account1 === account2 {
    print("same account")
} else {
    print("different account")
}

var person1 = Person.init(name: "Trym", account: account1)
var person2 = Person.init(name: "Toril", account: account1)

print("\(person2.name): \(person2.account.balance)")
print("\(person1.name): \(person1.account.balance)")

person1.account.balance = 500.0


print("\(person2.name): \(person2.account.balance)")
print("\(person1.name): \(person1.account.balance)")


var name1 = "Trym"
var name2 = "Trym"

if name1 == name2 {
    print("same name")
}

var number1 = 1
var number2 = number1

if number1 == number2 {
    print("same number")
}


// in Class wallet point to same reference and it should be a struct because we want the same value in second wallet but we don't want them to be the same reference, we want htem to be 2 seperate wallets
struct Wallet {
    var cash: Double
    init(cash: Double) {
        self.cash = cash
    }
}
var wallet1 = Wallet.init(cash: 100.0)
// i want ot give you al wallet with hte same amount of money in , but after that is is seperated, it is a copy of wallet1, i don't want you spending money in my wallet.
var wallet2 = wallet1
wallet1.cash = 200.0
print(wallet1.cash)
print(wallet2.cash)


// Duidelijk voorbeeld wanneer je een struct gebruikt in een computer programma

//: Playground - noun: a place where people can play

import UIKit

//Create a common type of variable
struct Address {
    var number: Int
    var firstLine: String
    var secondLine: String
    var postCode: String
}

//reuse address
// Don't have to copy and rewrite the variables in address
struct Client {
    var name: String
    var phoneNumber: Int
    var email: String
    var address: Address
}

struct Company {
    var name: String
    var phoneNumber: Int
    var email: String
    var address: Address
}


