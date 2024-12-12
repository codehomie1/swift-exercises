

/* 
    holds core functions of game like taking turns 
    and checking if games over. 
*/

@MainActor
func takeTurn(_ player: Int) -> Void {
    let (x,y) = getPlayerTurn(turnof: player)
  
    if player == 0 {
        board[x][y] = "X"
    } else {
        board[x][y] = "O"
    }

}