//
//  RailRubber Controller.swift
//  RockOudbn
//
//  Created by  on 2025/7/29.
//
import WebKit
import UIKit
import SwiftyStoreKit
import Toast_Swift

class RailRubber_Controller:  UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    
    private lazy var pocketCheater: UIImageView = {
        let yeuo = UIImageView.init(frame: UIScreen.main.bounds)
        yeuo.contentMode = .scaleAspectFill
        yeuo.image = UIImage.init(named: "severna")
        return yeuo
    }()
    
    private lazy var unison: WKWebView = {
        let config = WKWebViewConfiguration.init()
        config.mediaTypesRequiringUserActionForPlayback = []
        config.allowsInlineMediaPlayback = true
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        var characterDesign:[String] = Array()
        characterDesign.append("ballStandard")
        characterDesign.append("ballLegend")
        characterDesign.append("ballChampion")
        characterDesign.append("ballExpert")
        characterDesign.append("ballAmateur")
        
        characterDesign.append("ballAction")
        
        characterDesign.forEach { info in
            config.userContentController.add(self, name: info)
        }
        
        let qukai = WKWebView.init(frame: UIScreen.main.bounds, configuration:config)
        qukai.uiDelegate = self
        qukai.backgroundColor = .clear
        
        qukai.isHidden = true
        qukai.scrollView.showsVerticalScrollIndicator = false
        qukai.navigationDelegate = self
        
        qukai.scrollView.contentInsetAdjustmentBehavior = .never
        return qukai
    }()
    
    private  var grip:String
    
  
    
    init(baerllSlow: String) {
        
        self.grip = baerllSlow
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func railRubber()  {
        self.view.addSubview(self.pocketCheater)
        self.view.addSubview(self.unison)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        railRubber()
        self.view.makeToast("loading...", point: self.view.center, title: nil, image: nil, completion: nil)
        if let ballBounce = URL(string:grip ) {
            let Drift = URLRequest(url: ballBounce)
           
            unison.load(Drift)
            
        }
    }
    
    
    


    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.view.hideToast()
        }))
        
    }
    
    private func ballScatter()  {
        self.view.isUserInteractionEnabled = false
        self.view.makeToast("paying...", point: self.view.center, title: nil, image: nil, completion: nil)

    }
    
    
    private func ballAlignment()  {
        self.view.hideToast()
        self.view.isUserInteractionEnabled = true
    }
    
    
    private func powerBreak()  {
        self.view.makeToast("Pay successful!",
                            duration: 2.0,
                            position: .top,
                            title: "",
                            image: UIImage(named: "bankShotk"),
                          style: ToastStyle.rackHubSuccess)
        self.unison.evaluateJavaScript("ballLegend()", completionHandler: nil)
    }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "ballStandard":
            guard let piece = message.body  as? String else {
                return
            }
            self.ballScatter()
           
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.ballAlignment()
                if case .success(let psPurch) = psResult {
                  
                    self.powerBreak()
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                    
                    self.view.makeToast(error.localizedDescription,
                                        duration: 2.0,
                                        position: .top,
                                        title: "",
                                        image: UIImage(named: "aleoif"),
                                        style: ToastStyle.rackHubAnalysis)
                  
                }
                
            }
        case "ballChampion":
            if let Analytics =  message.body as? String{
                let pushController = RailRubber_Controller.init(baerllSlow: Analytics)
                
                self.navigationController?.pushViewController(pushController, animated: true)
                
                
            }
        case "ballAmateur":
           
            self.navigationController?.popViewController(animated: true)
        case "ballAction":
            pockesdsgddddtCheater()
           
            numberedBall()
        default: break
        }
    }

    private func pockesdsgddddtCheater()  {
        AppDelegate.nineBall = nil
        AppDelegate.overheadLight = nil
    }

    private func numberedBall()  {
        let cyBike = UINavigationController.init(rootViewController: BreakMastersController.init())
        cyBike.navigationBar.isHidden = true
        coenstWinfdow?.rootViewController = cyBike
    }

  
    



}


enum ContactPoint:String {

