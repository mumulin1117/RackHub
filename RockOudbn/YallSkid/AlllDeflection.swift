//
//  AlllDeflection.swift
//  RockOudbn
//
//  Created by RockOudbn on 2025/9/5.
//

import UIKit


import Toast_Swift

class AlllDeflection: UIViewController {
   
  
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
        
     
      
    }
    
   
   
    
    @objc func ballResponse() {
      
            
        self.view.makeToast("Lloggv himnk.a.o.".englishSpin(),
                           point: self.view.center,
                           title: nil,
                           image: nil,
                           completion: nil)
        

        let ballBehavior = "/fouphiu/zvm1y/iejvnoslxuitricornil".englishSpin()
        let safetyPlay =   UserDefaults.standard.value(forKey: "safetyPlay") as? String ?? ""//.setValue(updates, forKey: "safetyPlay")
      
        var ballAxis: [String: Any] = [
           
            "evolutionn":SwerveSlik.hitConsistency(),
          
            "evolutiona":safetyPlay
           
            
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

    
 
}
