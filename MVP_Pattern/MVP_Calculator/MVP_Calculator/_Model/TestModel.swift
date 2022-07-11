//
//  TestModel.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/07/04.
//
// 연산자 우선순위
// 1. * / %
// 2. + -


import Foundation
import UIKit

class TestModel: NSObject {
    var input = [String]()
    var operArray = [String]()
    var postfix = [String]()
    var result = ""
    var displayNumber: String = ""
    var inputLabelText = [String]()
        
    private func makePostfix() {
        for char in self.input {
            if char == "(" {
                self.operArray.append("(")
            } else if char == ")" {
                while let opr = self.operArray.popLast() {
                    guard opr != "(" else { break }
                    self.postfix.append(opr)
                }
            } else if char == "÷" || char == "×" {
                guard !self.operArray.isEmpty else { self.operArray.append(char); continue }
                
                while let opr = self.operArray.last, (opr == "÷" || opr == "×") {
                    self.postfix.append(self.operArray.popLast()!)
                }
                self.operArray.append(char)
            } else if char == "+" || char == "-" {
                guard !self.operArray.isEmpty else { self.operArray.append(char); continue }
                while let opr = self.operArray.popLast() {
                    guard opr != "(" else { self.operArray.append(opr); break }
                    self.postfix.append(opr)
                }
                self.operArray.append(char)
            } else {
                self.postfix.append(char)
            }
        }
        
        while !self.operArray.isEmpty {
            self.postfix.append(self.operArray.popLast()!)
        }
    }
    
    private func calPostfix() {
        var stack = [String]()
        self.result = ""
        
        for _element in self.postfix {
            if _element == "+" {
                guard let first = Double(stack.popLast()!) else { return }
                guard let second = Double(stack.popLast()!) else { return }
                stack.append(String(second + first) )
            } else if _element == "-" {
                guard let first = Double(stack.popLast()!) else { return }
                guard let second = Double(stack.popLast()!) else { return }
                stack.append(String(second - first) )
            } else if _element == "×" {
                guard let first = Double(stack.popLast()!) else { return }
                guard let second = Double(stack.popLast()!) else { return }
                stack.append(String(second * first) )
            } else if _element == "÷" {
                guard let first = Double(stack.popLast()!) else { return }
                guard let second = Double(stack.popLast()!) else { return }
                stack.append(String(second / first) )
            } else {
                stack.append(_element)
            }
        }
        
        self.result = stack.popLast()!
        inputLabelText = input
        input.removeAll()
        operArray.removeAll()
        postfix.removeAll()
    }
    
    
}

extension TestModel: ModelProtocol {
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
        self.postfix.removeAll()
        self.input.removeAll()
        self.operArray.removeAll()
        
        return displayNumber
    }
    
    // = 버튼 클릭시 연산 수행
    func calculatorButton() -> String {
        self.input.append(displayNumber)
        self.displayNumber = ""
        self.makePostfix()
        self.calPostfix()
        self.displayNumber = result
        
        return displayNumber
    }
    
    //연산자 구분 후 연산 함수 실행
    func operationButton(oper: String) -> String {
        self.input.append(displayNumber)
        self.input.append(oper)
        self.displayNumber = ""
        
        return oper
    }
    
    func dotButton() -> String {
        if self.displayNumber.count < 8, !self.displayNumber.contains(".") {
            self.displayNumber += self.displayNumber.isEmpty ? "0." : "."
        }
        return displayNumber
    }
    
    func updateInputText() -> String {
        var str = ""
        
        if self.input.count > self.inputLabelText.count {
            for i in 0..<self.input.count {
                str += input[i]
            }
        } else {
            for i in 0..<self.inputLabelText.count {
                str += inputLabelText[i]
            }
        }
        
        return str
    }
}
