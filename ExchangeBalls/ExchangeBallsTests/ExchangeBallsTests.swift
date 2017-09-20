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
    
    //Test Validate Operations And Sets
    func testValidateOperationsAndSetsShouldTrue() {
        XCTAssertTrue(exchange.validateOperationsAndSets(N: 4, K: 2))
        XCTAssertTrue(exchange.validateOperationsAndSets(N: 16, K: 1000000000))
    }
    
    func testValidateOperationsAndSetsShouldFalse() {
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 51, K: 2))
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 16, K: 1000000001))
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 0, K: 1000000000))
        XCTAssertFalse(exchange.validateOperationsAndSets(N: 4, K: 0))
    }
    
    //Test Validate Ai And Bi
    func testValidateAiAndBiShouldReturnTrue() {
        XCTAssertTrue(exchange.validateAiAndBi(1, 2))
        XCTAssertTrue(exchange.validateAiAndBi(2, 1))
        XCTAssertTrue(exchange.validateAiAndBi(2, 3))
    }
    
    func testValidateAiAndBiShouldReturnFalse() {
        XCTAssertFalse(exchange.validateAiAndBi(0, 8))
        XCTAssertFalse(exchange.validateAiAndBi(9, 1))
        XCTAssertFalse(exchange.validateAiAndBi(0, 7))
        XCTAssertFalse(exchange.validateAiAndBi(4, 10))
    }
    
    //Test Swap Balls
    func testSwapBallsShouldReturnTrue() {
        
        exchange.swapBalls(1, 2)
        
        XCTAssertEqual(exchange.ballNumbers[0], 2)
        XCTAssertEqual(exchange.ballNumbers[1], 1)
        
        exchange.swapBalls(4, 5)
        
        XCTAssertEqual(exchange.ballNumbers[3], 5)
        XCTAssertEqual(exchange.ballNumbers[4], 4)
    }
    
    func testSwapBallsShouldReturnFalse() {
        
        exchange.swapBalls(9, 2)
        
        XCTAssertFalse(exchange.ballNumbers[1] == 9)
        
        exchange.swapBalls(5, 10)
        
        XCTAssertFalse(exchange.ballNumbers[4] == 10)
    }

}
