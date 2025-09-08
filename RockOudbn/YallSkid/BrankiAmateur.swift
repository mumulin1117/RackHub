//
//  BrankiAmateur.swift
//  RockOudbn
//
//  Created by RockOudbn on 2025/9/5.
//
import SwiftyStoreKit
import FBSDKCoreKit
import WebKit

import AdjustSdk
import UIKit
import Toast_Swift


class BrankiAmateur: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var creativeGroundbreaker:WKWebView?
   
    var visualPattern:TimeInterval = Date().timeIntervalSince1970
    
    private  var artisticGround = false
    private var creativeTrendsetter:String
    
    init(Trendsetter:String,Matrix:Bool) {
        creativeTrendsetter = Trendsetter
        
        artisticGround = Matrix
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "rechargePay")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "Close")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        creativeGroundbreaker?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func artisticTrendsetter()  {
        let creativeForerunner = UIImage(named: "squirtAngle")
        
        let brushForerunner = UIImageView(image:creativeForerunner )
        brushForerunner.frame = self.view.frame
        brushForerunner.contentMode = .scaleAspectFill
        view.addSubview(brushForerunner)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        artisticTrendsetter()
        if artisticGround == true {
            let  colorIndividuality = UIButton.init()
            colorIndividuality.setTitle("Quickly log", for: .normal)
            colorIndividuality.setBackgroundImage(UIImage.init(named: "asnzju"), for: .normal)
            colorIndividuality.setTitleColor(.white, for: .normal)
            colorIndividuality.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
            colorIndividuality.isUserInteractionEnabled = false
            view.addSubview(colorIndividuality)
            colorIndividuality.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                colorIndividuality.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                colorIndividuality.heightAnchor.constraint(equalToConstant: 52),
                
                colorIndividuality.widthAnchor.constraint(equalToConstant: 335),
            
                colorIndividuality.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let visualNetwork = WKWebViewConfiguration()
        visualNetwork.allowsAirPlayForMediaPlayback = false
        visualNetwork.allowsInlineMediaPlayback = true
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
        visualNetwork.mediaTypesRequiringUserActionForPlayback = []
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        creativeGroundbreaker = WKWebView.init(frame: UIScreen.main.bounds, configuration: visualNetwork)
        creativeGroundbreaker?.isHidden = true
        creativeGroundbreaker?.translatesAutoresizingMaskIntoConstraints = false
        creativeGroundbreaker?.scrollView.alwaysBounceVertical = false
        
        creativeGroundbreaker?.scrollView.contentInsetAdjustmentBehavior = .never
        creativeGroundbreaker?.navigationDelegate = self
        
        creativeGroundbreaker?.uiDelegate = self
        creativeGroundbreaker?.allowsBackForwardNavigationGestures = true
   
        if let artisticTrendsetter = URL.init(string: creativeTrendsetter) {
            creativeGroundbreaker?.load(NSURLRequest.init(url:artisticTrendsetter) as URLRequest)
            visualPattern = Date().timeIntervalSince1970
        }
        self.view.addSubview(creativeGroundbreaker!)
        
        
        self.view.makeToast("Lloggv himnk.a.o.".englishSpin(),
                           point: self.view.center,
                           title: nil,
                           image: nil,
                           completion: nil)
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        creativeGroundbreaker?.isHidden = false
        self.view.hideToast()
        if artisticGround == true {
          
            self.view.makeToast( "Looxge fixni pscudchczersuspfyuilzlsy".englishSpin(),
                               duration: 2.0,
                               position: .top,
                               title: "",
                               image: UIImage(named: "bankShotk"),
                               style: ToastStyle.rackHubSuccess)
            artisticGround = false
            
        }

        let creativeForerunner = "/opi/v1/ationgat"
         let brushForerunner: [String: Any] = [
            "ationgao":"\(Int(Date().timeIntervalSince1970*1000 - self.visualPattern*1000))"
         ]
      
        GootPlacement.artisticArtisan.artisticTrainerFive( creativeForerunner, orVariation: brushForerunner)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let creativeTrailblazer = message.body as? Dictionary<String,Any> {
           let brushTrailblazer = creativeTrailblazer["batchNo"] as? String ?? ""
           let colorDistinction = creativeTrailblazer["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.view.makeToast("Plagyvirnsg".englishSpin(),
                               point: self.view.center,
                               title: nil,
                               image: nil,
                               completion: nil)
            
            SwiftyStoreKit.purchaseProduct(brushTrailblazer, atomically: true) { artisticTrailblazer in
                self.view.hideToast()
                self.view.isUserInteractionEnabled = true
                if case .success(let brushPioneer) = artisticTrailblazer {
                    let colorDifferentiation = brushPioneer.transaction.downloads
                    
                    
                    if !colorDifferentiation.isEmpty {
                        
                        SwiftyStoreKit.start(colorDifferentiation)
                    }
                    
                  
                   
                   
                
                    guard let artisticPioneer = SwiftyStoreKit.localReceiptData,
                          let creativeInnovator = brushPioneer.transaction.transactionIdentifier,
                          creativeInnovator.count > 5
                    else {
                        self.view.makeToast("Pay failed",
                                           duration: 2.0,
                                           position: .center,
                                           title: "",
                                           image: UIImage(named: "aleoif"),
                                           style: ToastStyle.rackHubAnalysis)
                        
                        return
                      }
                    
                    guard let visualAssembly = try? JSONSerialization.data(withJSONObject: ["orderCode":colorDistinction], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: visualAssembly, encoding: .utf8) else{
                        
                        self.view.makeToast("Pay failed",
                                           duration: 2.0,
                                           position: .center,
                                           title: "",
                                           image: UIImage(named: "aleoif"),
                                           style: ToastStyle.rackHubAnalysis)
                        
                        return
                    }

                    GootPlacement.artisticArtisan.artisticTrainerFive("/opi/v1/ournamep", orVariation: [
                        "ournamep":artisticPioneer.base64EncodedString(),//payload
                        "ournamet":creativeInnovator,//transactionId
                        "ournamec":orderCodejsonString//callbackResult
                    ],creativeTrainerd: true) { creativeOriginator in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch creativeOriginator{
                        case .success(_):
                            self.view.makeToast( "Pay Successful",
                                               duration: 2.0,
                                               position: .top,
                                               title: "",
                                               image: UIImage(named: "bankShotk"),
                                               style: ToastStyle.rackHubSuccess)
                           
                            self.artisticOriginator(colorTuning:brushPioneer)
                        case .failure(let error):
                            
                            self.view.makeToast("Pay failed",
                                               duration: 2.0,
                                               position: .center,
                                               title: "",
                                               image: UIImage(named: "aleoif"),
                                               style: ToastStyle.rackHubAnalysis)
                            
                           
                        }
                    }
                    
                    if brushPioneer.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(brushPioneer.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        self.view.makeToast(error.localizedDescription,
                                           duration: 2.0,
                                           position: .center,
                                           title: "",
                                           image: UIImage(named: "aleoif"),
                                           style: ToastStyle.rackHubAnalysis)
                        
                       
                       
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "McDermott")// 清除本地token
           
            let brushOriginator = UINavigationController.init(rootViewController: AlllDeflection.init())
            brushOriginator.navigationBar.isHidden = true
            
          
            MarkedBalltroller.colorMixing?.rootViewController = brushOriginator
        }
        
        if message.name == "pageLoaded" {
            creativeGroundbreaker?.isHidden = false
            self.view.hideToast()
            
        }
    }
    private func artisticOriginator(colorTuning:PurchaseDetails) {
        let colorAdjustment = [("aurkjutwzdmuitdu","99.99"),
                          ("uxpywhuqqrpvqldr","49.99"),
                          ("ljkyojhfkzzdcpnj","19.99"),
                          ("ptjceiwllctipgyq","9.99"),
                          ("xjnvnaqxfhyifeli","4.99"),
                          ("bfodzzhrrjlvwjed","1.99"),
                          ("fizaxbkkiegmfpef","0.99"),
                          ("poiuytrewqlkjhgf","14.99"),
                          ("ytrqwezxcvbnmlkj","29.99")]
        
        
        
        
        
        
        if let creativeArtisan = colorAdjustment.filter({             outfit in
                        outfit.0 == colorTuning.productId
        }).first,
        let visualLibrary = Double(creativeArtisan.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): visualLibrary,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let colorDimension = colorTuning.transaction.transactionIdentifier{
                let brushInstructor = ADJEvent(eventToken: "2lujdw")
                brushInstructor?.setProductId(colorTuning.productId)
                brushInstructor?.setTransactionId(colorDimension)
                brushInstructor?.setRevenue(visualLibrary, currency: "USD")
                Adjust.trackEvent(brushInstructor)
            }
        }
       
        
        
        

    }
    
}
