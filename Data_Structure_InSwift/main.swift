//
//  main.swift
//  Data_Structure_InSwift
//
//  Created by suraj kumar on 25/07/23.
//

import Foundation
//MARK: Linked List page 25 day 1

public class Node<Value> {
    public var value: Value
    public var next: Node? = nil
    init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}
let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)
node1.next = node2
node2.next = node3
print(node1)
