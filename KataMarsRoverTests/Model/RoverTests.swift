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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Rover()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSutIsNotNil() {
        //Arrange
        //Act
        //Assert
        XCTAssertNotNil(sut)
    }
    
    func testInitialXPositionIs0() {
        //Arrange
        
        //Act
        
        //Assert
    }

    func testInitialYPositionIs0() {
        //Arrange
        
        //Act
        
        //Assert
    }
    
    func testInitialRoverIsAtDefaultX() {
        //Arrange
        
        //Act
        
        //Assert
    }
    
    func testInitialRoverIsAtDefaultY() {
        //Arrange
        
        //Act
        
        //Assert
    }

}
