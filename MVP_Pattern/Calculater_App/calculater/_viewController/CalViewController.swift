//
//  ViewController.swift
//  calculater
//
//  Created by 최지혁 on 2022/04/17.
//

import UIKit

class CalViewController: UIViewController {
    
    //숫자 패드 구성
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    
    // . 버튼
    @IBOutlet weak var tapDotBtn: UIButton!
    
    // AC 버튼
    @IBOutlet weak var tapClearBtn: UIButton!
    
    // 연산자 버튼
    @IBOutlet weak var tapPlusBtn: UIButton!
    @IBOutlet weak var tapMinusBtn: UIButton!
    @IBOutlet weak var tapMultiBtn: UIButton!
    @IBOutlet weak var tapDivideBtn: UIButton!
    @IBOutlet weak var tapPercentBtn: UIButton!
    @IBOutlet weak var tapEqualBtn: UIButton!
    
    
    // 숫자 Display 변수
    @IBOutlet weak var numberOutputLabel: UILabel!
    
    
    var calPresenter: CalPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.calPresenter = CalPresenter()
        
        if let calPresenter = calPresenter {
            calPresenter.initWithView(view: self)
        }
        
        
        zeroBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickZeroBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        oneBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickOneBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        twoBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickTwoBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        threeBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickThreeBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        fourBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickFourBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        fiveBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickFiveBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        sixBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickSixBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        sevenBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickSevenBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        eightBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickEightBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        nineBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.clickNineBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        tapClearBtn.addAction(UIAction(handler: { _ in
            if let calPresenter = self.getPresenter() {
                calPresenter.tapClearBtn()
            }
        }), for: UIControl.Event.touchUpInside)
        
        
    }
    
    func getPresenter() -> CalPresenter? {
        return self.calPresenter
    }
    
    public func updateZeroBtn(num:String) {
        self.numberOutputLabel.text = num
    
    }
    public func updateOneBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateTwoBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateThreeBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateFourBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateFiveBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateSixBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateSevenBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateEightBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    public func updateNineBtn(num:String) {
        self.numberOutputLabel.text = num

    }
    
    public func updateClearBtn(num:String) {
        self.numberOutputLabel.text = num

    }
}

