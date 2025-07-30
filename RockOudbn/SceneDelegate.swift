//
//  SceneDelegate.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

var coenstWinfdow: UIWindow?{
    if let bublr = (UIApplication.shared.connectedScenes
        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
        .windows
        .first(where: \.isKeyWindow)  {
        return bublr
        
    }
    return nil
}



class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
    
    }

   

}

