import Foundation

/*
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
*/

let inputArray = [10, 15, 3, 7]
let k = 17
var expectedDiff: [Int: Int] = [:]
var returnValue = false

inputArray.forEach {
    let diff = k - $0

    if let num1 = expectedDiff[$0] {
        print("\(num1) + \($0) = \(k)")
        returnValue = true
    }
    expectedDiff[diff] = $0
}

print(returnValue)
