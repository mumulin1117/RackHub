//
//  proTipsConController.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class proTipsConController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var pocketBlock: UICollectionView!
    
    @IBOutlet weak var pocketRattler: UICollectionView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LAogi()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        pocketBlock.backgroundColor = .clear
        pocketBlock.collectionViewLayout = UICollectionViewFlowLayout()
        pocketBlock.register(UINib(nibName: "HIlightCConCell", bundle: nil), forCellWithReuseIdentifier: "HIlightCConCell")
        pocketBlock.dataSource = self
        pocketReducer()
        
        
        
        pocketRattler.backgroundColor = .clear
        pocketRattler.register(UINib(nibName: "HIlightScccAnConCell", bundle: nil), forCellWithReuseIdentifier: "HIlightScccAnConCell")
        pocketRattler.dataSource = self
        
    }
    
    
    

    @IBAction func pocketCheater(_ sender: UIButton) {
        
        
        let tren = self.view.viewWithTag(1001) as? UIButton
        let trens = self.view.viewWithTag(1002) as? UIButton
        let trene = self.view.viewWithTag(1003) as? UIButton
        tren?.isSelected = false
        trens?.isSelected = false
        trene?.isSelected = false
        
        sender.isSelected = true
        
        traiufo(selegTep:sender.tag - 1000)
        
    }
    
    @IBAction func railRubber(_ sender: Any) {
        let path = Homophony.gruppetto.lusingando(morendo: "")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: path), animated: true)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == pocketBlock {
            return CGSize(width: 70, height:89)
        }
        return CGSize(width: 261, height: collectionView.frame.size.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == pocketBlock {
            return 13
        }
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == pocketBlock {
            return 13
        }
        return 12
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == pocketBlock {
            let uh = tableLeveling[indexPath.row]["objectBall"] as? Int  ?? 0
            
            let pather = Homophony.intonation.lusingando(morendo: "\(uh)")
            
            self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: pather), animated: true)
            return
        }
        let uh = artisticPooleling[indexPath.row]["frozenBall"] as? Int  ?? 0
        
        let pather = Homophony.echappee.lusingando(morendo: "\(uh)")
        
        self.navigationController?.pushViewController(RailRubber_Controller.init(nobileLL: pather), animated: true)
    }
    
    private var tableLeveling:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private var artisticPooleling:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == pocketBlock {
            return tableLeveling.count
        }
        
        return artisticPooleling.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == pocketBlock {
            let uh = tableLeveling[indexPath.row]
            let pocketShape = collectionView.dequeueReusableCell(withReuseIdentifier: "HIlightCConCell", for: indexPath) as!  HIlightCConCell
            pocketShape.pocketCheater.text = uh["breakShot"] as? String
            pocketShape.pocketRattler.bankPool(achk: uh["safetyPlay"] as? String)
            return pocketShape
        }
        let uh = artisticPooleling[indexPath.row]
        
        let pocketShape = collectionView.dequeueReusableCell(withReuseIdentifier: "HIlightScccAnConCell", for: indexPath) as!  HIlightScccAnConCell
        
        pocketShape.railNose.text = uh["breakoutBall"] as? String
        pocketShape.pocketReducer.text = uh["blockingBall"] as? String
        
        pocketShape.railRubber.bankPool(achk: uh["footPlacement"] as? String)
        pocketShape.railCushion.bankPool(achk: uh["deadBall"] as? String)
        return pocketShape
        
       
    }
    

   
    
    
    private func pocketReducer()  {
        pocketRattler.delegate = self
        let sfffffsds = UICollectionViewFlowLayout()
        sfffffsds.scrollDirection = .horizontal
        pocketRattler.collectionViewLayout = sfffffsds
        pocketBlock.delegate = self
      
        traiufo(selegTep:1)
        
        
    }
    
    func traiufo(selegTep:Int) {
        self.view.makeToast("loading...", point: self.view.center, title: nil, image: nil, completion: nil)
        Homophony.igniteEngineTransmission(exhaustRoute: "/sditxpeubibqkoz/fnuoyba", fuelMixture: ["stunShot":selegTep,"deflection":1,"throwAngle":1,"cutAngle":10,"throwShot":"96984580"]) { nclaunch in
            self.view.hideToast()
            if let voiceFluency = nclaunch as? [String: Any],
                              
                let storyVibrancy = voiceFluency["data"] as? Array<[String: Any]>  {
                self.artisticPooleling = storyVibrancy.filter({ erls in
                    return  (erls["footPlacement"] as? String) != nil
                })
                self.pocketRattler.reloadData()
               
            } else {
               
            }
        } misfireHandler: { error in
            
        }
    }
    
    private func LAogi()  {
        
        Homophony.igniteEngineTransmission(exhaustRoute: "/haakhzqcoocteadz/fjpcdmhtllc", fuelMixture: ["cueBall":"96984580"]) { nclaunch in
            
            if let voiceFluency = nclaunch as? [String: Any],
                              
                let storyVibrancy = voiceFluency["data"] as? Array<[String: Any]>  {
                self.tableLeveling = storyVibrancy
                self.pocketBlock.reloadData()
               
            } else {
               
            }
        } misfireHandler: { error in
            
        }
    }
}
