//
//  Byte.swift
//  Byte
//
//  Created by iOS Café on 23/09/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import Foundation

protocol HasMaxBitCount{
    static var maxBitCount: Int {get}
}

extension Sequence where Element == Bit, Self : HasMaxBitCount{
    
    static func extractBits(outOf arrayOfBits: [Element]) -> [Element]{
        
        //get maximum allowed number of bits, out of the bits parameter
        let maxBits: [Element]
        if arrayOfBits.count > maxBitCount{
            maxBits = Array(arrayOfBits[0..<maxBitCount])
        } else {
            maxBits = arrayOfBits
        }
        
        var allBits = Array(repeatElement(Element.zero, count: maxBitCount - maxBits.count))
        allBits.insert(contentsOf: maxBits, at: 0)
        return allBits
        
    }
    
}

struct Byte: Sequence, HasMaxBitCount{
    
    typealias Element = Bit
    typealias Iterator = IndexingIterator<[Element]>
    typealias SubSequence = AnySequence<Element>
    
    let bits: [Bit]
    
    static let maxBitCount = 8
    
    init(bits: [Element]){
        self.bits = Byte.extractBits(outOf: bits)
    }
    
    func makeIterator() -> IndexingIterator<[Element]> {
        return bits.makeIterator()
    }
    
}

struct Integer32: Sequence, HasMaxBitCount{
    
    typealias Element = Bit
    typealias Iterator = IndexingIterator<[Element]>
    typealias SubSequence = AnySequence<Element>
    
    let bits: [Bit]
    
    static let maxBitCount = 32
    
    init(bits: [Element]){
        self.bits = Integer32.extractBits(outOf: bits)
    }
    
    func makeIterator() -> IndexingIterator<[Element]> {
        return bits.makeIterator()
    }
    
}

extension Bit{
    var intValue: Int{
        if self == .zero{
            return 0
        } else {
            return 1
        }
    }
}

extension Sequence where Element == Bit{
    var intValue: Int{
        var result = 0
        for bit in self.reversed(){
            result = result << 1
            result = result | bit.intValue
        }
        return result
    }
}
