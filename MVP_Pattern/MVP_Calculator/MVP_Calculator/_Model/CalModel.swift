//
//  CalModel.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import Foundation

class CalModel: NSObject {
    
    var displayNumber = ""
    
    func inputNumberButton(num: String) -> String{
        if self.displayNumber.count < 9 {
            self.displayNumber += num
            return displayNumber
        }
        return displayNumber
    }
    
}
