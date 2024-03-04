import Foundation

class Calculator {
    // Adds two numbers
    func add(no1: Int, no2: Int) -> Int {
        return no1 + no2
    }
    
    // Subtracts two numbers
    func subtract(no1: Int, no2: Int) -> Int {
        return no1 - no2
    }
    
    // Multiplies two numbers
    func multiply(no1: Int, no2: Int) -> Int {
        return no1 * no2
    }
    
    // Divides two numbers
    func divide(no1: Int, no2: Int) -> Int {
        return no1 / no2
    }
    
    // Finds the remainder of two numbers
    func modulo(no1: Int, no2: Int) -> Int {
        return no1 % no2
    }
    
    // Calculates the result of the provided expression
    func calculate(args: [String]) -> String {
        // Ensure there's at least one number to start with
        guard let firstArg = args.first else {
            exit(1)
        }
        
        // Convert the first argument to an integer
        guard let initialNumber = Int(firstArg) else {
            exit(1)
        }
        var result = initialNumber // Set the starting result
        
        // If only one argument is provided, return it
        if args.count == 1 {
            return "\(initialNumber)"
        }

        // Iterate over the array, skipping the first number since we've already processed it
        for i in stride(from: 1, to: args.count, by: 2) {
            // Check if there are enough elements in the array and if the next element can be converted to an integer
            if i + 1 < args.count, let nextNumber = Int(args[i + 1]) {
                // Perform the appropriate operation based on the operator
                switch args[i] {
                case "+":
                    result = add(no1: result, no2: nextNumber)
                case "-":
                    result = subtract(no1: result, no2: nextNumber)
                case "x":
                    result = multiply(no1: result, no2: nextNumber)
                case "/":
                    result = divide(no1: result, no2: nextNumber)
                case "%":
                    result = modulo(no1: result, no2: nextNumber)
                default:
                    exit(1)
                }
            } else {
                exit(1)
            }
        }
        
        // Convert the result to a string and return it
        return "\(result)"
    }
}
