import Foundation

/*
 Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

 For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
*/

//Solution #1
let input = [1, 2, 3, 4, 5]
let product = input.reduce(1) { $0 * $1 }
let output1 = input.map { product / $0 }
print(output1)

//Solution #2 - No division
print("No division")
let input2 = [1, 2, 3, 4, 5]
var output2: [Int] = []

for x in 0..<input2.count {
    var product = 1
    for y in 0..<input2.count where x != y {
        product *= input2[y]
    }
    output2.append(product)
}
print(output2)
