
//
//  DirectionTest.swift
//  KataMarsRoverTests
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import Foundation

func testLeftCommandInvokesTurnLeftOfDirection() {
    let direction = DirectionMocks()
    
    direction.turnLeft()
    XCTAssertTrue(direction.turnedLeft)
}

func testRightCommandInvokesTurnRightOfDirection() {
    let direction = DirectionMocks()
    
    direction.turnRight()
    XCTAssertTrue(direction.turnedRight)
}
