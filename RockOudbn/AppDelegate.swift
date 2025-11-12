
//
//  AppDelegate.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//
import FBSDKCoreKit
import AdjustSdk
import AppTrackingTransparency
import UIKit
import Toast_Swift
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
//    static var breakShot:String = ""
//    static var safetyPlay:String = ""
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
        englishSpin()
        combinationShot()
        cushionBounce()
        masséShot()
        return true
    }


    func englishSpin()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { kickShot in
           
                    
            for drawShot in kickShot {
                switch drawShot.transaction.transactionState {
                case .purchased, .restored:
                   
                    let bankShot = drawShot.transaction.downloads
                    
                    if !bankShot.isEmpty  {
                   
                        SwiftyStoreKit.start(bankShot)
                    } else if drawShot.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(drawShot.transaction)
                    }
                case .failed, .purchasing, .deferred:
                   break
                @unknown default:
                    break
                }
            }
               
        }
        
    }
    
    func combinationShot() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    break
                default:
                   break
                }
            }
        }
    }
    
    
    private func cushionBounce() {
        let sideSpin = ADJConfig(
               appToken: "g5uj9lrwq3gg",
               environment: ADJEnvironmentProduction
           )
        sideSpin?.logLevel = .verbose
        sideSpin?.enableSendingInBackground()
        Adjust.initSdk(sideSpin)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "gq4kal")
            Adjust.trackEvent(initVD)
            
            
        }
        
        Adjust.adid { scratchShot in
            DispatchQueue.main.async {
                if let updates = scratchShot {
                    UserDefaults.standard.setValue(updates, forKey: "safetyPlay")
                  
                   
                }
            }
        }
    }
    
    private func masséShot() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { jumpShot, error in
            DispatchQueue.main.async {
                if jumpShot {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let blockingBall = deviceToken.map { String(format: "%x0g2m.x2lhehjx".englishSpin(), $0) }.joined()
        UserDefaults.standard.setValue(blockingBall, forKey: "breakShot")
      
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

extension String{
    func englishSpin() -> String {
        var shouldKeep = true
        return self.filter { _ in
            defer { shouldKeep.toggle() }
            return shouldKeep
        }
    }
}
