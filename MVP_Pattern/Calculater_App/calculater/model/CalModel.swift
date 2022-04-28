//
//  CalModel.swift
//  calculater
//
//  Created by 최지혁 on 2022/04/17.
//

import UIKit

class CalModel: NSObject {
    
    var modelOuputNumber = ""
    var displayNumber = ""
    
    func inputNum(num:String) -> String {
        if self.modelOuputNumber.count < 9 {
            modelOuputNumber += num
        }
        return modelOuputNumber
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
        modelOuputNumber = ""
        return modelOuputNumber
    }
    
    func clickPlusBtn() -> String {
        return "Plus"
    }

}
