//
//  PresenterMaker.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/06/10.
//

import Foundation

public class presenterMaker {
    static func makePresenter(view:BaseViewProtocol) -> BasePresentProtocol? {
        print("run makePresenter")
        var retPresenter: BasePresentProtocol? = nil
        
        if let view = view as? ViewProtocol {
            retPresenter = CalPresenter().initView(view: view)
        }
        
        return retPresenter
    }
}
