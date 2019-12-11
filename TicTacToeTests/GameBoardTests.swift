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

    // test placing marks on the screen
    // testing the place() method in GameBoard.swift
    func testPlacingMarks() {
        var board = GameBoard()
        
        // XCTAssertNoThrow: As long as it doesn't throw an error, the test will pass.
        XCTAssertNoThrow(try board.place(mark: .o, on: (0,0)))
        XCTAssertEqual(board[(0,0)], .o) // Once we place an o at 0,0, is there really an o at 0,0?
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (2,2)))
        XCTAssertEqual(board[(2,2)], .x)// Once we place an x at 2,2, is there really an o at 2,2?
        
        // Make sure that once the o and x are placed, the rest of the squares are blank.
        for x in 0..<3 {
            for y in 0..<3 {
                
                // Add exceptions for x and o that are there
                if x == 0 && y == 0 { continue } // Coordinates of x and y = 0, skipping those squares
                if x == 2 && y == 2 { continue } // Coordinates of x and y = 2, skipping those squares
                XCTAssertNil(board[(x, y)])
            }
        }
        
        // make sure you can't change an already marked square
        // Refer to 34:50 in video for better explanation
        // Try to add an x to 0,0 to make sure it fails and you can't place an x there since there is already one there.
        XCTAssertThrowsError(try board.place(mark: .x, on: (0,0))) { (error) in //if the thing that gets passed into is an error
            XCTAssertEqual(error as? GameBoardError, GameBoardError.invalidSquare) // refer to place() method
        }
        
//         See 40:20 for inverse to force a failed test
    }
}
