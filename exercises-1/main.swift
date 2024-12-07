/*
Swift fundamentals
Constants Variables Types Exercises
*/
import Foundation

// 1.1
let exercises = 10
var exercisesSolved = 0
exercisesSolved += 1


// 1.2
let expression = 5 * 3 - 4 / 2 * 2
let expression_with_parenthesis = (5*3) - ((4/2) * 2)
print(expression == expression_with_parenthesis)
exercisesSolved += 1

// 1.3
var a = 2.0
var b = 3.0
print("Before a = ", a, "b = ", b)
var temp = a
a = b
b = temp
print("After a = ", a, "b = ", b)
exercisesSolved += 1

// 1.4
var average = (a + b) / 2
print(average)
exercisesSolved += 1

// 1.5
var farenheit = 100.0
var celsuis = (farenheit - 32.0) / 1.8
print(celsuis)
exercisesSolved += 1

// 1.6
var row = 3
var column = 5
// formula for position
//  ( row * 8 ) + column 
var position = (row * 8 ) + column
print("position for coords: ", row, " ",column ," ", position)

position = 34
let get_column = position % 8
let get_row  = (position - get_column) / 8
// 0,8,16,24,32,40,48,56 mod 8 = 0 ( this helps narrow down col )
// example position = 30
/*
 column  = 30 % 8 = 6
 row = (30 - 6) / 8 = (24)/8 = 3
 therefore for position 30 we get coordinates 3,6 which are the correct coords for position 30.
*/
exercisesSolved += 1

// 1.7
// dividend is number being divided
// divisor is number thats doing the dividing
let dividend = 12.0
let divisor = 4.0
let quotient = dividend / divisor // 12 / 4 = 3 (quotient)
// ex1 remainder = 12 mod 3 = 0
// ex2 remainder = 10 / 2 = 5(quotient) , 10/3=3(quotient), remainder = 10 - (quotient * divisor) , (10 - 9)=1 correct
let remainder = dividend - (divisor * quotient)
exercisesSolved += 1

// 1.8
let degrees = 360.0
print(degrees * (Double.pi / 180.0))
exercisesSolved += 1

// 1.9
// formula for distance between 2 points
// sqrt((x2-x2)^2 + (y2-y1)^2)
let x1 = 5
let x2 = 3
let y2 = 3
let y1 = 4
let distance = sqrt((pow(Double(x2 - x1), 2)) + (pow(Double(y2 - y1), 2)))
print("distance between \(y2),\(y1) and \(x2),\(x1) is \(distance)")
exercisesSolved += 1

print("total excercises solved \(exercisesSolved)")
