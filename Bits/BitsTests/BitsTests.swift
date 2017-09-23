//
//  BitsTests.swift
//  BitsTests
//
//  Created by iOS Café on 23/09/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import XCTest
@testable import Bits

class BitsTests: XCTestCase {
    
    let one = Bit.one
    let zero = Bit.zero
    
    func testBitwiseAnd(){
        
        XCTAssertEqual(one & one, .one)
        XCTAssertEqual(one & zero, .zero)
        XCTAssertEqual(zero & zero, .zero)
        XCTAssertEqual(zero & one, .zero)
        
    }
    
    func testBitwiseOr(){
        
        XCTAssertEqual(one | one, .one)
        XCTAssertEqual(one | zero, .one)
        XCTAssertEqual(zero | zero, .zero)
        XCTAssertEqual(zero | one, .one)
        
    }
    
    func testBitwiseNot(){
        
        XCTAssertEqual(!one, .zero)
        XCTAssertEqual(!zero, .one)
        
    }
    
    func testXor(){
        
        XCTAssertEqual(one ^ one, .zero)
        XCTAssertEqual(one ^ zero, .one)
        XCTAssertEqual(zero ^ zero, .zero)
        XCTAssertEqual(zero ^ one, .one)
        
    }
    
}
