//
//  SceneDelegate.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let _ = (scene as? UIWindowScene) else { return }
        
        let viewOne = ViewController()
        viewOne.tabBarItem.image = UIImage(systemName: "network")
        let twoView = TwoViewController()
        twoView.tabBarItem.image = UIImage(systemName: "alarm")
        let freView = FreeViewController()
        freView.tabBarItem.image = UIImage(systemName: "stopwatch")
        let fourView = FourViewController()
        fourView.tabBarItem.image = UIImage(systemName: "timer")
        
        //navigation
//        let navViewOneController = UINavigationController(rootViewController: viewOne)
//        navViewOneController.tabBarItem.image = UIImage(systemName: "network")
//        navViewOneController.tabBarItem.title = "Мировые часы"
//
//
//
//        let navTwoViewController = UINavigationController(rootViewController: twoView)
//        navTwoViewController.tabBarItem.image = UIImage(systemName: "alarm")
//        navTwoViewController.tabBarItem.title = "Будильник"
//
//
//        let navFreeController = UINavigationController(rootViewController: freView)
//        navFreeController.tabBarItem.image = UIImage(systemName: "stopwatch")
//        navFreeController.tabBarItem.title = "Секундомер"
//
//        let navFourViewController = UINavigationController(rootViewController: fourView)
//        navFourViewController.tabBarItem.image = UIImage(systemName: "timer")
       // navFourViewController.tabBarItem.title = "Таймер"
        
        let tabBar = UITabBarController()
        
        
        tabBar.setViewControllers([viewOne, twoView, freView, fourView], animated: true)
        self.window?.rootViewController = tabBar
        tabBar.tabBar.barTintColor = UIColor.black
        tabBar.tabBar.tintColor = .orange
        self.window?.makeKeyAndVisible()
    
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
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

