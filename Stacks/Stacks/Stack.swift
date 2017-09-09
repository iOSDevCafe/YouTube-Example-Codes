//
//  Stack.swift
//  Stacks
//
//  Created by iOS Café on 09/09/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import Foundation

class Stack<T>{
    
    fileprivate lazy var data: [T] = {
        return []
    }()
    
    func push(_ value: T){
        data.insert(value, at: 0)
    }
    
    func pop() -> T?{
        guard data.count > 0 else {return nil}
        return data.removeFirst()
    }
    
}

func ==<T: Equatable> (lhs: Stack<T>, rhs: Stack<T>) -> Bool{
    
    guard lhs.data.count == rhs.data.count else {return false}
    return lhs.data == rhs.data
    
}
