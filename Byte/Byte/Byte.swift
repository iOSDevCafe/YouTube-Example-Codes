//
//  Byte.swift
//  Byte
//
//  Created by iOS Café on 23/09/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import Foundation

struct Byte: Sequence{
    
    let bits: [Bit]
    
    static let maxBitCount = 8
    
    init(bits: [Element]){
        
        
        //get maximum 8 bits, out of the bits parameter
        let maxEightBits: [Element]
        if bits.count > Byte.maxBitCount{
            maxEightBits = Array(bits[0..<Byte.maxBitCount])
        } else {
            maxEightBits = bits
        }
        
        var allBits = Array(repeatElement(Bit.zero, count: Byte.maxBitCount - maxEightBits.count))
        allBits.insert(contentsOf: maxEightBits, at: 0)
        self.bits = allBits
        
    }
    
    typealias Element = Bit
    typealias Iterator = IndexingIterator<[Element]>
    typealias SubSequence = AnySequence<Element>
    
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

extension Byte{
    var intValue: Int{
        var result = 0
        for bit in self.reversed(){
            result = result << 1
            result = result | bit.intValue
        }
        return result
    }
}
