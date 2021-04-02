//
//  AppDelegate.swift
//  UI-WeChat
//
//  Created by Apple on 2021/3/25.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.backgroundColor = UIColor.white
//        window?.rootViewController = ViewController()
        // Override point for customization after application launch.
        
//        let fristViewController = main-wechat()
        let fristViewController = ViewController()
        let secondViewController = person()
        let thirdViewController = found()
        let fourthViewController = Mine()
        
        let tabBarViewController = UITabBarController()
        tabBarViewController.viewControllers = [fristViewController,secondViewController,thirdViewController,fourthViewController]
        tabBarViewController.selectedIndex = 0
        tabBarViewController.view.backgroundColor = UIColor.white
        self.window?.rootViewController = tabBarViewController
        
//        tabBarViewController.na
        
        let tabBar = tabBarViewController.tabBar
        let item = tabBar.items![0]
        item.title = "微信"
        item.image = UIImage(systemName: "message")
        
        let item1 = tabBar.items![1]
        item1.title = "通讯录"
        item1.image = UIImage(systemName: "person")
        
        let item2 = tabBar.items![2]
        item2.title = "发现"
        item2.image = UIImage(systemName: "safari")

        let item3 = tabBar.items![3]
        item3.title = "我的"
        item3.image = UIImage(systemName: "my")
        
        window?.makeKeyAndVisible()

        return true
    }

    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }

//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

