//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs:Int, rhs:Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs:Int, rhs:Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs:Int, rhs:Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs:Int, rhs:Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs:Int, rhs:Int, op:(_:Int, _:Int) -> Int) -> Int {
        return op(lhs,rhs)
    }
    
    //returns 0 if numbers is empty
    func add(_ numbers:[Int]) -> Int {
        return numbers.reduce(0, {$0 + $1})
    }
    
    //returns 1 if numbers is empty
    func multiply(_ numbers:[Int]) -> Int {
        return numbers.reduce(1, {$0 * $1})
    }
    
    func count(_ numbers:[Int]) -> Int {
        return numbers.count
    }
    
    //returns 0 if numbers is empty
    func avg(_ numbers:[Int]) -> Int {
        return numbers.count == 0 ? 0 : self.add(numbers) / self.count(numbers)
    }
    
    func mathOp(args:[Int], beg:Int, op:(_:Int, _:Int) -> Int) -> Int {
        return args.reduce(beg, op)
    }
    
    func add(lhs:(Int, Int), rhs:(Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract(lhs:(Int, Int), rhs:(Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func add(lhs:[String: Int], rhs:[String: Int]) -> [String: Int] {
        var returnedValue:[String:Int] = [:]
        lhs.keys.forEach { (key) in
            returnedValue[key] = lhs[key]! + rhs[key]!
        }
        return returnedValue
    }
    
    func subtract(lhs:[String: Int], rhs:[String: Int]) -> [String: Int] {
        var returnedValue:[String:Int] = [:]
        lhs.keys.forEach { (key) in
            returnedValue[key] = lhs[key]! - rhs[key]!
        }
        return returnedValue
    }
    
}
