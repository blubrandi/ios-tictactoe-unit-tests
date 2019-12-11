//
//  Game.swift
//  TicTacToe
//
//  Created by Brandi on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Game {
    
    // Restarts the game to a fresh state with an empty board, and player X starting.
    mutating internal func restart() {
        
    }
    
    // adds a mark for the currently active player at the given coordinate. Updates game state.
    mutating internal func makeMark(at coordinate: Coordinate) throws {
        
    }

    private(set) var board: GameBoard

    // The currently active player, either .x or .o. That is, the player whose turn it is. nil if the game is over.
    internal var activePlayer: GameBoard.Mark?
    
    //true if the game is over (either won or a cat's game), false if the game is still running.
    internal var gameIsOver: Bool
    
    // The player that won the game, either .x or .o. nil if the game is still running, or it's a cat's game (no one won).
    internal var winningPlayer: GameBoard.Mark?
}
