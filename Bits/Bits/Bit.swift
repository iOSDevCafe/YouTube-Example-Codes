//
//  Bit.swift
//  Bits
//
//  Created by iOS Café on 23/09/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import Foundation

enum Bit{
    case zero
    case one
}

func | (lhs: Bit, rhs: Bit) -> Bit{
    if lhs == .zero && rhs == .zero{
        return .zero
    } else {
        return .one
    }
}

func & (lhs: Bit, rhs: Bit) -> Bit{
    
    if lhs == .one && rhs == .one{
        return .one
    } else {
        return .zero
    }
    
}

prefix func ! (bit: Bit) -> Bit{
    if bit == .zero {
        return .one
    } else {
        return .zero
    }
}

func ^ (lhs: Bit, rhs: Bit) -> Bit{
    if lhs == rhs{
        return .zero
    } else {
        return .one
    }
}
