//
//  CalPresenter.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import Foundation
import UIKit


class CalPresenter: NSObject,PresentProtocol {
    func initView(view: BaseViewProtocol) -> BasePresentProtocol{
        self.view = (view as! ViewProtocol)
        self.calModel = CalModel()
        return self
    }

    var calModel: CalModel?
    var view: ViewProtocol?
    
    private func getModel() -> CalModel?{
        return self.calModel
    }
    
    private func getView() -> ViewProtocol? {
        return self.view
    }
    
    func clickNumberButton(number: String) {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.inputNumberButton(num: number))
        }
    }
    
    func clickOperationButton(oper: String) {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.operationButton(oper: oper))
        }
    }
    
    func clickClearButton() {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.clearButton())
        }
    }
    
    func clickDotButton() {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.dotButton())
        }
    }
    
    
    
}
