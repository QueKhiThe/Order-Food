//
//  AppDelegate.swift
//  Order Food
//
//  Created by MBA0023 on 7/27/19.
//  Copyright © 2019 MBA0023. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()

        let welcomeVC = WelcomeViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = welcomeVC
        window?.makeKeyAndVisible()

        return true
    }
}
