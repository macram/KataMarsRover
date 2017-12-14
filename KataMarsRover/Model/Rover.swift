//
//  Rover.swift
//  KataMarsRover
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import UIKit

enum Direction {
    case North
    case East
    case South
    case West
}


class Rover {
    static let DEFAULT_X = 0
    static let DEFAULT_Y = 0
    static let DEFAULT_DIRECTION: Direction = Direction.North
    
    var x: Int
    var y: Int
    var direction: Direction
    
    
    init(x initialX: Int = Rover.DEFAULT_X, y initialY: Int = Rover.DEFAULT_Y, direction initialDirection: Direction = DEFAULT_DIRECTION ) {
        self.x = initialX
        self.y = initialY
        self.direction = initialDirection
    }
    
    func move(movements: String) {
        var moves = movements
        while !moves.isEmpty {
            turn(movement: moves.first!)
            moves = String(moves.dropFirst())
        }
    }
    
    func turn(movement: Character) {
        if movement == "L" {
            switch direction {
            case Direction.North: direction = Direction.West
            case Direction.East: direction = Direction.North
            case Direction.South: direction = Direction.East
            case Direction.West: direction = Direction.South
            default: break
            }
        }
        else if movement == "R" {
            switch direction {
            case Direction.North: direction = Direction.East
            case Direction.East: direction = Direction.South
            case Direction.South: direction = Direction.West
            case Direction.West: direction = Direction.North
            default: break
            }
        }
    }
}
