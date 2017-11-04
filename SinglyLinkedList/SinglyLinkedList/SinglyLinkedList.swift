//
//  SinglyLinkedList.swift
//  SinglyLinkedList
//
//  Created by iOS Café on 01/10/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import Foundation

class SinglyLinkedList<T>{
    
    private lazy var nodes = [Node]()
    
    class Node: CustomDebugStringConvertible{
        
        let value: T
        fileprivate(set) weak var next: Node?
        
        init(value: T){
            self.value = value
            next = nil
        }
        
        var debugDescription: String{
            return "Node -> value = \(value)"
        }
        
    }
    
    var head: Node?{
        return nodes.first
    }
    
    var tail: Node?{
        return nodes.last
    }
    
    func append(_ value: T){
        let newNode = Node(value: value)
        tail?.next = newNode
        nodes.append(newNode)
    }
    
    var count: Int{
        return nodes.count
    }
    
    subscript (index: Int) -> Node?{
        guard nodes.count > index else {return nil}
        
        return nodes[index]
    }
    
}

extension SinglyLinkedList: Sequence{
    
    typealias Element = Node
    typealias Iterator = IndexingIterator<[Node]>
    typealias SubSequence = AnySequence<Node>
    
    func makeIterator() -> IndexingIterator<[SinglyLinkedList<T>.Node]> {
        return nodes.makeIterator()
    }
    
}

extension SinglyLinkedList{
    
    func push(_ value: T){
        let newNode = Node(value: value)
        newNode.next = head
        nodes.insert(newNode, at: 0)
    }
    
    @discardableResult
    func pop() -> Node?{
        return nodes.removeFirst()
    }
    
}

extension SinglyLinkedList: CustomDebugStringConvertible{
    var debugDescription: String{
        return nodes.flatMap{$0.value}.debugDescription
    }
}
