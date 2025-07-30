//
//  HIlightCConCell.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class HIlightCConCell: UICollectionViewCell {

    @IBOutlet weak var pocketRattler: UIImageView!
    
    
    
    @IBOutlet weak var pocketCheater: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pocketRattler.layer.cornerRadius = 15
        mechanicalBridge()
        pocketRattler.layer.borderWidth = 1
    }

    
    private func mechanicalBridge()  {
        pocketRattler.layer.masksToBounds = true
        pocketRattler.layer.borderColor =  UIColor(red: 1, green: 0.28, blue: 0.49, alpha: 1).cgColor
    }
}
