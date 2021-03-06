//
//  PresentProtocol.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/23.
//

import Foundation

protocol PresentProtocol: BasePresentProtocol {
    func clickNumberButton(number: String)
    func clickOperationButton(oper: String)
    func clickClearButton()
    func clickDotButton()
    func clickCalculatorButton()
}
