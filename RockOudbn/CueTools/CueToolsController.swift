//
//  CueToolsController.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit
import Toast_Swift

class CueToolsController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: UIScreen.main.bounds.width - 24, height: 297) // Adjust size for section 0
        } else {
            return CGSize(width: (UIScreen.main.bounds.width - 24 - 11)/2, height: 226 + 30) // Adjust size for section 1
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        11
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        11
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    
    
    private var tableLeveling:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return tableLeveling.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let pocketShape = collectionView.dequeueReusableCell(withReuseIdentifier: "CueToolsCONwCell", for: indexPath) as!  CueToolsCONwCell
            return pocketShape
        }
        let uh = tableLeveling[indexPath.row]
        
        let pocketShape = collectionView.dequeueReusableCell(withReuseIdentifier: "CueToCownell", for: indexPath) as!  CueToCownell
        pocketShape.shaftWrap.text = uh["clusterBall"] as? String
        pocketShape.ferrule.bankPool(achk: (uh["balancePoint"] as? Array<String>)?.first)
        pocketShape.chalkTip.setTitle(" \(uh["ferrule"] as? Int ?? 0)", for: .normal)
        return pocketShape
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        keyBall.collectionViewLayout = UICollectionViewFlowLayout()
        keyBall.backgroundColor = .clear
        keyBall.register(UINib(nibName: "CueToolsCONwCell", bundle: nil), forCellWithReuseIdentifier: "CueToolsCONwCell")
        keyBall.dataSource = self
        pocketReducer()
        ballCleanliness()
    }
    
    
    private func pocketReducer()  {
        keyBall.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right: 0)
        keyBall.delegate = self
        keyBall.register(UINib(nibName: "CueToCownell", bundle: nil), forCellWithReuseIdentifier: "CueToCownell")
    }
    
    
    
    @IBOutlet weak var blockingBall: UIImageView!
    
    @IBOutlet weak var keyBall: UICollectionView!
    
    
    
    
    func ballCleanliness() {

        blockingBall.isUserInteractionEnabled = true
        blockingBall.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pocketBlock)))
        
        self.view.makeToast("loading...", point: self.view.center, title: nil, image: nil, completion: nil)
        ContactPoint.tableSpeed(clothFriction: "/sditxpeubibqkoz/fnuoyba", ballCleanliness: ["throwAngle":1,"cutAngle":10,"dynamicType":5,"selectVersion":2,"throwShot":"96984580"]) { nclaunch in
            self.view.hideToast()
            if let voiceFluency = nclaunch as? [String: Any],
                              
                let storyVibrancy = voiceFluency["data"] as? Array<[String: Any]>  {
                self.tableLeveling = storyVibrancy
                self.keyBall.reloadData()
               
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
    
   @objc func pocketBlock()  {
       
       let Fury = ContactPoint.closedBridge.patternPlay(routePla: "")
       
       self.navigationController?.pushViewController(RailRubber_Controller.init(baerllSlow: Fury), animated: true)
    }
    
}


extension CueToolsController{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let Fury = ContactPoint.bariolage.patternPlay(routePla: "")
            
            self.navigationController?.pushViewController(RailRubber_Controller.init(baerllSlow: Fury), animated: true)
            return
        }
        let uh = tableLeveling[indexPath.row]["frozenBall"] as? Int  ?? 0
        
        let pather = ContactPoint.mechanicalBridge.patternPlay(routePla: "\(uh)")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(baerllSlow: pather), animated: true)
    }
}
