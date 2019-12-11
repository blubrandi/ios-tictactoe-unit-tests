//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Brandi on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {

    // Test various scenarios where a player might win
    // X is winning by putting a column on the left side.  We'll make o play the top and middle of the middle column
    func testWinCheckingVertical1() {
        // make gameboard object
        var board = GameBoard()
        
        // Below, making a reference to what the game board should look like for reference.
        /*
                 x o -
                 x o -
                 x - -
         */
        
        // make board have that state
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (1,0))
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .o, on: (1,1))
        try! board.place(mark: .x, on: (0,2))
        
        // Call it
        // It should be true that X won, and that O lost.
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    // see 56:00 to see changing it to fail
    
    // Make a test to check a different vertical win
    func testWinCheckingVertical2() {
        //create gameboard object
        var board = GameBoard()
        
        /*              Board Coords, for reference
            o x -       0,0  1,0  2,0
            o x -       0,1  1,1  2,1
            - x -       0,2  1,2  2,2
         */
        
        // make board have that state
        
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .o, on: (0,0))
        try! board.place(mark: .x, on: (1,1))
        try! board.place(mark: .o, on: (0,1))
        try! board.place(mark: .x, on: (1,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    // Make a test to check a different vertical win - this time O wins
    func testWinCheckingVertical3() {
        //create gameboard object
        var board = GameBoard()
        
        /*              Board Coords, for reference
            x x o       0,0  1,0  2,0
            - x o       0,1  1,1  2,1
            - - o       0,2  1,2  2,2
         */
        
        // make board have that state
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (2,0))
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .o, on: (2,1))
        try! board.place(mark: .x, on: (1,1))
        try! board.place(mark: .o, on: (2,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
    }
    
    // Horizontal wins
    
    func testWinCheckingHorizontal1() {
           //create gameboard object
           var board = GameBoard()
           
           /*              Board Coords, for reference
               x x x       0,0  1,0  2,0
               o o -       0,1  1,1  2,1
               - - -       0,2  1,2  2,2
            */
           
           // make board have that state
           
           try! board.place(mark: .x, on: (0,0))
           try! board.place(mark: .o, on: (0,1))
           try! board.place(mark: .x, on: (1,0))
           try! board.place(mark: .o, on: (1,1))
           try! board.place(mark: .x, on: (2,0))
           
           XCTAssertTrue(game(board: board, isWonBy: .x))
           XCTAssertFalse(game(board: board, isWonBy: .o))
       }
    
    func testWinCheckingDiagnoal1() {
           //create gameboard object
           var board = GameBoard()
           
           /*              Board Coords, for reference
               x - -       0,0  1,0  2,0
               - x -       0,1  1,1  2,1
               o o x       0,2  1,2  2,2
            */
           
           // make board have that state
           
           try! board.place(mark: .x, on: (0,0))
           try! board.place(mark: .o, on: (0,2))
           try! board.place(mark: .x, on: (1,1))
           try! board.place(mark: .o, on: (1,2))
           try! board.place(mark: .x, on: (2,2))

           XCTAssertTrue(game(board: board, isWonBy: .x))
           XCTAssertFalse(game(board: board, isWonBy: .o))
       }
}
