

/* 
    holds core functions of game like taking turns 
    and checking if games over. 
*/




@MainActor
func switchPlayerTurn() -> Void {
    currentPlayerTurn  = currentPlayerTurn == 1 ? 0 : 1
}

@MainActor
func takeTurn() -> Void {
    let (x,y) = getPlayerTurn()
  
    if currentPlayerTurn == 0 {
        board[x][y] = "X"
    } else {
        board[x][y] = "O"
    }

}