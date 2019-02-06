import Foundation

/*
 Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

 For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

 You can modify the input array in-place.
 */

func missingPositiveNumber(in input: [Int]) -> Int? {

    print("INPUT: \(input)")
    var input = input

    //Move the negatives to the front
    for x in 0..<input.count where input[x] <= 0 {
        let value = input[x]
        input.remove(at: x)
        input.insert(value, at: 0)
    }

    var copy = input

    //Mark index as visited by negating the value on that index
    for x in input where x > 0 && x - 1 < input.count {
        if input[x-1] > 0 {
            copy[x-1] = input[x-1] * -1
        }
    }

    //Find the index(+1) that wasn't negated which would be the missing number
    for (index, x) in copy.enumerated() where x > 0 {
        print("The missing number is \(index + 1)")
        return index + 1
    }
    return nil
}


missingPositiveNumber(in: [3, 4, -1, 1])    //returns 2
missingPositiveNumber(in: [1, 2, 0])        //returns 3
missingPositiveNumber(in: [5, 1, 2, 0])     //returns 3
missingPositiveNumber(in: [5, 1, 2, 0, 3])  //returns 4


