//
//  KataMarsRoverTests.swift
//  KataMarsRoverTests
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import XCTest
@testable import KataMarsRover

class KataMarsRoverTests: XCTestCase {
    
    var sut: Rover?
    
    let MAIN_X = 3
    let MAIN_Y = 4
    let MAIN_DIR: Direction = Direction.North
    
    override func setUp() {
        super.setUp()
        sut = Rover()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testSutIsNotNil() {
        //Assert
        XCTAssertNotNil(sut)
    }
    
    func testInitialXPositionIs0() {
        //Assert
        XCTAssertEqual(0, Rover.DEFAULT_X)
    }

    func testInitialYPositionIs0() {
        //Assert
        XCTAssertEqual(0, Rover.DEFAULT_Y)
    }
    
    func testInitialRoverIsAtDefaultX() {
        //Assert
        XCTAssertEqual(sut!.x, Rover.DEFAULT_X)
    }
    
    func testInitialRoverIsAtDefaultY() {
        //Assert
        XCTAssertEqual(sut!.y, Rover.DEFAULT_Y)
    }
    
    func testInitRoverAtPositionX() {
        sut = Rover(x: MAIN_X)
        
        XCTAssertEqual(sut!.x, MAIN_X)
    }
    
    func testInitRoverAtPositionY() {
        sut = Rover(y: MAIN_Y)
        
        XCTAssertEqual(sut!.y, MAIN_Y)
    }
    
    func testDefaultDirectionIsNorth() {
        //Assert
        XCTAssertEqual(sut!.currentDirection.currentDirection, Rover.DEFAULT_DIRECTION)
    }

    func testInitDirectionIsNorth() {
        //Assert
        sut = Rover(direction: MAIN_DIR)

        XCTAssertEqual(sut!.currentDirection.currentDirection, MAIN_DIR)
    }

    func testMoveRoverLeftReturnsWest() {
        sut = Rover(direction: MAIN_DIR)
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "L")

        XCTAssertEqual(sut!.currentDirection.currentDirection, Direction.West)
    }

    func testMoveRoverRightReturnsEast() {
        sut = Rover(direction: MAIN_DIR)
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "R")
        
        XCTAssertEqual(sut!.currentDirection.currentDirection, Direction.East)
    }
}
