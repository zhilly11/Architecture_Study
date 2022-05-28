//
//  ViewController.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import UIKit

class CalViewController: UIViewController,ViewProtocol {
    
    @IBOutlet var numberButton: [UIButton]!
    @IBOutlet var operationButton: [UIButton]!
    @IBOutlet weak var clearButton: UIButton!
    
    @IBOutlet weak var numberOutputLabel: UILabel!
    

    var calPresenter: PresentProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //할당만 받은것
        //self.calPresenter = CalPresenter()
        
        // 의존성 부여
        if let calPresenter = calPresenter {
            self.calPresenter = calPresenter.initWithView(view: self)
        }
    }
    
    @IBAction func tapNumberButton(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else { return }
        if let calPresenter = calPresenter {
            calPresenter.clickNumberButton(number: numberValue)
        }
    }
    
    @IBAction func tapOperationButton(_ sender: UIButton) {
        guard let operationValue = sender.title(for: .normal) else { return }
        if let calPresenter = calPresenter {
            calPresenter.clickOperationButton(oper: operationValue)
        }
    }
    
    @IBAction func tapClearButton(_ sender: UIButton) {
        if let calPresenter = calPresenter {
            calPresenter.clickClearButton()
        }
    }
    
    @IBAction func tapDotButton(_ sender: UIButton) {
    }
    
    public func updateOutputLabel(num: String) {
        self.numberOutputLabel.text = num
    }
}

