//
//  GameTests.swift
//  TicTacToeTests
//
//  Created by Brandi on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameTests: XCTestCase {
    
    /*
     X is first player
     X takes turn and marks an x
     Is X a winner?
     O becomes player
     O takes turn and marks an o
     Is O a winner?
     Repeat until a winner
     */
    
    func testXIsFirst() {
        var game = Game()
        XCTAssertEqual(game.activePlayer, GameBoard.Mark.x)
    }

}
