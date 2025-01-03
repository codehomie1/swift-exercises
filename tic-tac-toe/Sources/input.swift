
/*
    functions that handles user input
*/

@MainActor
func getPlayerTurn() -> (Int, Int) {

    print("Player \(currentPlayerTurn) select positon to play(1-9): ")
    var position = Int(readLine()!) ?? -1

    while position < 1 || position > 9 {
        printBoard()
        print("position \(position) out of bounds!")
        print("select positon to play: ")
        position = Int(readLine()!) ?? -1
    }

    var (x, y) = getPosition(position)

    while position == -1 || isPositionTaken(x, y) {
        printBoard()
        print("position \(position) already taken!")
        print("Player \(currentPlayerTurn) select positon to play(0-9): ")
        position = Int(readLine()!) ?? -1
        (x, y) = getPosition(position)

    }

    return (x, y)
}

// returns tuple representing row,col indicies
func getPosition(_ position: Int) -> (Int, Int) {
    switch position {
    case 1: return (0, 0)
    case 2: return (0, 1)
    case 3: return (0, 2)
    case 4: return (1, 0)
    case 5: return (1, 1)
    case 6: return (1, 2)
    case 7: return (2, 0)
    case 8: return (2, 1)
    case 9: return (2, 2)
    default: return (-1, -1)
    }
}

// given a valid position return true if position is taken
@MainActor
func isPositionTaken(_ x: Int, _ y: Int) -> Bool {
    return board[x][y] == "X" || board[x][y] == "O"
}

@MainActor
func permissionToRestart() -> Bool {
    print("Would you like to play again?(yes/no)")
    var userInput = readLine()!

    while userInput != "yes" && userInput != "no" {
        print("Would you like to play again?(yes/no)")
        userInput = readLine()!
    }

    return userInput == "yes" ? true : false
}
