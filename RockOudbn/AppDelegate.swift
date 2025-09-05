
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
    static var tensorCoresx:String = ""
    static var edgeComputingD:String = ""
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
        pencilShading()
        rayTracingCores()
        volumetricRendering()
        instanceSegmentation()
        return true
    }


    func pencilShading()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
           
                    
            for aitmt in resultPaying {
                switch aitmt.transaction.transactionState {
                case .purchased, .restored:
                   
                    let miaj = aitmt.transaction.downloads
                    
                    if !miaj.isEmpty  {
                   
                        SwiftyStoreKit.start(miaj)
                    } else if aitmt.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(aitmt.transaction)
                    }
                case .failed, .purchasing, .deferred:
                   break
                @unknown default:
                    break
                }
            }
               
        }
        
    }
    
    func rayTracingCores() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.edgeComputingD = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
    
    
    private func volumetricRendering() {
        let federatedLearning = ADJConfig(
               appToken: "g5uj9lrwq3gg",
               environment: ADJEnvironmentProduction
           )
        federatedLearning?.logLevel = .verbose
        federatedLearning?.enableSendingInBackground()
        Adjust.initSdk(federatedLearning)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "gq4kal")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    
    private func instanceSegmentation() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
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
        let distributedTraining = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.tensorCoresx = distributedTraining
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
