//
//  TopPresenter.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/30.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import Foundation

protocol TopViewProtocol: class {
    var presenter: TopPresenter? {get set}
}

final class TopPresenter {
    var router: TopRouter!
    weak var viewProtocol: TopViewProtocol?
    var interator: TopInterator!
    
    func viewDidLoad() {
        
    }
}
