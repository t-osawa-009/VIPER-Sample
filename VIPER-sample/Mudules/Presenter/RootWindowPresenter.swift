//
//  RootWindowPresenter.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/29.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import Foundation

protocol RootWindowViewProtocol: class {
    var presenter: RootWindowPresenter? { get set }
}

final class RootWindowPresenter {
    var router: RootRouter!
    var interactor: RootWindowInteractor!
    weak var viewProtocol: RootWindowViewProtocol?
    
    func didFinishLaunching() {
        router.setRoot()
    }
}
