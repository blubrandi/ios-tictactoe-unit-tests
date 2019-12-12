//
//  Game.swift
//  TicTacToe
//
//  Created by Brandi on 12/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Game {
    
    private enum GameState {
        case active(GameBoard.Mark) // Active player
        case cat
        case won(GameBoard.Mark) // Winning player
    }
    
    private(set) var board: GameBoard = GameBoard()
    
    internal var gameIsOver: Bool = false
    internal var winningPlayer: GameBoard.Mark? = nil
    internal var activePlayer: GameBoard.Mark? = .x

    
    // Restarts the game to a fresh state with an empty board, and player X starting.
    mutating internal func restart() {
        board = GameBoard()
        activePlayer = GameBoard.Mark.x
    }
    
    // adds a mark for the currently active player at the given coordinate. Updates game state.
    mutating internal func makeMark(at coordinate: Coordinate) throws {
        
        guard let player = activePlayer else {
            NSLog("Game is over")
            return
        }
        
        do {
            try board.place(mark: player, on: coordinate)
            if game(board: board, isWonBy: player) {
                winningPlayer = player
            } else {
                let activePlayer = player == .x ? GameBoard.Mark.o : GameBoard.Mark.x
            }
        } catch {
            NSLog("Illegal move")
        }
        
    }

}
