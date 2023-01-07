//
//  SceneDelegate.swift
//  Dynamic UI
//
//  Created by 123 on 6.01.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let navVC = UINavigationController(rootViewController: MainViewController())
        window.makeKeyAndVisible()
        window.rootViewController = navVC
        self.window = window
    }

  

}

