//
//  Stack.swift
//  AlgorithmKit
//
//  Created by Mac Bellingrath on 10/13/18.
//

public class Stack<T> {

    public init () {

    }

    public func push(_ item: T) {
        let node = SinglyLinkedListNode(item)
        node.next = top
        top = node
    }

    public func pop() -> T? {
        let temp = top
        top = temp?.next
        return temp?.value
    }

    public func peek() -> T? {
        return top?.value
    }

    public var isEmpty: Bool {
        return top == nil
    }

    private var top: SinglyLinkedListNode<T>?

}

extension Stack: Sequence {

    public func makeIterator() -> AnyIterator<T> {
        var current = top

        return AnyIterator<T> {
            let temp = current
            current = current?.next
            return temp?.value
        }
    }
}
