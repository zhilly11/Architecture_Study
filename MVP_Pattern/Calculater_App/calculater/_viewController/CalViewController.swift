//
//  ViewController.swift
//  calculater
//
//  Created by 최지혁 on 2022/04/17.
//

import UIKit

class CalViewController: UIViewController {
    
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
        
    }
    
    func getPresenter() -> CalPresenter? {
        return self.calPresenter
    }
    
    public func updateZeroBtn(num:String) {
        
    }
    public func updateOneBtn(num:String) {
        
    }
    public func updateTwoBtn(num:String) {
        
    }
    public func updateThreeBtn(num:String) {
        
    }
    public func updateFourBtn(num:String) {
        
    }
    public func updateFiveBtn(num:String) {
        
    }
    public func updateSixBtn(num:String) {
        
    }
    public func updateSevenBtn(num:String) {
        
    }
    public func updateEightBtn(num:String) {
        
    }
    public func updateNineBtn(num:String) {
        
    }
    
    
}

