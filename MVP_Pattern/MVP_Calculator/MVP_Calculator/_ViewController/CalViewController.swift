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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.calPresenter = CalPresenter()
        
        // 의존성 부여
        if let calPresenter = calPresenter {
            calPresenter.initWithView(view: self)
        }
        
            //buttons.addAction(<#T##UIAlertAction#>)
    }
    
    @IBAction func tapNumberButton(_ sender: UIButton) {
        
    }
    
    
}

