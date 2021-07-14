//
//  Router.swift
//  Football-League
//
//  Created by Ramzy on 14/07/2021.
//

import UIKit

protocol Router: AnyObject {
    func start()
}

class MainRouter: Router {
    
    let window: UIWindow
    var navigationController = UINavigationController()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
//        let welcomeViewController = WelcomeRouter.createModule()
//        navigationController = UINavigationController(rootViewController: welcomeViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

