//
//  CalPresenter.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import Foundation
import UIKit


class CalPresenter: NSObject {
    
    var calModel: CalModel?
    var view: CalViewController?
    
    public func initWithView(view:CalViewController)  {
        self.view = view
        self.calModel = CalModel()
    }
    
    func getModel() -> CalModel?{
        return self.calModel
    }
    
    func getView() -> CalViewController? {
        return self.view
    }
    
    func clickNumberButton(number: String) {
        if let model = getModel(),let view = getView() {
            view.updateOutputLabel(num: model.inputNumberButton(num: number))
        }
    }
    
    
    
}
