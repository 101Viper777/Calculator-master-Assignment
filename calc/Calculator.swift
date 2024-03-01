import Foundation

class Calculator {
    func add(no1: Int, no2: Int) -> Int {
        return no1 + no2
    }
    
    func subtract(no1: Int, no2: Int) -> Int {
        return no1 - no2
    }
    func multiply(no1: Int, no2: Int) -> Int {
        return no1 * no2
    }
    
    func divide(no1: Int, no2: Int) -> Int {
        return no1 / no2
    }
    func modulo(no1: Int, no2: Int) -> Int {
        return no1 % no2
    }
    func calculate(args: [String]) -> String {
        // Ensure there's at least one number to start with
        guard let firstArg = args.first else {
            exit(1)
        }
        
        //making sure that its a int
        guard let initialNumber = Int(firstArg) else {
            exit(1)
        }
        var result = initialNumber // starting the operation
//        print(result)

        if args.count == 1{
            return firstArg // pass the original version not the int version
            
        }
//       print(args)

        // Iterate over the array, skipping the first number since we've already processed it
        for i in stride(from: 1, to: args.count, by: 2) {
            if i + 1 < args.count, let nextNumber = Int(args[i + 1]) {


                switch args[i] {
        //switch statement to handle the calculations (self explanatory
                case "+":
                    result = add(no1: result, no2: nextNumber)
//                    print(result)
                    
                case "-":
                    result = subtract(no1: result, no2: nextNumber)
                    
                    
                case "x":
                    result = multiply(no1: result, no2: nextNumber)
                    
                    
                case "/":
                    result = divide(no1: result, no2: nextNumber)
                    
                    
                case "%":
                    result = modulo(no1: result, no2: nextNumber)

                default:
                    exit(1)                }
            } else {
                exit(1)            }
        }
        
        return "\(result)" // returning the string version
    }
}


