//
//  RoundButton.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/07/04.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = 5
                self.layer.borderWidth = 2
                
            }
        }
    }
}
