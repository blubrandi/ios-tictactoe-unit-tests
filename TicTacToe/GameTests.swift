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
    var board = GameBoard()
    var game: Game?
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
        let game = Game()
        XCTAssertEqual(game.activePlayer, GameBoard.Mark.x)
    }
    
    func testPlayerXMarksOccupiedSquare() {
        var game = Game()

        XCTAssertNoThrow(try board.place(mark: .x, on: (2,2)))
        XCTAssertThrowsError(try board.place(mark: .o, on: (2,2)))
        XCTAssertThrowsError(try board.place(mark: .x, on: (2,2)))
    }

}
