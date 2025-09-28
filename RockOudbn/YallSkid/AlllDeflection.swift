//
//  AlllDeflection.swift
//  RockOudbn
//
//  Created by RockOudbn on 2025/9/5.
//

import UIKit

import CoreLocation
import Toast_Swift

class AlllDeflection: UIViewController ,CLLocationManagerDelegate {
   
    
    private let rackTightness = CLLocationManager()
    private let rackTemplate = CLGeocoder()

    private var rackSpot:String = ""
   
    private  var rackFormation:NSNumber = 0.0
    private  var ballCluster:NSNumber = 0.0
    private func ballSeparation()  {
     
        let ballHop = UIImageView(image:UIImage(named: "handfoot") )
        ballHop.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(ballHop)
        
        let layerunner = UIImageView(image:UIImage(named: "handfire") )
        layerunner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(layerunner)
        NSLayoutConstraint.activate([
           
            layerunner.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            layerunner.heightAnchor.constraint(equalToConstant: 139),
            
            layerunner.widthAnchor.constraint(equalToConstant: 276),
        
            layerunner.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 65 - 52 - 55)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ballSeparation()
        
        
        let  ballCling = UIButton.init()
        ballCling.setBackgroundImage(UIImage.init(named: "asnzju"), for: .normal)
        ballCling.setTitleColor(.white, for: .normal)
        ballCling.setTitle("Qnubinclkolays mlkosg".englishSpin(), for: .normal)
        ballCling.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        view.addSubview(ballCling)
        ballCling.addTarget(self, action: #selector(ballResponse), for: .touchUpInside)
      
        
        ballCling.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            ballCling.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            ballCling.heightAnchor.constraint(equalToConstant: 56),
            ballCling.widthAnchor.constraint(equalToConstant: 335),
            ballCling.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        camelCase()
        
        rackTightness.delegate = self
      
        
    }
    
   
   
    
    @objc func ballResponse() {
                
        camelCase()
        
            
        self.view.makeToast("Lloggv himnk.a.o.".englishSpin(),
                           point: self.view.center,
                           title: nil,
                           image: nil,
                           completion: nil)
        

        let ballBehavior = "/fouphiu/zvm1y/iejvnoslxuitricornil".englishSpin()
        
        var ballAxis: [String: Any] = [
           
            "evolutionn":SwerveSlik.hitConsistency(),
            "evolutionv":[
               
                "cpovuenutmroyyCroedue".englishSpin():rackSpot,
                "luamttittkuzdfe".englishSpin():rackFormation,
                "lpoxnhgjiftxuwdpe".englishSpin():ballCluster
            ],
            "evolutiona":AppDelegate.safetyPlay
           
            
        ]
        
        if let ballPractice = SwerveSlik.strokePendulum() {
            ballAxis["evolutiond"] = ballPractice
        }
  
        GootPlacement.ballMattegrip.shadowEffect( ballBehavior, glare: ballAxis) { result in
           
            self.view.hideToast()
            switch result{
            case .success(let Worn):
               

                guard let ballNew = Worn,
                      let ballJoss = ballNew["tioukpekn".englishSpin()] as? String,
                      let ballAction = UserDefaults.standard.object(forKey: "breakAccuracy")  as? String
                else {
                    
                    self.view.makeToast("dwaftoan awgejayko!".englishSpin(),
                                       duration: 2.0,
                                       position: .center,
                                       title: "",
                                       image: UIImage(named: "aleoif"),
                                       style: ToastStyle.rackHubAnalysis)
                    return
                }
                if let ballPro = ballNew["pdazsrsvwqoerfd".englishSpin()] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    SwerveSlik.strokeAccuracy(ballPro)
                    
                }
                
                UserDefaults.standard.set(ballJoss, forKey: "McDermott")
              let ballBeginner =  [
                    "txovkreyn".englishSpin():ballJoss,"txiumketsvtxakmup".englishSpin():"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let ballExpert = GootPlacement.ballCluster(atte: ballBeginner) else {
                    
                    return
                    
                }
                print(ballExpert)
                // 2. 进行AES加密
                
                guard let ballLegend = IllMcDermott(),
                      let techniques = ballLegend.angleEstimation(speedControl: ballExpert) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(techniques)
                
                
                let gameplay = ballAction  + "/v?xojpleinpPcaercazmnsh=".englishSpin() + techniques + "&caepdpkIhdc=".englishSpin() + "\(GootPlacement.ballMattegrip.asartisticAuthority)"
                print(gameplay)
                let references = BrankiAmateur.init(ballDeflection: gameplay, ballThrow: true)
                MarkedBalltroller.strokeFollowThrough?.rootViewController = references
               
               
            case .failure(let error):
                
                self.view.makeToast(error.localizedDescription,
                                   duration: 2.0,
                                   position: .center,
                                   title: "",
                                   image: UIImage(named: "aleoif"),
                                   style: ToastStyle.rackHubAnalysis)
            }
        }
        
       
        
    }

    
    private func camelCase() {
        
        
        if rackTightness.authorizationStatus  ==  .authorizedWhenInUse || rackTightness.authorizationStatus  ==  .authorizedAlways{
            rackTightness.startUpdatingLocation()
          
       }else if rackTightness.authorizationStatus  ==  .denied{
           
           self.view.makeToast("Waex iraeeqcuoeysjta kabcfcwepszsh rtboh kynonudri wlhomcoadtjiaocny ttioj pewnrhjannwcleg xyyoxuprz yetxhpsewrpieemntcdep wbhyv spreurksgofnpahlhirzpihnsgc usdohuunbdu vaingdr ichoynqtjewnptc lbwaosmerdf aojny nywopujrr gszuyrrrkoluxnldoilnmgnsl.q tTyhcigsq xaflulrolwisy uussv strot xteahidlaoprv ytmhped aednuvdigrkovnamxennqts maancdp jpirvoeviiudheu cmsoprcef yrhenlveivfahnwtk bsuocuznvdl xezxbpbemrfivewnscveasc stmhmantv imhaytkcphc pyhorudrt wcsulrwrkexnltu hlqoocuaotriqobnz.".englishSpin(),
                              duration: 2.0,
                              position: .center,
                              title: "",
                              image: UIImage(named: "aleoif"),
                              style: ToastStyle.rackHubAnalysis)
       }else if rackTightness.authorizationStatus  ==  .notDetermined{
           rackTightness.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let usage = locations.last else {
            return
        }
        
       
        rackFormation =   NSNumber(value: usage.coordinate.latitude)
        ballCluster =   NSNumber(value: usage.coordinate.longitude)
       
  

       
        rackTemplate.reverseGeocodeLocation(usage) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let adjustments = plcaevfg?.first else { return }
          
            rackSpot = adjustments.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                camelCase()
        
    }
}
