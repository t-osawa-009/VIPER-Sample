//
//  TopRouter.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/30.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import Foundation

final class TopRouter {
    weak var topViewController: TopViewController?
    
    class func assembleModule() -> TopViewController {
        let router = TopRouter()
        let vc = TopViewController.make()
        let presenter = TopPresenter()
        let interator = TopInterator()
        
        presenter.router = router
        vc.presenter = presenter
        presenter.interator = interator
        presenter.viewProtocol = vc
        router.topViewController = vc
        return vc
    }
}
