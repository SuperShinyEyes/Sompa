//
//  extensions.swift
//  Sompa
//
//  Created by Park Seyoung on 28/10/16.
//  Copyright © 2016 Park Seyoung. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
//    func set
}

extension UINavigationControllerDelegate {
    
}

extension UINavigationController: UINavigationControllerDelegate {
    
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print("Show vc")
        viewController.navigationItem.title = viewController.tabBarItem.title
    }
}

