//
//  CalModel.swift
//  calculater
//
//  Created by 최지혁 on 2022/04/17.
//

import UIKit

enum Operation {
    case Add
    case Subtract
    case Divide
    case Multiply
    case unknown
}

class CalModel: NSObject {
    
    var displayNumber = ""
    var firstOperand = ""
    var secondOperand = ""
    var result = ""
    var currentOperation: Operation = .unknown
    
    func updateNum() -> String {
        return self.result
    }
    
    
    func inputNum(num:String) -> String {
        if self.displayNumber.count < 9 {
            //modelOuputNumber += num
            self.displayNumber += num
        }
        return displayNumber
    }
    
    func clickZeroBtn() -> String{
        return inputNum(num: "0")
        
        
    }
    func clickOneBtn() -> String{
        return inputNum(num: "1")
        
    }
    func clickTwoBtn() -> String{
        return inputNum(num: "2")
        
        
    }
    func clickThreeBtn() -> String{
        return inputNum(num: "3")
        
        
    }
    func clickFourBtn() -> String{
        return inputNum(num: "4")
        
        
    }
    func clickFiveBtn() -> String{
        return inputNum(num: "5")
        
        
    }
    func clickSixBtn() -> String{
        return inputNum(num: "6")
        
        
    }
    func clickSevenBtn() -> String{
        return inputNum(num: "7")
        
        
    }
    func clickEightBtn() -> String{
        return inputNum(num: "8")
        
        
    }
    func clickNineBtn() -> String{
        return inputNum(num: "9")
        
        
    }
    
    func clickClearBtn() -> String {
        //modelOuputNumber = ""
        
        self.displayNumber = ""
        self.firstOperand = ""
        self.secondOperand = ""
        self.result = ""
        self.currentOperation = .unknown
        
        
        return displayNumber
    }
    
    func clickPlusBtn() -> String {
        self.operation(.Add)
        return displayNumber
    }
    
    func clickMinusBtn() -> String {
        self.operation(.Subtract)
        return displayNumber
    }
    
    func clickMultiBtn() -> String {
        self.operation(.Multiply)
        return displayNumber
    }
    
    func clickDevideBtn() -> String {
        self.operation(.Divide)
        return displayNumber
        
    }
    
    func clickPercentBtn() -> String {
        return "Percent"
    }
    
    func clickEqualBtn() -> String {
        self.operation(self.currentOperation)
        return result
    }
    
    func operation(_ operation: Operation) {
        if self.currentOperation != .unknown {
            if !self.displayNumber.isEmpty {
                self.secondOperand = self.displayNumber
                self.displayNumber = ""
                
                guard let firstOperand = Double(self.firstOperand) else { return }
                guard let secondOperand = Double(self.secondOperand) else { return }
                
                switch self.currentOperation {
                case .Add:
                    self.result = "\(firstOperand + secondOperand)"
                    
                case .Subtract:
                    self.result = "\(firstOperand - secondOperand)"
                    
                case .Divide:
                    self.result = "\(firstOperand / secondOperand)"
                    
                case .Multiply:
                    self.result = "\(firstOperand * secondOperand)"
                    
                default:
                    break
                }
                
                if let result = Double(self.result), result.truncatingRemainder(dividingBy: 1) == 0 {
                    self.result = "\(Int(result))"
                }
                
                self.firstOperand = self.result
            }
            
            self.currentOperation = operation
        } else {
            self.firstOperand = self.displayNumber
            self.currentOperation = operation
            self.displayNumber = ""
        }
    }
    
    
}
