//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Brandi on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe // imports entire target to be testable

class GameBoardTests: XCTestCase {


    // Make sure it has test at the beginning of the function name
    
    // test that makes sure the app launches with an empty board
    func testCreatingEmptyBoard() {
        // Build a gameboard object.  Reference Gameboard.swift
        let board = GameBoard()
        
        // check to make sure the spaces have no marks
        
        for x in 0..<3 { // x part of the coordinates
            for y in 0..<3 { // y part of coordinates
                // for any given x or y coordinate in gameboard, ensure there is no value
                // In the written function, if a space isn't marked, or filled, nil is returned.  In our test, we'll make sure that nil is returned to make sure that the board isn't marked or filled when a gameboard is created.
                
                // Assert: a way to test a piece of code and it's outcome (XCTAssertNil In this case).
                // Passing in x and y into the board object
                // For any/every combination of x and y, we'll check the board we created and make sure it's blank, and they are nil.  If they are all nil, the test will pass.  If there is a value, the test will fail.
                // XCTAssertNil specifically fails a test if a value is NOT nil.
                XCTAssertNil(board[(x, y)])
            }
        }
    }



}
