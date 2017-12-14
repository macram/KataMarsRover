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
        XCTAssertEqual(sut!.direction, Rover.DEFAULT_DIRECTION)
    }
    
    func testInitDirectionIsS() {
        //Assert
        sut = Rover(direction: MAIN_DIR)
        
        XCTAssertEqual(sut!.direction, MAIN_DIR)
    }
    
    func testMoveRoverRight() {
        sut!.move(movements: "R")
        
        XCTAssertEqual(sut!.direction, Direction.East)
    }
    
    func testMoveRoverRightTwice() {
        sut!.move(movements: "RR")
        
        XCTAssertEqual(sut!.direction, Direction.South)
    }
    
    func testMoveRoverRightThrice() {
        sut!.move(movements: "RRR")
        
        XCTAssertEqual(sut!.direction, Direction.West)
    }
    
    func testMoveRoverRightFourTimes() {
        sut!.move(movements: "RRRR")
        
        XCTAssertEqual(sut!.direction, Direction.North)
    }
    
    func testMoveRoverLeft() {
        sut!.move(movements: "L")
        
        XCTAssertEqual(sut!.direction, Direction.West)
    }
    
    func testMoveRoverLeftTwice() {
        sut!.move(movements: "LL")
        
        XCTAssertEqual(sut!.direction, Direction.South)
    }
    
    func testMoveRoverLeftThrice() {
        sut!.move(movements: "LLL")
        
        XCTAssertEqual(sut!.direction, Direction.East)
    }
    
    func testMoveRoverLeftFourTimes() {
        sut!.move(movements: "LLLL")
    
        XCTAssertEqual(sut!.direction, Direction.North)
    }

    func testTurnRoverLeft() {
        sut = Rover(direction: MAIN_DIR)
        sut!.turn(movement: "L")
        
        XCTAssertEqual(sut!.direction, Direction.West)
    }
    
    func testTurnRoverRight() {
        sut = Rover(direction: MAIN_DIR)
        sut!.turn(movement: "R")
        
        XCTAssertEqual(sut!.direction, Direction.East)
    }
    
    func testMoveLeftThenRight() {
        let initialDirection = sut!.direction
        sut!.move(movements: "LR")
        
        XCTAssertEqual(sut!.direction, initialDirection)
    }
}
