
//
//  AppDelegate.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit
import Toast_Swift
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var nineBall:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "nineBall") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "nineBall")
            
        }
        
    }
    
    static var overheadLight:Int?{
        get{
            return UserDefaults.standard.object(forKey: "overheadLight") as? Int
        }set{
            UserDefaults.standard.set(newValue, forKey: "overheadLight")
        }
        
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in 
            
        }
        return true
    }



}

extension ToastStyle {
    static let rackHubSuccess: ToastStyle = {
        var style = ToastStyle()
        style.backgroundColor = UIColor(red: 0.35, green: 0.76, blue: 1, alpha: 1)
        style.cornerRadius = 10.0
        style.imageSize = CGSize(width: 30, height: 30)
        return style
    }()
    
    static let rackHubAnalysis: ToastStyle = {
        var style = ToastStyle()
        style.backgroundColor = UIColor(red: 0.98, green: 0.55, blue: 1, alpha: 1)
        style.activityIndicatorColor = .white
        style.imageSize = CGSize(width: 30, height: 30)
        return style
    }()
}

