//
//  MarkedBalltroller.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class MarkedBalltroller: UIViewController {


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if AppDelegate.nineBall == nil {
            self.navigationController?.pushViewController(BreakMastersController.init(), animated: true)
            return
        }
           
        clothFriction()
        
    }

    
    private func clothFriction()  {
        let naaib = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "barFevert") as! UITabBarController
        self.navigationController?.pushViewController(naaib, animated: true)
    }
}

