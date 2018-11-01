//
//  UIStoryboard+Name.swift
//  VIPER-sample
//
//  Created by Takuya Ohsawa on 2018/10/30.
//  Copyright © 2018 Takuya Ohsawa. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: StoryboardIdentifiable { }

protocol StoryboardIdentifiable: class {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UIStoryboard {
    class func make(storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.filename, bundle: bundle)
    }
    
    enum Storyboard: String {
        case topViewController = "TopViewController"
        
        var filename: String {
            return rawValue
        }
    }
    
    func instantiateViewController<T>() -> T where T: UIViewController {
        guard let viewController = self.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }
        
        return viewController
    }
}
