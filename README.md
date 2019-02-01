# DailyChallenge

1. Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
```
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
```

2. Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

 For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].

```
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
```

3. Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.

```
class Node {
    let value: String
    let left: Node?
    let right: Node?

    init(value: String, left: Node? = nil, right: Node? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

func serialize(node: Node) -> String? {
    var returnValue = "Node(\"\(node.value)\""

    if let leftNode = node.left, let leftString = serialize(node: leftNode) {
        returnValue = returnValue + ", " + leftString
    }

    if let rightNode = node.right, let rightString = serialize(node: rightNode) {
        returnValue = returnValue + ", " + rightString
    }

    returnValue = returnValue + ")"
    return returnValue
}


let root = Node(value: "root",
                left: Node(value: "left",
                           left: Node(value: "left-left")),
                right: Node(value: "right"))

print(serialize(node: root) ?? "")
```
