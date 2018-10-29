//
//  RootWindow.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/29.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import Foundation
import UIKit

final class RootWindow: UIWindow, RootWindowViewProtocol {
    // MARK: - internal
    var presenter: RootWindowPresenter?
    
    // MARK: - initializer
    convenience init(presenter: RootWindowPresenter, frame: CGRect) {
        self.init(frame: frame)
        self.presenter = presenter
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
