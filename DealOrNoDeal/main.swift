//
//  main.swift
//  DealOrNoDeal
//

import Foundation

// INPUT
// Global variable to use later in program
var openedCases = 0
var cases: [Int : Int] = [
    1 : 100,
    2 : 500,
    3 : 1000,
    4 : 5000,
    5 : 10000,
    6 : 25000,
    7 : 50000,
    8 : 100000,
    9 : 500000,
    10 : 1000000
]

while true {
    print("How many briefcases have been opened?")
    guard let givenInput = readLine() else {
        continue
    }
    guard let integerInput = Int(givenInput) else {
        continue
    }
    if integerInput < 0 || integerInput > 10 {
        continue
    }
    openedCases = integerInput
    break
}

// Now get the actual number of briefcases that were opened during the game
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the list of what briefcases were opened here
for counter in 1...openedCases {
    
    // Ask what briefcase was opened in this turn
    print("Briefcase opened, in turn \(counter), was:")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    guard let integerInput = Int(givenInput) else {
        continue
    }
    cases.removeValue(forKey: integerInput)
}

print("What was the banker’s offer?")
let offer = readLine()
var average = 0
for i in 1...cases.count {
    let temp = cases[i]
    if temp != nil {
    average += temp!
    }
}

average /= cases.count

if average > Int(offer!)! {
    print("Deal.")
} else {
    print("No deal.")
}

