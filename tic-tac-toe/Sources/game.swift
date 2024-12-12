

/* 
    holds core functions of game like taking turns 
    and checking if games over. 
*/

@MainActor
func switchPlayerTurn() -> Void {
    currentPlayerTurn  = currentPlayerTurn == "X" ? "O" : "X"
}

@MainActor
func takeTurn() -> Void {
    let (x,y) = getPlayerTurn()
    board[x][y] = currentPlayerTurn
}

@MainActor 
func isWinner() -> Bool {

    // check rows for winner
    for row in board {
        let checkRow = row[0] == currentPlayerTurn && row[1] == currentPlayerTurn 
        && row[2] == currentPlayerTurn
        if checkRow {
            return true
        }
    }

    // check cols
    for col in 0...2 {
        let checkCol: Bool = board[0][col] == currentPlayerTurn && 
        board[1][col] == currentPlayerTurn && board[2][col] == currentPlayerTurn
        if checkCol {
            return true
        }
    }

    // check rtl and ltr diag
    if (board[0][0] == currentPlayerTurn && 
    board[1][1] == currentPlayerTurn && board[2][2] == currentPlayerTurn) || 
    (board[0][2] == currentPlayerTurn && board[1][1] == currentPlayerTurn && board[2][0] == currentPlayerTurn) 
    {
        return true
    }

    return false
}   