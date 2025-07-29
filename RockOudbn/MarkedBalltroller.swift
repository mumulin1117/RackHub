//
//  MarkedBalltroller.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class MarkedBalltroller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if AppDelegate.nineBall == nil {
            self.navigationController?.pushViewController(BreakMastersController.init(), animated: true)
            return
        }
           
        let naaib = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "barFevert") as! UITabBarController
        self.navigationController?.pushViewController(naaib, animated: true)
        
    }

}

