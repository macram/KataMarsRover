//
//  DirectionTests.swift
//  KataMarsRoverTests
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import XCTest

class DirectionTests: XCTestCase {
    
    var sut: DirectionMocks?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = DirectionMocks()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        
        super.tearDown()
    }
    
    func testLeftCommandInvokesTurnLeftOfDirection() {
        let sut = DirectionMocks()
        
        sut.turnLeft()
        XCTAssertTrue(sut.turnedLeft)
    }
    
    func testRightCommandInvokesTurnRightOfDirection() {
        let sut = DirectionMocks()
        
        sut.turnRight()
        XCTAssertTrue(sut.turnedRight)
    }
}
