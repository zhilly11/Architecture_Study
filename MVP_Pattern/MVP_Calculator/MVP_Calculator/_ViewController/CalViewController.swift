//
//  ViewController.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/16.
//

import UIKit

class CalViewController: UIViewController {
    
    @IBOutlet var numberButton: [UIButton]!
    @IBOutlet var operationButton: [UIButton]!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var numberOutputLabel: UILabel!
    @IBOutlet weak var calculateButton: RoundButton!
    @IBOutlet weak var inputLabel: UILabel!
    
    var calPresenter : PresentProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calPresenter = (presenterMaker.makePresenter(view: self) as? PresentProtocol)
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
        if let calPresenter = calPresenter {
            calPresenter.clickDotButton()
        }
    }
    @IBAction func tapCalculateButton(_ sender: Any) {
        if let calPresenter = calPresenter {
            calPresenter.clickCalculatorButton()
        }
    }
}

extension CalViewController: ViewProtocol {
    func updateOutputLabel(num: String) {
        self.numberOutputLabel.text = num
    }
    func updateInputLabel(num: String) {
        self.inputLabel.text = num
    }
}
