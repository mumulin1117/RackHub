//
//  BreakMastersController.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit
import Toast_Swift
class BreakMastersController: UIViewController {
    private var isAgreed = false
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTapGestures()
    }


    @IBOutlet weak var throwAngle: UITextField!
    

    @IBOutlet weak var cutAngle: UITextField!
    
    
    @IBOutlet weak var doubleKiss: UIImageView!
    
    
    @IBOutlet weak var frozenBall: UILabel!
    
    
    @IBOutlet weak var clusterBall: UILabel!
    
    
    @IBAction func kissShot(_ sender: UIButton) {
        guard let email = throwAngle.text, !email.isEmpty else {
            self.view.makeToast("Please enter your email first",
                                duration: 2.0,
                                position: .center,
                                title: "",
                                image: UIImage(named: "aleoif"),
                                style: ToastStyle.rackHubAnalysis)
            return
        }
                      
                
        guard let password = cutAngle.text, !password.isEmpty else {
            self.view.makeToast("Please enter your password first",
                                duration: 2.0,
                                position: .center,
                                title: "",
                                image: UIImage(named: "aleoif"),
                                style: ToastStyle.rackHubAnalysis)
            return
               
        }
                      
        guard isAgreed else {
            self.view.makeToast("Please read and agree to our privacy policy and terms first",
                                duration: 2.0,
                                position: .center,
                                title: "",
                                image: UIImage(named: "aleoif"),
                                style: ToastStyle.rackHubAnalysis)
            return
            
        }
        

        self.view.makeToast("Log in...", point: self.view.center, title: nil, image: nil, completion: nil)
        ContactPoint.tableSpeed(clothFriction: "/gjelshvxoezz/aqnvhop", ballCleanliness: ["straightPool":email,"rotationGame":password,"onePocket":"96984580"]) { nclaunch in
            if let voiceFluency = nclaunch as? [String: Any],
                              
                let storyVibrancy = voiceFluency["data"] as? [String: Any] {
                
                self.view.hideToast()
                AppDelegate.nineBall = storyVibrancy["nineBall"] as? String
                AppDelegate.overheadLight = storyVibrancy["overheadLight"] as? Int
                
                self.view.makeToast("Log in successfully",
                                    duration: 2.0,
                                    position: .top,
                                    title: "",
                                    image: UIImage(named: "bankShotk"),
                                  style: ToastStyle.rackHubSuccess)
                let naaib = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "barFevert") as! UITabBarController
                self.navigationController?.pushViewController(naaib, animated: true)
            } else {
                self.view.makeToast("Unexpected response format.",
                                    duration: 2.0,
                                    position: .center,
                                    title: "",
                                    image: UIImage(named: "aleoif"),
                                    style: ToastStyle.rackHubAnalysis)
                
            }
        } railHeight: { error in
            self.view.makeToast(error.localizedDescription,
                                duration: 2.0,
                                position: .center,
                                title: "",
                                image: UIImage(named: "aleoif"),
                                style: ToastStyle.rackHubAnalysis)
        }
       
      
        
    }
    
    private func setupTapGestures() {
           let agreeTap = UITapGestureRecognizer(target: self, action: #selector(toggleAgreement))
        doubleKiss.isUserInteractionEnabled = true
        doubleKiss.addGestureRecognizer(agreeTap)

           let privacyTap = UITapGestureRecognizer(target: self, action: #selector(openPrivacy))
        clusterBall.isUserInteractionEnabled = true
        clusterBall.addGestureRecognizer(privacyTap)

           let termsTap = UITapGestureRecognizer(target: self, action: #selector(openTerms))
        frozenBall.isUserInteractionEnabled = true
        frozenBall.addGestureRecognizer(termsTap)
       }
    
    @objc private func toggleAgreement() {
         isAgreed.toggle()
        doubleKiss.image = UIImage(named: isAgreed ? "bankShotk" : "followShot")
         
     }
    
    @objc private func openPrivacy() {
        let ballFury = ContactPoint.shotAlignment.patternPlay(routePla: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(baerllSlow: ballFury), animated: true)
      
    }

    
    @objc private func openTerms() {
        let Fury = ContactPoint.shotVisualization.patternPlay(routePla: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(baerllSlow: Fury), animated: true)
      
    }
    
    
}
