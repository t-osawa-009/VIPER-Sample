//
//  AppDelegate.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/29.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder {

    var window: RootWindow?
}

// MARK: - UIApplicationDelegate
extension AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = RootRouter.assembleModule()
        window?.presenter?.didFinishLaunching()
        
        return true
    }
}
