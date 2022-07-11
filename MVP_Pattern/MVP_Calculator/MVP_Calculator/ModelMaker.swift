//
//  ModelMaker.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/06/27.
//

import Foundation

//presenter -> model

public class modelMaker {
    static func makeModel(model: ModelType, data: Any, resultCallback: @escaping (String) -> String) -> BaseModelProtocol? {
        
//        switch model {
//        case .cal:
//            //
//        }
        
        var retModel: BaseModelProtocol? = nil
        
        if retModel is ModelProtocol {
            retModel = CalModel()
        }
        
        return retModel
    }
}