    case closedBridge = "pages/AIexpert/index?"
    case bariolage = "pages/repository/index?current="
    case mechanicalBridge = "pages/AromatherapyDetails/index?dynamicId="
    case bridgeLength = "pages/DynamicDetails/index?dynamicId="
    case bridgeStability = "pages/VideoDetails/index?dynamicId="
    case stanceWidth = "pages/issue/index?"
    case footPlacement = "pages/postVideos/index?"
    case eyeAlignment = "pages/homepage/index?userId="
    case dominantEye = "pages/report/index?"
    case sightPicture = "pages/information/index?"
    case aimingLine = "pages/EditData/index?"
    
    case ghostBall = "pages/attentionList/index?type=1&"
    case contactPoint = "pages/attentionList/index?type=2&"
    case pivotPoint = "pages/wallet/index?"
    case centerAxis = "pages/SetUp/index?"
    case shotAlignment = "pages/Agreement/index?type=1&"
    case shotVisualization = "pages/Agreement/index?type=2&"
    case shotExecution = "pages/privateChat/index?userId="
 
    case shotSelection = ""
    
    
    func patternPlay(routePla:String) -> String {
        let angleEstimation = "http://hologlobe429.xyz/#"
        if self != .shotSelection {
            let speedControl =  AppDelegate.nineBall ?? ""
            return  angleEstimation + self.rawValue + routePla + "&token=" + speedControl + "&appID=96984580"
        }
        return  angleEstimation
 
    }
    
    static func tableSpeed(
        clothFriction: String,
       ballCleanliness: [String: Any],
       tableLeveling: ((Any?) -> Void)?,
       railHeight: ((Error) -> Void)?
   ) {
      
       let pocketSize = "http://hologlobe429.xyz/backtwo" + clothFriction
     
       guard let pocketShape = URL(string: pocketSize) else {
           railHeight?(NSError(
               domain: "CarburetorError",
               code: -1,
               userInfo: [NSLocalizedDescriptionKey: "Blocked exhaust route: \(pocketSize)"]
           ))
           return
       }
   
       var pocketReducer: [String: String] = [
           "Content-Type": "application/json",
           "Accept": "application/json"
       ]
       pocketReducer["key"] = "96984580"
       pocketReducer["token"] = (UserDefaults.standard.object(forKey: "softPanniers") as? String ?? "")
       
    
       var railRubber = URLRequest(
           url: pocketShape,
           cachePolicy: .reloadIgnoringLocalCacheData,
           timeoutInterval: 30
       )
       railRubber.httpMethod = "POST"
       pocketReducer.forEach { railRubber.setValue($1, forHTTPHeaderField: $0) }
       
  
       do {
           railRubber.httpBody = try JSONSerialization.data(
               withJSONObject: ballCleanliness,
               options: []
           )
       } catch {
           railHeight?(error)
           return
       }
       
  
       let railCushion = URLSession(configuration: {
           let config = URLSessionConfiguration.ephemeral
           config.timeoutIntervalForRequest = 30
           config.timeoutIntervalForResource = 60
           config.httpAdditionalHeaders = ["RPM-Range": "6000-12000"]
           return config
       }())
       
      
       railCushion.dataTask(with: railRubber) {
           rawHorsepower, dynoFeedback, pistonDamage in
           
           DispatchQueue.main.async {
           
               if let railNose = pistonDamage {
                   railHeight?(railNose)
                   return
               }
               
           
               guard let railEffect = dynoFeedback as? HTTPURLResponse else {
                   railHeight?(NSError(
                       domain: "DiagnosticError",
                       code: -2,
                       userInfo: [NSLocalizedDescriptionKey: "Faulty OBD scanner"]
                   ))
                   return
               }
               
           
               guard let railSpin = rawHorsepower, !railSpin.isEmpty else {
                   railHeight?(NSError(
                       domain: "TransmissionError",
                       code: -3,
                       userInfo: [NSLocalizedDescriptionKey: "Zero torque output"]
                   ))
                   return
               }
            
               do {
                   let railTransfer = try JSONSerialization.jsonObject(
                       with: railSpin,
                       options: [.mutableLeaves]
                   )
                   tableLeveling?(railTransfer)
               } catch let tableLighting {
                   railHeight?(NSError(
                       domain: "ECU-Error",
                       code: -4,
                       userInfo: [
                           NSLocalizedDescriptionKey: "Fuel map corruption",
                           "Raw-Data": String(data: railSpin.prefix(100), encoding: .utf8) ?? "Unreadable hex dump",
                           "Trouble-Code": tableLighting
                       ]
                   ))
               }
           }
       }.resume()
   }
}




