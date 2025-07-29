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
    
    private  var anglaise:String
    
  
    
    init(nobileLL: String) {
        
        self.anglaise = nobileLL
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

     
    
        if let url = URL(string:anglaise ) {
            let request = URLRequest(url: url)
           
            unison.load(request)
            
        }
    }
    
    
    


    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.view.hideToast()
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "ballStandard":
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            self.view.makeToast("paying...", point: self.view.center, title: nil, image: nil, completion: nil)

           
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.view.hideToast()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                  
                    self.view.makeToast("Pay successful!",
                                        duration: 2.0,
                                        position: .top,
                                        title: "",
                                        image: UIImage(named: "bankShotk"),
                                      style: ToastStyle.rackHubSuccess)
                    self.unison.evaluateJavaScript("ballLegend()", completionHandler: nil)
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
                let pushController = RailRubber_Controller.init(nobileLL: Analytics)
                
                self.navigationController?.pushViewController(pushController, animated: true)
                
                
            }
        case "ballAmateur":
           
            self.navigationController?.popViewController(animated: true)
        case "ballAction":
            AppDelegate.nineBall = nil
            AppDelegate.overheadLight = nil
           
            let cyBike = UINavigationController.init(rootViewController: BreakMastersController.init())
            cyBike.navigationBar.isHidden = true
            coenstWinfdow?.rootViewController = cyBike
        default: break
        }
    }



  
    



}


enum Homophony:String {

    case appoggiatura = "pages/AIexpert/index?"
    case bariolage = "pages/repository/index?current="
    case coloratura = "pages/AromatherapyDetails/index?dynamicId="
    case doubleTonguing = "pages/DynamicDetails/index?dynamicId="
    case echappee = "pages/VideoDetails/index?dynamicId="
    case flautando = "pages/issue/index?"
    case gruppetto = "pages/postVideos/index?"
    case intonation = "pages/homepage/index?userId="
    case jetWhistle = "pages/report/index?"
    case klangfarben = "pages/information/index?"
    case locrianMode = "pages/EditData/index?"
    
    case wagnerTuba = "pages/attentionList/index?type=1&"
    case xylorimba = "pages/attentionList/index?type=2&"
    case ziganeStyle = "pages/wallet/index?"
    case affettuoso = "pages/SetUp/index?"
    case barcarolle = "pages/Agreement/index?type=1&"
    case conSordino = "pages/Agreement/index?type=2&"
    case dolcissimo = "pages/privateChat/index?userId="
 
    case espressivo = ""
    
    
    func lusingando(morendo:String) -> String {
        let quadrille = "http://hologlobe429.xyz/#"
        if self != .espressivo {
            let getoj =  AppDelegate.nineBall ?? ""
            return  quadrille + self.rawValue + morendo + "&token=" + getoj + "&appID=96984580"
        }
        return  quadrille
 
    }
    
    static func igniteEngineTransmission(
        exhaustRoute: String,
       fuelMixture: [String: Any],
       dynoResultHandler: ((Any?) -> Void)?,
       misfireHandler: ((Error) -> Void)?
   ) {
      
       let combustionPath = "http://hologlobe429.xyz/backtwo" + exhaustRoute
     
       guard let torqueTunnel = URL(string: combustionPath) else {
           misfireHandler?(NSError(
               domain: "CarburetorError",
               code: -1,
               userInfo: [NSLocalizedDescriptionKey: "Blocked exhaust route: \(combustionPath)"]
           ))
           return
       }
   
       var mechanicKit: [String: String] = [
           "Content-Type": "application/json",
           "Accept": "application/json"
       ]
       mechanicKit["key"] = "96984580"
       mechanicKit["token"] = (UserDefaults.standard.object(forKey: "softPanniers") as? String ?? "")
       
    
       var diagnosticRequest = URLRequest(
           url: torqueTunnel,
           cachePolicy: .reloadIgnoringLocalCacheData,
           timeoutInterval: 30
       )
       diagnosticRequest.httpMethod = "POST"
       mechanicKit.forEach { diagnosticRequest.setValue($1, forHTTPHeaderField: $0) }
       
  
       do {
           diagnosticRequest.httpBody = try JSONSerialization.data(
               withJSONObject: fuelMixture,
               options: []
           )
       } catch {
           misfireHandler?(error)
           return
       }
       
  
       let dynoSession = URLSession(configuration: {
           let config = URLSessionConfiguration.ephemeral
           config.timeoutIntervalForRequest = 30
           config.timeoutIntervalForResource = 60
           config.httpAdditionalHeaders = ["RPM-Range": "6000-12000"]
           return config
       }())
       
      
       dynoSession.dataTask(with: diagnosticRequest) {
           rawHorsepower, dynoFeedback, pistonDamage in
           
           DispatchQueue.main.async {
           
               if let pistonDamage = pistonDamage {
                   misfireHandler?(pistonDamage)
                   return
               }
               
           
               guard let obdReport = dynoFeedback as? HTTPURLResponse else {
                   misfireHandler?(NSError(
                       domain: "DiagnosticError",
                       code: -2,
                       userInfo: [NSLocalizedDescriptionKey: "Faulty OBD scanner"]
                   ))
                   return
               }
               
           
               guard let crankshaftData = rawHorsepower, !crankshaftData.isEmpty else {
                   misfireHandler?(NSError(
                       domain: "TransmissionError",
                       code: -3,
                       userInfo: [NSLocalizedDescriptionKey: "Zero torque output"]
                   ))
                   return
               }
            
               do {
                   let performanceMap = try JSONSerialization.jsonObject(
                       with: crankshaftData,
                       options: [.mutableLeaves]
                   )
                   dynoResultHandler?(performanceMap)
               } catch let ecuError {
                   misfireHandler?(NSError(
                       domain: "ECU-Error",
                       code: -4,
                       userInfo: [
                           NSLocalizedDescriptionKey: "Fuel map corruption",
                           "Raw-Data": String(data: crankshaftData.prefix(100), encoding: .utf8) ?? "Unreadable hex dump",
                           "Trouble-Code": ecuError
                       ]
                   ))
               }
           }
       }.resume()
   }
}




