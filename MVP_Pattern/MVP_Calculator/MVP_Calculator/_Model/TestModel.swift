//
//  TestModel.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/07/04.
//

import Foundation

class TestModel: NSObject {
    var input = [String]()
    
    var postfix = [String]()
    
    
    var numberStack = [String]()
    var operStack = [String]()
    var displayNumber: String = ""
    
    private func calculate() -> String{
        
        return ""
    }
    
    private func makePostifx() {
        var oper = [String]()
        var result = [String]()
        
        for i in self.input {
            if i == "×" || i == "÷" {
                if oper.isEmpty == true || oper.last == "×" || oper.last == "÷"{
                    result.append(i)
                } else if oper.last == "+" || oper.last == "-" {
                    oper.append(i)
                }
            } else if i == "+" || i == "-" {
                if oper.isEmpty == true || oper.last == "+" || oper.last == "-"{
                    result.append(i)
                }
            } else {
                result.append(i)
            }
        }
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
    
    //연산자 구분 후 연산 함수 실행
    func operationButton(oper: String) -> String {
        if oper == "=" {
            return self.calculate()
        }
        
        self.input.append(self.displayNumber)
        self.displayNumber = ""
        self.input.append(oper)
        
        
       
        return oper
    }
    
    //view에서 초기화 버튼 클릭시 초기화
    func clearButton() -> String {
        self.input.removeAll()
        self.numberStack.removeAll()
        self.operStack.removeAll()
        self.displayNumber = ""
       
        return displayNumber
    }
    
    func dotButton() -> String {
        if self.displayNumber.count < 8, !self.displayNumber.contains(".") {
            self.displayNumber += self.displayNumber.isEmpty ? "0." : "."
        }
        return displayNumber
    }
}
