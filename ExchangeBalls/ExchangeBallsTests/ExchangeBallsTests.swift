//
//  ExchangeBallsTests.swift
//  ExchangeBallsTests
//
//  Created by Patomphong Wongkalasin on 9/20/2560 BE.
//  Copyright © 2560 ReedUs TechReedUS. All rights reserved.
//

import XCTest
@testable import ExchangeBalls

class ExchangeBallsTests: XCTestCase {
    
    let exchange = Exchange()
    
    func testValidateOperationsAndSetsWith4And2ShouldTrue() {
        XCTAssertTrue(exchange.validateOperationsAndSets(N: 4, K: 2))
    }
    
    func testValidateOperationsAndSetsWith16And1000000000ShouldTrue() {
        XCTAssertTrue(exchange.validateOperationsAndSets(N: 16, K: 1000000000))
    }
    
    func testValidateOperationsAndSetsWith51And2ShouldFalse() {
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 51, K: 2))
    }
    
    func testValidateOperationsAndSetsWith16And1000000001ShouldFalse() {
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 16, K: 1000000001))
    }
    
    func testValidateOperationsAndSetsWith0And1000000000ShouldFalse() {
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 0, K: 1000000000))
    }
    
    func testValidateOperationsAndSetsWith4And0ShouldFalse() {
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 4, K: 0))
    }
    

}
