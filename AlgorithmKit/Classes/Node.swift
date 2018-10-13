//
//  Node.swift
//  AlgorithmKit
//
//  Created by Mac Bellingrath on 10/13/18.
//


/// Base `Node` class
open class Node<T> {

    let value: T

    public init(_ value: T) {
        self.value = value
    }
}

