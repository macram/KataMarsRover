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
    
    let MAINX = 3
    let MAINY = 4
    let MAINDIR: Direction = Direction.north

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
        XCTAssertEqual(50, Rover.DEFAULTX)
    }

    func testInitialYPositionIs0() {
        //Assert
        XCTAssertEqual(50, Rover.DEFAULTY)
    }

    func testInitialRoverIsAtDefaultX() {
        //Assert
        XCTAssertEqual(sut!.coordinateX, Rover.DEFAULTX)
    }

    func testInitialRoverIsAtDefaultY() {
        //Assert
        XCTAssertEqual(sut!.coordinateY, Rover.DEFAULTY)
    }

    func testInitRoverAtPositionX() {
        sut = Rover(x: MAINX)

        XCTAssertEqual(sut!.coordinateX, MAINX)
    }

    func testInitRoverAtPositionY() {
        sut = Rover(y: MAINY)

        XCTAssertEqual(sut!.coordinateY, MAINY)
    }

    func testDefaultDirectionIsNorth() {
        //Assert
        XCTAssertEqual(sut!.currentDirection.currentDirection, Rover.DEFAULTDIRECTION)
    }

    func testInitDirectionIsNorth() {
        //Assert
        sut = Rover(direction: MAINDIR)

        XCTAssertEqual(sut!.currentDirection.currentDirection, MAINDIR)
    }

    func testMoveRoverLeftReturnsWest() {
        sut = Rover(direction: MAINDIR)
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "L")

        XCTAssertEqual(sut!.currentDirection.currentDirection, Direction.west)
    }

    func testMoveRoverRightReturnsEast() {
        sut = Rover(direction: MAINDIR)
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "R")
        
        XCTAssertEqual(sut!.currentDirection.currentDirection, Direction.east)
    }
    
    func testGoForwardFromDefaultStateIncrementsY() {
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "F")
        XCTAssertEqual(Rover.DEFAULTY+1, sut!.coordinateY)
    }
    
    func testGoBackFromDefaultStateIncrementsY() {
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "B")
        XCTAssertEqual(Rover.DEFAULTY-1, sut!.coordinateY)
    }
    
    func testRotateRightAndGoForwardIngrementsX() {
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "RF")
        XCTAssertEqual(Rover.DEFAULTX+1, sut!.coordinateX)
    }
    
    func testRotateLeftAndGoForwardDecrementsX() {
        sut!.currentDirection = DirectionMocks()
        sut!.move(movements: "LF")
        XCTAssertEqual(Rover.DEFAULTX-1, sut!.coordinateX)
    }
    
    func testGoForwardFrom99To0Y() {
        sut = Rover(x: 99, y: 99)
        sut!.move(movements: "F")
        XCTAssertEqual(0, sut!.coordinateY)
    }
    
    func testGoBackFrom0to99Y() {
        sut = Rover(x: 0, y: 0)
        sut!.move(movements: "B")
        XCTAssertEqual(MAXY-1, sut!.coordinateY)
    }
    
    func testGoForwardFrom99to0X() {
        sut = Rover(x: 99, y: 99)
        sut!.move(movements: "RF")
        XCTAssertEqual(0, sut!.coordinateX)
    }
    
    func testGoForwardFrom0to99X() {
        sut = Rover(x: 0, y: 0)
        sut!.move(movements: "LF")
        XCTAssertEqual(MAXX-1, sut!.coordinateX)
    }
}
