//
//  CalModel.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import Foundation

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
    
    //view에서 넘버버튼 입력이 들어왔을때 수행
    func inputNumberButton(num: String) -> String{
        if self.displayNumber.count < 9 {
            self.displayNumber += num
            return displayNumber
        }
        return displayNumber
    }
    
    //view에서 초기화 버튼 클릭시 초기화
    func clearButton() -> String {
        self.displayNumber = ""
        self.firstOperand = ""
        self.secondOperand = ""
        self.result = ""
        self.currentOperation = .unknown
        return displayNumber
    }
    
    //연산자 구분 후 연산 함수 실행
    func operationButton(oper: String) -> String {
        if oper == "+" {
            self.operation(.Add)
        } else if oper == "-" {
            self.operation(.Subtract)
        } else if oper == "÷" {
            self.operation(.Divide)
        } else if oper == "×" {
            self.operation(.Multiply)
        } else if oper == "=" {
            self.operation(self.currentOperation)
            return result
        }
        
        return displayNumber
    }
    
    func dotButton() -> String {
        if self.displayNumber.count < 8, !self.displayNumber.contains(".") {
            self.displayNumber += self.displayNumber.isEmpty ? "0." : "."
        }
        return displayNumber
    }
    
    //연산 함수
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
