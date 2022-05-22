//
//  ViewController.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import UIKit

class CalViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    
    @IBOutlet weak var numberOutputLabel: UILabel!
    
    
    var calPresenter: CalPresenter?
    
    var displayNumber = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calPresenter = CalPresenter()
        
        // 의존성 부여
        if let calPresenter = calPresenter {
            calPresenter.initWithView(view: self)
        }
        
        
    }
    
    @IBAction func tapNumberButton(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else { return }
        if self.displayNumber.count < 9 {
            self.displayNumber += numberValue
            self.numberOutputLabel.text = self.displayNumber
        }
        /*
        self.numberOutputLabel.text = numberValue
        if let calPresenter = calPresenter {
            calPresenter.clickNumberButton(number: numberValue)
        }
        */
        
    }
    
    @IBAction func tapClearButton(_ sender: UIButton) {
    }
    
    
    @IBAction func tapDotButton(_ sender: UIButton) {
    }
    
    @IBAction func tapDivideButton(_ sender: UIButton) {
        //self.operation(.Divide)
    }
    
    @IBAction func tapMultiplyButton(_ sender: UIButton) {
        //self.operation(.Multiply)
    }
    
    
    @IBAction func tapSubtractButton(_ sender: UIButton) {
        //self.operation(.Subtract)
    }
    
    @IBAction func tapAddButton(_ sender: UIButton) {
        //self.operation(.Add)
    }
    
    @IBAction func tapEqualButton(_ sender: UIButton) {
        //self.operation(self.currentOperation)
    }
    
    
    public func updateOutputLabel(num: String) {
        self.numberOutputLabel.text = num
    }
}

