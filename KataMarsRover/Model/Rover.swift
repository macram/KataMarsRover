//
//  Rover.swift
//  KataMarsRover
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

let MAXX = 100
let MAXY = 100

class Rover {

    static let DEFAULTX = 50
    static let DEFAULTY = 50
    static let DEFAULTDIRECTION: Direction = Direction.north

    var coordinateX: Int
    var coordinateY: Int
    var currentDirection: Directionable
    
    init(x initialX: Int = Rover.DEFAULTX,
         y initialY: Int = Rover.DEFAULTY,
         direction initialDirection: Direction = DEFAULTDIRECTION ) {
        self.coordinateX = initialX
        self.coordinateY = initialY
        self.currentDirection = initialDirection
    }

    func move(movements: String) {
        for char in movements {
            if char == "L" {
                currentDirection = currentDirection.turnLeft()
            } else if char == "R" {
                currentDirection = currentDirection.turnRight()
            } else if char == "F" {
                goForward()
            } else if char == "B" {
                goBack()
            }
        }
    }

    func goForward() {
        switch currentDirection.currentDirection {
        case .north: coordinateY = (coordinateY+1)%MAXY
        case .south: coordinateY = (coordinateY+MAXY-1)%MAXY
        case .east: coordinateX = (coordinateX+1)%MAXX
        case .west: coordinateX = (coordinateX+MAXX-1)%MAXX
        default: break
        }
    }

    func goBack() {
        switch currentDirection.currentDirection {
        case .south: coordinateY = (coordinateY+1)%MAXY
        case .north: coordinateY = (coordinateY+MAXY-1)%MAXY
        case .west: coordinateX = (coordinateX+1)%MAXX
        case .east: coordinateX = (coordinateX+MAXX-1)%MAXX
        default: break
        }
    }
}
