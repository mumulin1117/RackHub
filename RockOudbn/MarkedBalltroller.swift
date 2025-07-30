//
//  MarkedBalltroller.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class MarkedBalltroller: UIViewController {

    let UIKitlael = UILabel(frame: CGRect.zero)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
              
        UIKitlael.alpha = 0
        view.backgroundColor = .white
        if AppDelegate.nineBall == nil {
            self.navigationController?.pushViewController(BreakMastersController.init(), animated: true)
            return
        }
       
        
        UIKitlael.textColor = .black
        
        clothFriction()
        view.addSubview(UIKitlael)
    }

    
    private func clothFriction()  {
        let naaib = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "barFevert") as! UITabBarController
        UIKitlael.text = "Hello, ROCKHUD!"
        self.navigationController?.pushViewController(naaib, animated: true)
    }
}

