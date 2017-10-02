//: Playground - noun: a place where people can play

import UIKit
// declaring a variable of type string
var schoolName: String

// declaring initialising a variable of type string
var name = "Trym"

// declaring and initialising a variable of Double type
var age = 22.8


// dit met 2 haakjes zijn comments die je kunt plaatsen
schoolName = "The App Academy"

// print values of variables
print(schoolName)

// combining variables
print (name, age, schoolName)

// This is an example of string interpolation

// print values of variables
print ("The teacher is \(name) and he is \(age) he works at \(schoolName)")

// example of constant using let
var daysInTheWeek = 7
let hours = 24
let minutesInAnHour = 60

// You can only change a value if it is a variable
daysInTheWeek = 6

print (daysInTheWeek*hours*minutesInAnHour)

// modulus gives you a remainder of a division
var modulus = 10 % 3
print (modulus)


// auto-increment
var finalScore = 1
finalScore += 10
finalScore = finalScore + 10   // this is the same thing as +=


// auto-decremet
finalScore -= 10
finalScore = finalScore - 10   // this is the same thing as -=

print(finalScore)

// Paranthesis  -> ( )  or brackets

var sum = (10 + 2) / 2  // Daarom haakjes (brackets) belangrijk

var floatNumber: Float = 1.564
var doubleNumber: Double = 1.4

// CASTING
// \() This is casting to a string
// Double ()
// Float ()

// kan niet verschillende soorten numbers optellen. maak van beide "Double" bijvoorbeeld
var sum2 = doubleNumber + Double(age)
print (sum2)


// laat niet alle nummers zien, omdat float64 gekozen is. Er zijn verschillende soort nauwkeurigheden






