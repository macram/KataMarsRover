//
//  File.swift
//  KataMarsRover
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import Foundation

enum Direction: Directionable {
        
    case North
    case East
    case South
    case West
    
    func turnRight() -> Directionable {
        switch currentDirection {
        case Direction.North: return Direction.East
        case Direction.East: return Direction.South
        case Direction.South: return Direction.West
        case Direction.West: return Direction.North
        default: return Direction.North
        }
    }
    
    func turnLeft() -> Directionable {
        switch currentDirection {
        case Direction.North: return Direction.West
        case Direction.East: return Direction.North
        case Direction.South: return Direction.East
        case Direction.West: return Direction.South
        default: return Direction.North
        }
    }
    
    var currentDirection: Direction {
        return self
    }
}
