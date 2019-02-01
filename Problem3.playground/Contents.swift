import UIKit

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
