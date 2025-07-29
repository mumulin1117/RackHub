//
//  skillCoachCController.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class skillCoachCController: UIViewController {
    
   
    @IBOutlet weak var closedBridge: UIImageView!
    
    @IBOutlet weak var bridgeLength: UILabel!
    
    @IBOutlet weak var bridgeStability: UILabel!
    
    
    func breakSpeed()  {
        closedBridge.layer.cornerRadius = 75
        
        shotSelection.layer.cornerRadius = 10
        shotSelection.layer.masksToBounds = true
        
        
        closedBridge.layer.masksToBounds = true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        breakSpeed()
        shotSelection.layer.cornerRadius = 10
        self.shotSelection.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchunpToPurcha)))
        shotSelection.layer.masksToBounds = true
    }
    

  
//chat
    @IBAction func railBridge(_ sender: UIButton) {
        let path = Homophony.klangfarben.lusingando(morendo: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
    }
    
    //edit
    @IBAction func mechanicalBridge(_ sender: UIButton) {
        let path = Homophony.locrianMode.lusingando(morendo: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
    }
    
    
    
    @IBOutlet weak var footPlacement: UIImageView!
    
    @IBAction func stanceWidth(_ sender: UIButton) {
        let tren = self.view.viewWithTag(30) as? UIButton
        let trens = self.view.viewWithTag(40) as? UIButton
       
        tren?.isSelected = false
        trens?.isSelected = false
        
        sender.isSelected = true
        
        footPlacement.center.x = sender.center.x
    }
    //wallent
    @IBOutlet weak var shotSelection: UIView!
    //set
    @IBOutlet weak var patternPlay: UIView!
    //follow
    @IBOutlet weak var positionPlay: UIView!
    
    @IBOutlet weak var routePlanningCount: UILabel!
    
    
    
    
    @IBOutlet weak var following: UIView!
    
    
    @IBOutlet weak var angleEstimation: UILabel!
    
    
   @objc func touchunpToPurcha()  {
       let path = Homophony.ziganeStyle.lusingando(morendo: "")
       
       self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
    }
    
    
    @objc func touchunpToseowipha()  {
        let path = Homophony.affettuoso.lusingando(morendo: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
     }
    
    
    
    @objc func touchunFoaiudingcha()  {
        let path = Homophony.wagnerTuba.lusingando(morendo: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
     }
    
    
    @objc func fanivrnpToPurcha()  {
        let path = Homophony.xylorimba.lusingando(morendo: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
     }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        positionPlay.layer.cornerRadius = 10
        self.patternPlay.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchunpToseowipha)))
        
        self.patternPlay.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchunpToseowipha)))
        
        self.positionPlay.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchunFoaiudingcha)))
        
        
        positionPlay.layer.masksToBounds = true
        self.following.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(fanivrnpToPurcha)))
        
        traiufo(selegTep:1)
        
        following.layer.cornerRadius = 10
        following.layer.masksToBounds = true
    }
    private func traiufo(selegTep:Int) {
        self.view.makeToast("loading...", point: self.view.center, title: nil, image: nil, completion: nil)
        Homophony.igniteEngineTransmission(exhaustRoute: "/fjxsllmqbhehz/griglqobgcn", fuelMixture: ["ballCleanliness":AppDelegate.overheadLight ?? 0]) { nclaunch in
            self.view.hideToast()
            if let voiceFluency = nclaunch as? [String: Any],
                              
                let storyVibrancy = voiceFluency["data"] as? [String: Any]{
                self.closedBridge.bankPool(achk:storyVibrancy[ "pocketSize"] as? String)
                self.bridgeLength.text = storyVibrancy["breakoutBall"] as? String ?? "No name"
                self.bridgeStability.text = storyVibrancy["pocketReducer"] as? String ?? "No brief"
            } else {
               
            }
        } misfireHandler: { error in
            
        }
    }
    
}
