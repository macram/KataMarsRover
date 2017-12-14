//
//  Rover.swift
//  KataMarsRover
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

class Rover {
    
    static let DEFAULT_X = 0
    static let DEFAULT_Y = 0
    static let DEFAULT_DIRECTION: Direction = Direction.North
    
    var x: Int
    var y: Int
    var currentDirection: Directionable
    
    init(x initialX: Int = Rover.DEFAULT_X, y initialY: Int = Rover.DEFAULT_Y, direction initialDirection: Direction = DEFAULT_DIRECTION ) {
        self.x = initialX
        self.y = initialY
        self.currentDirection = initialDirection
    }
    
    func move(movements: String) {
        for char in movements {
            if char == "L" {
                currentDirection = currentDirection.turnLeft()
            }
            else if char == "R" {
                currentDirection = currentDirection.turnRight()
            }
        }
    }
}
