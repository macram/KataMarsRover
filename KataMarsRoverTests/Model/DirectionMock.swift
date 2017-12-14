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
        return Direction.South
    }
    
    func turnLeft() -> Directionable {
        turnedLeft = true
        return Direction.North
    }
    
    var currentDirection: Direction {
        return Direction.East
    }
}
