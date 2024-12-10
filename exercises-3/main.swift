/*
    exercises 3
    Advanced control flow, functions
*/

import Foundation

// 3.1
func celsiusToFarenheit(from celsius: Double) -> Double {
    // sub 85 then divide by 8
    return (celsius * 1.8) + 32
}

func farenheitToCelsius(from farenheit: Double) -> Double {
    return (farenheit - 32) / 1.8
}

// print(celsiusToFarenheit(from: 100))
// print(farenheitToCelsius(from: 212))

// 3.2
func degreesToRadians(from degrees: Double) -> Double {
    return (degrees * (Double.pi / 180.0))
}
func radiansToDegrees(from radians: Double) -> Double {
    return (radians * (180.0 / .pi))
}

// print(degreesToRadians(from: 360))
// print(radiansToDegrees(from: 6.283))

// 3.3

/*
        10 -> 1010
        use the rem to build the bin string from bot to top
        if rem is 1 add 1 else add 0
    */
func decimalToBinary(from decimal: Int) -> String {
    var binary = ""
    var number = decimal

    while number > 0 {
        binary = String(number % 2) + binary
        number /= 2
    }

    return binary.isEmpty ? "0" : binary
}

// build dec from bot to top
// if digit is 1 add 2^exponent , inc exponent
func binaryToDecimal(from binary: String) -> Int {
    var decimal = 0
    var exponent = 0
    for ch in binary.reversed() {
        if let digit = Int(String(ch)) {
            decimal += digit * Int(pow(Double(2), Double(exponent)))
            exponent += 1
        }

    }
    return decimal
}
func gethexVal(from number: Int) -> String {
    switch number % 16 {
    case 10:
        "A"
    case 11:
        "B"
    case 12:
        "C"
    case 13:
        "D"
    case 14:
        "E"
    case 15:
        "16"
    default:
        String(number % 16)
    }
}

// 3.4

func decimalToHexadecimal(from decimal: Int) -> String {
    var number = decimal
    var hexadecimal = ""

    while number > 0 {
        hexadecimal = gethexVal(from: number) + hexadecimal
        number /= 16
    }

    return hexadecimal
}

func hexToDigit(from hex: String) -> Int? {
    switch hex {
        case "A": return 10
        case "B": return 11
        case "C": return 12
        case "D": return 13
        case "E": return 14
        case "F": return 15
        default: return Int(hex)
    }
}

func hexadecimalToDecimal(from hexadecimal: String) -> Int {
    var decimal = 0
    var exponent = 0

    for hex in hexadecimal.reversed() {
        if let digit = hexToDigit(from: String(hex)) {
            decimal += digit * Int(pow(16.0, Double(exponent)))
            exponent += 1
        }
    }
    return decimal
}

// print(decimalToBinary(from: 13))
// print(binaryToDecimal(from: "1101"))

// print(decimalToHexadecimal(from: 419))
// print(hexadecimalToDecimal(from: "1A3"))

// 3.5
func getFibIterative(of n: Int) -> Int {
    
    var fib = 0
    var first = 0
    var second = 1

    for _ in 2...n {
        fib = first + second
        first = second
        second = fib
    }
    return fib
}


//print(getFibIterative(of: 6))

//3.6
func getFactorialIterative(of number: Int) -> Int {
    var fact = 1
    for i in 1...number {
        fact = fact * i
    }
    return fact
}

//print(getFactorialIterative(of: 5))

// 3.7

func getFibRecursive(of n: Int) -> Int {
    if n<=1 {
        return n
    }    
    return getFibRecursive(of: n-1) + getFibRecursive(of: n-2)
}

//print(getFibRecursive(of: 6))

// 3.8
func getFactorialRecursive(of n: Int) -> Int {
    if n<=1 { return n }
    return n * getFactorialRecursive(of: n-1)
}

//print(getFactorialRecursive(of: 5))

//3.9

func decimalToBinaryRecursive(_ decimal: Int) -> String {
    // base case is when decimal is 0 -> return 0
    if decimal <= 1 {
        return String(decimal)
    }
    // if rem == 0? add 0 else add 1 
    if decimal % 2 == 0 {
        return  decimalToBinaryRecursive(decimal / 2) + "0"
    } else {
        return  decimalToBinaryRecursive(decimal / 2) + "1"
    }
}

//print(decimalToBinaryRecursive(10))
