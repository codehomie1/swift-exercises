/*
    build a game of tic-tac-toe using swift
*/


print("\nWelcome to Tic Tac Toe!")


var board: [[String]] = [
    ["1", "2", "3"],
    ["4", "5", "6"],
    ["7", "8", "9"]
]


printBoard(board)
takeTurn(0)
printBoard(board)
takeTurn(1)
printBoard(board)



