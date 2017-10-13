//: Playground - noun: a place where people can play

import UIKit

let populationSizes = [1000, 6372, 3883, 3992, 800, 8282,9422, 56]
let names = ["Trym", "Ben", "Michiel", "Kyril"]
// Order by the smalles first

populationSizes.sorted(by: >)

// Storing the sorted array in ascending alpabetical order
var sortedNames = names.sorted(by: <)
print(sortedNames)

// A function is a named closure
func sortAscending(i: Int, j: Int) -> Bool {
    return i < j
}

// we can pass a closure into a function
var sortedPopulations2 = populationSizes.sorted(by: {(i: Int, j: Int) -> Bool in
    return i < j } )

// can go to this
var sortedPops = populationSizes.sorted(by: {i, j in i < j } )

// and we can go even smaller
var sortedPops2 = populationSizes.sorted(by: { $0 < $1 } )

// omdat de functie dezelfde naam heeft, kun je de functie als parameter invullen
var sortedPopulations1 = populationSizes.sorted(by: sortAscending)




    // Sort with just one operator less than or greater
var sortedPopulation3 = populationSizes.sorted(by: <)


// MAP
var doubledPopulation = populationSizes.map { (currentPopulation) -> Int in
    return currentPopulation * 2
}

print(doubledPopulation)

// Filter

var filterPop = populationSizes.filter { (currentPopulation) -> Bool in
    return currentPopulation > 1000
}

print(filterPop)

// Reduce

var reducePop = populationSizes.reduce(0) {(accumulated, currentPopulation) -> Int in
    return accumulated + currentPopulation
}
print(reducePop)


// X I V L C

//var arrayOfConvertedRomanNumerals = [10, 1, 5, 50, 100]
//var reducedNumerals = arrayOfConvertedRomanNumerals.reduce(0) { accumulated, current) -> Int in
//
//    return
//}


//LC X IV
var added = (100 - 50) + 10 + (5-1)
print(added)
var arrayOfConvertedRomanNumerals = [10,1,5,50,100]
var reducedNumerals = arrayOfConvertedRomanNumerals.reduce(0) { (accumulated, current) -> Int in
    
    return 1
}

// Using these functies with object
class Comment {
    var likes: Int
    init(likes: Int) {
        self.likes = likes
    }
}

var arrayOfComments: [Comment] = []
for _ in 1...50 {
    let comment = Comment.init(likes: 10)
    arrayOfComments.append(comment)
    
}

var totalLikes = arrayOfComments.reduce(0) { (totalLikes, currentComment) -> Int in
    return totalLikes + currentComment.likes
}

print(totalLikes)






