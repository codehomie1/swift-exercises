/*
    build a game of tic-tac-toe using swift
*/

print("\nWelcome to Tic Tac Toe!")

var board: [[String]] = [
    ["1", "2", "3"],
    ["4", "5", "6"],
    ["7", "8", "9"],
]

var currentPlayerTurn: String = Bool.random() ? "X" : "O"

// main game loop (reset, starting turn)
while true {

    resetBoard()
    currentPlayerTurn = Bool.random() ? "X" : "O"
    printBoard()

    // inner game loop ( turns, winner check)
    while true {
        takeTurn()
        printBoard()
        
        if isWinner() {
            print("Player \(currentPlayerTurn) has won !!")
            break
        }

        if isBoardFull() {
            print("nobody won this game...")
            break
        }

        switchPlayerTurn()
    }
    
    if !permissionToRestart() {
        print("\n~~~Thanks for playing~~~\n")
        break
    }

}
