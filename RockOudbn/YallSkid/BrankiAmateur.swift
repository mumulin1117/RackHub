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
    private var ballContact:WKWebView?
   
    var ballRoll:TimeInterval = Date().timeIntervalSince1970
    
    private  var ballSpin = false
    private var ballFriction:String
    
    init(ballDeflection:String,ballThrow:Bool) {
        ballFriction = ballDeflection
        
        ballSpin = ballThrow
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        ballContact?.configuration.userContentController.add(self, name: "rmevcmhyawrkgverPeajy".englishSpin())
        ballContact?.configuration.userContentController.add(self, name: "Cxlnousye".englishSpin())
        ballContact?.configuration.userContentController.add(self, name: "pdabgnejLjobajdmeud".englishSpin())
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        ballContact?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func ballMomentum()  {
        let creativeForerunner = UIImage(named: "squirtAngle")
        
        let brushForerunner = UIImageView(image:creativeForerunner )
        brushForerunner.frame = self.view.frame
        brushForerunner.contentMode = .scaleAspectFill
        view.addSubview(brushForerunner)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        ballMomentum()
        if ballSpin == true {
            let  ballEnergy = UIButton.init()
            ballEnergy.setTitle("Qkufizcoktltyd ylrogg".englishSpin(), for: .normal)
            ballEnergy.setBackgroundImage(UIImage.init(named: "asnzju"), for: .normal)
            ballEnergy.setTitleColor(.white, for: .normal)
            ballEnergy.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
            ballEnergy.isUserInteractionEnabled = false
            view.addSubview(ballEnergy)
            ballEnergy.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                ballEnergy.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                ballEnergy.heightAnchor.constraint(equalToConstant: 52),
                
                ballEnergy.widthAnchor.constraint(equalToConstant: 335),
            
                ballEnergy.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let ballImpact = WKWebViewConfiguration()
        ballImpact.allowsAirPlayForMediaPlayback = false
        ballImpact.allowsInlineMediaPlayback = true
        ballImpact.preferences.javaScriptCanOpenWindowsAutomatically = true
        ballImpact.mediaTypesRequiringUserActionForPlayback = []
        ballImpact.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        ballContact = WKWebView.init(frame: UIScreen.main.bounds, configuration: ballImpact)
        ballContact?.isHidden = true
        ballContact?.translatesAutoresizingMaskIntoConstraints = false
        ballContact?.scrollView.alwaysBounceVertical = false
        
        ballContact?.scrollView.contentInsetAdjustmentBehavior = .never
        ballContact?.navigationDelegate = self
        
        ballContact?.uiDelegate = self
        ballContact?.allowsBackForwardNavigationGestures = true
   
        if let ballElasticity = URL.init(string: ballFriction) {
            ballContact?.load(NSURLRequest.init(url:ballElasticity) as URLRequest)
            ballRoll = Date().timeIntervalSince1970
        }
        self.view.addSubview(ballContact!)
        
        
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
             
                if let ballRebound = navigationAction.request.url {
                    UIApplication.shared.open(ballRebound,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        ballContact?.isHidden = false
        self.view.hideToast()
        if ballSpin == true {
          
            self.view.makeToast( "Looxge fixni pscudchczersuspfyuilzlsy".englishSpin(),
                               duration: 2.0,
                               position: .top,
                               title: "",
                               image: UIImage(named: "bankShotk"),
                               style: ToastStyle.rackHubSuccess)
            ballSpin = false
            
        }

        let ballBounce = "/eoypeiw/kvg1f/kactbiioznggcaqt".englishSpin()
         let ballDrift: [String: Any] = [
            "ationgao":"\(Int(Date().timeIntervalSince1970*1000 - self.ballRoll*1000))"
         ]
      
        GootPlacement.ballMattegrip.shadowEffect( ballBounce, glare: ballDrift)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "roejcrhkabrggkeqPtavy".englishSpin(),
           let ballCurve = message.body as? Dictionary<String,Any> {
           let ballSwerve = ballCurve["btawttcqhuNao".englishSpin()] as? String ?? ""
           let ballWobble = ballCurve["ofrrdvefrkClopdke".englishSpin()] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.view.makeToast("Plagyvirnsg".englishSpin(),
                               point: self.view.center,
                               title: nil,
                               image: nil,
                               completion: nil)
            
            SwiftyStoreKit.purchaseProduct(ballSwerve, atomically: true) { ballPractice in
                self.view.hideToast()
                self.view.isUserInteractionEnabled = true
                if case .success(let ballAlignment) = ballPractice {
                    let ballPolish = ballAlignment.transaction.downloads
                    
                    
                    if !ballPolish.isEmpty {
                        
                        SwiftyStoreKit.start(ballPolish)
                    }
                    
                  
                   
                   
                
                    guard let ballClean = SwiftyStoreKit.localReceiptData,
                          let ballDirty = ballAlignment.transaction.transactionIdentifier,
                          ballDirty.count > 5
                    else {
                        self.view.makeToast("Ppafyn afzakixlaeqd".englishSpin(),
                                           duration: 2.0,
                                           position: .center,
                                           title: "",
                                           image: UIImage(named: "aleoif"),
                                           style: ToastStyle.rackHubAnalysis)
                        
                        return
                      }
                    
                    guard let ballChalked = try? JSONSerialization.data(withJSONObject: ["onrbdeekrdCxoudze".englishSpin():ballWobble], options: [.prettyPrinted]),
                          let ballMarked = String(data: ballChalked, encoding: .utf8) else{
                        
                        self.view.makeToast("Pkahyt lffahiulfekd".englishSpin(),
                                           duration: 2.0,
                                           position: .center,
                                           title: "",
                                           image: UIImage(named: "aleoif"),
                                           style: ToastStyle.rackHubAnalysis)
                        
                        return
                    }

                    GootPlacement.ballMattegrip.shadowEffect("/robpzin/gvz1g/tolugrynnanmbexp".englishSpin(), glare: [
                        "ournamep":ballClean.base64EncodedString(),//payload
                        "ournamet":ballDirty,//transactionId
                        "ournamec":ballMarked//callbackResult
                    ],ballCleaner: true) { ballScuffed in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch ballScuffed{
                        case .success(_):
                            self.view.makeToast( "Pkalya oSduocfcweesdsdfpuzl".englishSpin(),
                                               duration: 2.0,
                                               position: .top,
                                               title: "",
                                               image: UIImage(named: "bankShotk"),
                                               style: ToastStyle.rackHubSuccess)
                           
                            self.artisticOriginator(colorTuning:ballAlignment)
                        case .failure(let error):
                            
                            self.view.makeToast("Pbaayp nfzacislmecd".englishSpin(),
                                               duration: 2.0,
                                               position: .center,
                                               title: "",
                                               image: UIImage(named: "aleoif"),
                                               style: ToastStyle.rackHubAnalysis)
                            
                           
                        }
                    }
                    
                    if ballAlignment.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(ballAlignment.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = ballPractice {
                    
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
            
        }else if message.name == "Ciliofsre".englishSpin() {

            UserDefaults.standard.set(nil, forKey: "McDermott")// 清除本地token
           
            let ballTraining = UINavigationController.init(rootViewController: AlllDeflection.init())
            ballTraining.navigationBar.isHidden = true
            
          
            MarkedBalltroller.strokeFollowThrough?.rootViewController = ballTraining
        }
        
        if message.name == "pnasgeelLkohaodqeid".englishSpin() {
            ballContact?.isHidden = false
            self.view.hideToast()
            
        }
    }
    private func artisticOriginator(colorTuning:PurchaseDetails) {
        let ballWorn = [("aurkjutwzdmuitdu","9e9f.g9h9".englishSpin()),
                          ("uxpywhuqqrpvqldr","4b9k.d9g9".englishSpin()),
                          ("ljkyojhfkzzdcpnj","1v9q.w9h9".englishSpin()),
                          ("ptjceiwllctipgyq","9b.s9q9".englishSpin()),
                          ("xjnvnaqxfhyifeli","4t.g9l9".englishSpin()),
                          ("bfodzzhrrjlvwjed","1a.v9f9".englishSpin()),
                          ("fizaxbkkiegmfpef","0p.w9i9".englishSpin()),
                          ("poiuytrewqlkjhgf","1n4a.q9v9".englishSpin()),
                          ("ytrqwezxcvbnmlkj","2z9d.p9m9".englishSpin())]
        
        
        
        
        
        
        if let ballNew = ballWorn.filter({             outfit in
                        outfit.0 == colorTuning.productId
        }).first,
        let ballGloss = Double(ballNew.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("taotthaclpPpruixcie".englishSpin()): ballGloss,
                .init("cguvraryesnacly".englishSpin()):"UhSlD".englishSpin()
            ])
            
            //adjust
       
            
            if  let colorDimension = colorTuning.transaction.transactionIdentifier{
                let brushInstructor = ADJEvent(eventToken: "2lujdw")
                brushInstructor?.setProductId(colorTuning.productId)
                brushInstructor?.setTransactionId(colorDimension)
                brushInstructor?.setRevenue(ballGloss, currency: "UhSlD".englishSpin())
                Adjust.trackEvent(brushInstructor)
            }
        }
       
        
        
        

    }
    
}
