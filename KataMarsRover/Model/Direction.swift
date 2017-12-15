//
//  File.swift
//  KataMarsRover
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import Foundation

enum Direction: Directionable {
        
    case north
    case east
    case south
    case west
    
    func turnRight() -> Directionable {
        switch currentDirection {
        case Direction.north: return Direction.east
        case Direction.east: return Direction.south
        case Direction.south: return Direction.west
        case Direction.west: return Direction.north
        default: return Direction.north
        }
    }
    
    func turnLeft() -> Directionable {
        switch currentDirection {
        case Direction.north: return Direction.west
        case Direction.east: return Direction.north
        case Direction.south: return Direction.east
        case Direction.west: return Direction.south
        default: return Direction.north
        }
    }
    
    var currentDirection: Direction {
        return self
    }
}
