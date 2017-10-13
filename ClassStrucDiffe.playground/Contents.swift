//: Playground - noun: a place where people can play

import UIKit

var num1 = 0
var num2 = num1

num2 = 2
struct Wallet {
    var balance: Int
    init(balance: Int) {
        self.balance = balance
    }
}

class Account {
    var balance: Int
    init(balance: Int) {
        self.balance = balance
    }
}

class Person {
    var acc: Account
    init(acc: Account) {
        self.acc = acc
    }
}

var sharedAccount = Account.init(balance: 1000)
var person1 = Person.init(acc: sharedAccount)
var person2 = Person.init(acc: sharedAccount)

person1.acc.balance = person1.acc.balance - 2000
print(person2.acc.balance)
print(person1.acc.balance)
