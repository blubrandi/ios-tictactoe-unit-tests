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
    
    private var gameState: GameState = .active(.x) {
        didSet {
//            switch gameState {
//            case .active:
//
//            case .cat:
//                gameIsOver = true
//
//            case .won:
//                gameIsOver = true
//            }
        }
        
        // switch game state
        // case state
        // winningPlayer
        // isOver
        // activePlayer
    }
    
    

    
    
    

    
    // Restarts the game to a fresh state with an empty board, and player X starting.
    mutating internal func restart() {
        board = GameBoard()
        gameState = .active(.x)
    }
    
    // adds a mark for the currently active player at the given coordinate. Updates game state.
    mutating internal func makeMark(at coordinate: Coordinate) throws {
        
        guard case let GameState.active(player) = gameState else {
            NSLog("Game is over")
            return
        }
        
        do {
            try board.place(mark: player, on: coordinate)
            if game(board: board, isWonBy: player) {
                gameState = .won(player)
            } else if board.isFull {
                gameState = .cat
            } else {
                let newPlayer = player == .x ? GameBoard.Mark.o : GameBoard.Mark.x
                gameState = .active(newPlayer)
            }
        } catch {
            NSLog("Illegal move")
        }
        
    }

}
