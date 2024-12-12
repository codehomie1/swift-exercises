
/* 
    holds board functions like printing
*/

func printBoard(_ board: [[String]]) -> Void {

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
