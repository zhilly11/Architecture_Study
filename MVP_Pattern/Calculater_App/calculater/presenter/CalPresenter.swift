//
//  CalPresenter.swift
//  calculater
//
//  Created by 최지혁 on 2022/04/17.
//

import UIKit

class CalPresenter: NSObject {
    
    var calModel:CalModel?
    var view:CalViewController?
    
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
    
    func clickZeroBtn() {
        if let model = getModel(),let view = getView() {
            view.updateZeroBtn(num: model.clickZeroBtn())
        }
    }
    func clickOneBtn() {
        if let model = getModel(),let view = getView() {
            view.updateOneBtn(num: model.clickOneBtn())
        }
    }
    func clickTwoBtn() {
        if let model = getModel(),let view = getView() {
            view.updateTwoBtn(num: model.clickTwoBtn())
        }
    }
    func clickThreeBtn() {
        if let model = getModel(),let view = getView() {
            view.updateThreeBtn(num: model.clickThreeBtn())
        }
    }
    func clickFourBtn() {
        if let model = getModel(),let view = getView() {
            view.updateFourBtn(num: model.clickFourBtn())
        }
    }
    func clickFiveBtn() {
        if let model = getModel(),let view = getView() {
            view.updateFiveBtn(num: model.clickFiveBtn())
        }
    }
    func clickSixBtn() {
        if let model = getModel(),let view = getView() {
            view.updateSixBtn(num: model.clickSixBtn())
        }
    }
    func clickSevenBtn() {
        if let model = getModel(),let view = getView() {
            view.updateSevenBtn(num: model.clickSevenBtn())
        }
    }
    func clickEightBtn() {
        if let model = getModel(),let view = getView() {
            view.updateEightBtn(num: model.clickEightBtn())
        }
    }
    func clickNineBtn() {
        if let model = getModel(),let view = getView() {
            view.updateNineBtn(num: model.clickNineBtn())
        }
    }
    
    func tapClearBtn() {
        if let model = getModel(),let view = getView() {
            view.updateClearBtn(num: model.clickClearBtn())
        }
    }
    
    func tapPlusBtn() {
        if let model = getModel(),let view = getView() {
            view.updatePlusBtn(num: model.clickPlusBtn())

        }
    }

}
