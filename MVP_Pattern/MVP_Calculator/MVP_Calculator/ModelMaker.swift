//
//  ModelMaker.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/06/27.
//

import Foundation

//presenter -> model

public class modelMaker {
    static func makeModel(presenter:BasePresentProtocol) -> BaseModelProtocol? {
        var retModel: BaseModelProtocol? = nil
        
        if presenter is PresentProtocol {
            retModel = CalModel()
        }
        
        return retModel
    }
}
