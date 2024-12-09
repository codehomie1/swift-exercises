/*
    excercises 2
    using Strings, Conditionals, and Loops
    to solve problems
*/

import Foundation
var excercisesSolved = 0


// 2.1
var row = 3
var col = 4
// in most cases im going to increment the column position to get the next
// place in the board. 
// except the edge cases are where we are at the (last column) 
// or last column + last row

// if we are in last column of row -> row += 1, col=0
// if we are in last column and last row -> row=0, col=0

if (col == 7 ) && (row == 7) {
    col = 0
    row = 0
} else if (col == 7 ) {
    col = 0
    row += 1
} else {
    col += 1
}
excercisesSolved += 1

// 2.2
let a = 2.0; let b = 3.0; let c = 4.0;
let discriminant = b * b - 4 * a * c; // B^2 - 4(ac) 
var root1: Double?; var root2: Double?

// if discrinimant is neg there are no real solutions
if discriminant < 0 {
    print("no real solutions")
    root1=nil
    root2=nil
} else {
    // calculate the roots using the quadratic formula
    let sqrtDiscriminant = sqrt(discriminant)
    root1 = (-b + sqrtDiscriminant) / (2 * a)
    root2 = (-b - sqrtDiscriminant) / (2 * a)
}

print(root1, root2)
excercisesSolved += 1

// 2.3
var b1: Bool = true;var b2 = false; var b3: Bool = true;
var days: Int;
let bool = b1 && b2 || (b1 && (!b2 && b3))
excercisesSolved += 1

// 2.4
var year: Int = 2024; var month: Int = 1;

if year % 4 == 0 {
    if year % 100 == 0 {
        if year % 400 == 0 && month == 2 {
            days = 29
        }
    days = 28
    } 
} else {
    // Array of days in each month for a common year (non-leap year)
    let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    days = daysInMonth[month - 1]
}
excercisesSolved += 1

// 2.5
var number = 5
// bit maniplation every pow of 2 number has a single 1 bit on and the rest are 0
// subtracting by 1 will turn the first bit to 0 and the rest to 1 
// and performing & operation will turn the number to a zero
// example: 8  = 1000, 7 = 0111 , 1000 & 0111 = 0000
// if res of expression = 0 then number was a pow of 2
var res = number > 0 && (number & (number-1)) == 0
excercisesSolved += 1

// 2.6
var count = 0
var power = 1
while count < 10 {
    print(power)
    power *= 2
}
excercisesSolved += 1

// 2.7
var fib_num = 0
var first = 0
var second = 1
var fibres: Int = 1

if fib_num == 1 {
    fibres = first
}
if fib_num == 2 {
    fibres = second
}
for i in 2...fib_num {
    fibres = first + second
    first = second
    second = fibres
}
print(fibres)
excercisesSolved += 1

// 2.8
var fact = 1
for i in 1...4 {
    fact  = fact * i // i=1 1*1=1, i=2 1*2=2, i=3 2*3=6, i=4 4*6=24
}
excercisesSolved += 1

//2.8
let sum = 4
var ways = 0
var totalOutcomes = 36

for i in 1...6 {
    for j in 1...6 {
        if i + j == sum {
            ways += 1
        }
    }
}

// prob is ways / totalOutcomes
let prob = ways / totalOutcomes
print(prob)
excercisesSolved += 1

