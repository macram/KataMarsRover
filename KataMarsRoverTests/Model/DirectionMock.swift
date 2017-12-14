//
//  DirectionMocks.swift
//  KataMarsRoverTests
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import Foundation
@testable import KataMarsRover
//
//  File.swift
//  KataMarsRover
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

class DirectionMocks: Directionable {

    var turnedLeft = false
    var turnedRight = false
    
    func turnRight() -> Directionable {
        turnedRight = true
        return Direction.East
    }
    
    func turnLeft() -> Directionable {
        turnedLeft = true
        return Direction.West
    }
    
    var currentDirection: Direction {
        return Direction.North
    }
}
