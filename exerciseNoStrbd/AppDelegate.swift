//
//  AppDelegate.swift
//  exerciseNoStrbd
//
//  Created by Danijel Vasov on 2/23/19.
//  Copyright © 2019 OSX. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        configureVC()
        
        return true
    }
}


extension AppDelegate {
    func configureVC(){
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        UIApplication.shared.keyWindow?.rootViewController = ViewController()
    }
    
    
}
