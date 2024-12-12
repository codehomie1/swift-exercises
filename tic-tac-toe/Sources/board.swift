/*
    holds board functions 
*/

@MainActor
func printBoard() {

    let rows = board.count
    let cols = board[0].count
    print("\n")

    for row in 0..<rows {
        for col in 0..<cols {
            if col == 2 {
                print(board[row][col], terminator: " \n")

            } else {
                print(board[row][col], terminator: " | ")
            }
        }
        if row != 2 {
            print("- - - - -")
        }
    }
    print("\n")
}

@MainActor
func isBoardFull() -> Bool {
    
    //if a cell not equal to 0 or X then its an empty cell
    // an empty cell means the board is not full
    for row in board {
        for col in row {
            if col != "X" && col != "O" {
                return false
            }
        }
    }

    return true
}

@MainActor
func resetBoard() {
    board = [
        ["1", "2", "3"],
        ["4", "5", "6"],
        ["7", "8", "9"],
    ]
}
