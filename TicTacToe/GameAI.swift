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
    
    return false
    

}
