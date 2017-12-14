//
//  Directionable.swift
//  KataMarsRoverTests
//
//  Created by Manu Mateos on 14/12/17.
//  Copyright © 2017 Liquid Squad. All rights reserved.
//

import Foundation

protocol Directionable {
    func turnRight() -> Directionable
    func turnLeft() -> Directionable
    var currentDirection: Direction {
        get
    }
}
