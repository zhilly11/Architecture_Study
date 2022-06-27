//
//  ViewProtocol.swift
//  MVP_Calculator
//
//  Created by 최지혁 on 2022/05/23.
//

import Foundation

protocol ViewProtocol: BaseViewProtocol {
     func updateOutputLabel(num: String)
}
