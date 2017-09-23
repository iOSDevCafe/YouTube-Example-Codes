//
//  Multiset.swift
//  Multiset
//
//  Created by iOS Café on 22/09/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import Foundation

class Multiset<Key: Hashable, Value: Hashable>{
    
    private var data = [Key : Set<Value>]()
    
    func add(value: Value, forKey key: Key){
        
        if var existingValues = data[key]{
            //values set exists, so we append to it
            existingValues.insert(value)
            data[key] = existingValues
        } else {
            let valueSet: Set<Value> = [value]
            data[key] = valueSet
        }
        
    }
    
    func value(forKey key: Key) -> Set<Value>?{
        return data[key]
    }
    
    var numberOfKeys: Int{
        return data.keys.count
    }
    
    var numberOfValues: Int{
        return data.values.reduce(0){ (initialValue, valuesSet) in
            initialValue + valuesSet.count
        }
    }
    
    var allValues: Set<Value>{
        
        return data.values.reduce(Set<Value>()){(initialValue, existingValues) in
            initialValue.union(existingValues)
        }
        
    }
    
}
