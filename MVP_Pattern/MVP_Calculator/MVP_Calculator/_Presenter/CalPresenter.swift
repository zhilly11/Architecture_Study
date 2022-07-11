//
//  CalPresenter.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import Foundation
import UIKit

enum ModelType {
    case cal
}
class CalPresenter: NSObject {
    
    var view: ViewProtocol!
    var calModel: ModelProtocol?
    
    func initView(view: BaseViewProtocol) -> BasePresentProtocol{
        self.view = (view as! ViewProtocol)
        self.calModel = TestModel()
        return self
    }
    
    
    private func getModel() -> ModelProtocol?{
        return self.calModel
    }
    
    private func getView() -> ViewProtocol? {
        return self.view
    }
    
}

extension CalPresenter: PresentProtocol {
 func clickNumberButton(number: String) {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.inputNumberButton(num: number))
            view.updateInputLabel(num: model.updateInputText())
        }
    }
    
    func clickOperationButton(oper: String) {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.operationButton(oper: oper))
            view.updateInputLabel(num: model.updateInputText())
        }
    }
    
    func clickClearButton() {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.clearButton())
            view.updateInputLabel(num: model.updateInputText())
        }
    }
    
    func clickDotButton() {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.dotButton())
            view.updateInputLabel(num: model.updateInputText())
        }
    }
    func clickCalculatorButton() {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.calculatorButton())
            view.updateInputLabel(num: model.updateInputText())

        }
    }
}
