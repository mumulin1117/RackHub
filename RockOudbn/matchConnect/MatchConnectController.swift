//
//  MatchConnectController.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit
import Toast_Swift



class MatchConnectController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var strokeAccuracy: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 24, height: 406)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        23
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        23
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let uh = tableLeveling[indexPath.row]["frozenBall"] as? Int  ?? 0
        
        let pather = Homophony.doubleTonguing.lusingando(morendo: "\(uh)")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: pather), animated: true)
    }
    
    private var tableLeveling:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return tableLeveling.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        let uh = tableLeveling[indexPath.row]
        let pocketShape = collectionView.dequeueReusableCell(withReuseIdentifier: "MatchConnectCell", for: indexPath) as!  MatchConnectCell
        pocketShape.hitConsistency.text = uh["breakoutBall"] as? String
        pocketShape.strokeSpeed.text = uh["blockingBall"] as? String
        pocketShape.hardnessRating.bankPool(achk: uh["deadBall"] as? String)
//       
        pocketShape.jointPin.bankPool(achk: (uh["balancePoint"] as? Array<String>)?.first)
        pocketShape.taperType.bankPool(achk: (uh["balancePoint"] as? Array<String>)?.last)
        if let ddd  = (uh["balancePoint"] as? Array<String>),ddd.count >= 2 {
            pocketShape.leatherTip.bankPool(achk: (uh["balancePoint"] as? Array<String>)?[1])
        }
      
        return pocketShape
    }
    
    @IBOutlet weak var blockingBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        strokeAccuracy.collectionViewLayout = UICollectionViewFlowLayout()
        strokeAccuracy.backgroundColor = .clear
        blockingBall.isUserInteractionEnabled = true
        blockingBall.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pocketBlock)))
        strokeAccuracy.register(UINib(nibName: "MatchConnectCell", bundle: nil), forCellWithReuseIdentifier: "MatchConnectCell")
        strokeAccuracy.dataSource = self
        pocketReducer()
        
        
        self.view.makeToast("loading...", point: self.view.center, title: nil, image: nil, completion: nil)
        Homophony.igniteEngineTransmission(exhaustRoute: "/sditxpeubibqkoz/fnuoyba", fuelMixture: ["deflection":1,"throwAngle":1,"cutAngle":10,"throwShot":"96984580"]) { nclaunch in
            self.view.hideToast()
            if let voiceFluency = nclaunch as? [String: Any],
                              
                let storyVibrancy = voiceFluency["data"] as? Array<[String: Any]>  {
                self.tableLeveling = storyVibrancy.filter({ erls in
                    return  (erls["footPlacement"] as? String) == nil
                })
                self.strokeAccuracy.reloadData()
               
            } else {
                self.view.makeToast("Unexpected response format.",
                                    duration: 2.0,
                                    position: .center,
                                    title: "",
                                    image: UIImage(named: "aleoif"),
                                    style: ToastStyle.rackHubAnalysis)
                
            }
        } misfireHandler: { error in
            self.view.makeToast(error.localizedDescription,
                                duration: 2.0,
                                position: .center,
                                title: "",
                                image: UIImage(named: "aleoif"),
                                style: ToastStyle.rackHubAnalysis)
        }
    }
    
    
    private func pocketReducer()  {
        strokeAccuracy.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right: 0)
        strokeAccuracy.delegate = self
      
    }

    
    @objc func pocketBlock()  {
        
        let path = Homophony.flautando.lusingando(morendo: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
     }
}
