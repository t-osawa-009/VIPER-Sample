//
//  TopViewController.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/29.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import UIKit

final class TopViewController: UIViewController, TopViewProtocol {
    // MARK: - internal
    class func make() -> TopViewController {
        let storyboard = UIStoryboard.make(storyboard: .topViewController)
        let vc: TopViewController = storyboard.instantiateViewController()
        return vc
    }
    
    var presenter: TopPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

