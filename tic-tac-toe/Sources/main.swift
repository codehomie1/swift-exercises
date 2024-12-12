/*
    build a game of tic-tac-toe using swift
*/


print("\nWelcome to Tic Tac Toe!")


var board: [[String]] = [
    ["1", "2", "3"],
    ["4", "5", "6"],
    ["7", "8", "9"]
]

var currentPlayerTurn: String = Bool.random() ? "X" : "O"
printBoard()

while !isBoardFull() {
    takeTurn()
    printBoard()
    if isWinner() {
        print("Player \(currentPlayerTurn) has won !!")
        break
    }

    switchPlayerTurn()
}

if isBoardFull() {
    print("Nobody won ...")
}



