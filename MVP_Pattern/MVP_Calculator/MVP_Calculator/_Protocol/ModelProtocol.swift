//
//  ModelProtocol.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/06/27.
//

import Foundation

protocol ModelProtocol: BaseModelProtocol{
    func inputNumberButton(num: String) -> String
    func clearButton() -> String
    func operationButton(oper: String) -> String
    func dotButton() -> String
    func calculatorButton() -> String
    func updateInputText() -> String 
}
