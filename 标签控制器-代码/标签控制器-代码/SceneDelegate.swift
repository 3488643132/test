//
//  SceneDelegate.swift
//  标签控制器-代码
//
//  Created by student on 2020/11/25.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowscene = (scene as? UIWindowScene) else { return }
        //定义window初始化view下一级
        window = UIWindow(windowScene: windowscene)
        let tabvc = UITabBarController()
        window?.rootViewController = tabvc
        let one = UIViewController()
        one.view.backgroundColor = .blue
        one.tabBarItem.title = "首页"
        one.tabBarItem.image = UIImage(systemName: "house")
        let two = UIViewController()
        two.view.backgroundColor = .green
        two.tabBarItem.title = "首页"
        two.tabBarItem.image = UIImage(systemName: "house")
        
        let three = UIViewController()
        three.view.backgroundColor = .gray
        three.tabBarItem.title = "首页"
        three.tabBarItem.image = UIImage(systemName: "house")
        
        let four = UIViewController()
        four.view.backgroundColor = .red
        four.tabBarItem.title = "首页"
        four.tabBarItem.image = UIImage(systemName: "house")
        
        tabvc.viewControllers = [one,two,three,four]
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

