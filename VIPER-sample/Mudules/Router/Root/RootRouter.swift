//
//  ApplicationRouter.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/29.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import Foundation
import UIKit

final class RootRouter {
    // MARK: - internal
    class func assembleModule() -> RootWindow {
        let presenter = RootWindowPresenter()
        let window = RootWindow(presenter: presenter, frame: UIScreen.main.bounds)
        let router = RootRouter()
        let interator = RootWindowInteractor()
        
        presenter.router = router
        presenter.interactor = interator
        presenter.viewProtocol = window
        
        router.window = window
        
        return window
    }
    
    weak var window: UIWindow?
    
    func setRoot() {
        window?.rootViewController = TopRouter.assembleModule()
        window?.makeKeyAndVisible()
    }
}
