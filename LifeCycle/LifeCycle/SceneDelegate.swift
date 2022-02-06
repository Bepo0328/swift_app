//
//  SceneDelegate.swift
//  LifeCycle
//
//  Created by 전윤현 on 2022/02/06.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("[SenceDelegate] willConnectTo")
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("[SenceDelegate] sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("[SenceDelegate] sceneDidBecomeActive")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("[SenceDelegate] sceneWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("[SenceDelegate] sceneWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("[SenceDelegate] sceneDidEnterBackground")
    }
}

