//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {    
    
    // how to check that the test we setup for win has particular outcome
    // check verticals
    // refer to 52:15 for explanation of this loop

        for x in 0..<3 {
        var numMarks = 0
        for y in 0..<3 {
            if board[(x,y)] == player {
                numMarks += 1
            }
        }
        if numMarks == 3 {
            return true
        }
    }
    
    
     // check horizontals
    
    for y in 0..<3 {
        var numMarks = 0
        for x in 0..<3 {
            if board[(x,y)] == player {
                numMarks += 1
            }
        }

        if numMarks == 3 {
            return true
        }
    }

    // check diagonals
    
    let ltr: [Coordinate] = [(0,0), (1,1), (2,2)]
    var numMatches = 0
    for coordinate in ltr {
        if board[coordinate] == player {
            // board receives coordinates, and if it matches, it will increment
            numMatches += 1
        }
    }
    
    if numMatches == 3 { return true }
    
    let rtl: [Coordinate] = [(2,0), (1,1), (0,2)]
    numMatches = 0
    for coordinate in rtl {
        if board[coordinate] == player {
            // board receives coordinates, and if it matches, it will increment
            numMatches += 1
        }
    }

    if numMatches == 3 { return true }
    
    return false
}
