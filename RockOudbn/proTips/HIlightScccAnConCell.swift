//
//  HIlightScccAnConCell.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class HIlightScccAnConCell: UICollectionViewCell {
    @IBOutlet weak var railRubber: UIImageView!
    
    @IBOutlet weak var railCushion: UIImageView!
    
    
    @IBOutlet weak var railNose: UILabel!
    
    
    @IBOutlet weak var pocketShape: UIButton!
    
    
    
    @IBOutlet weak var pocketReducer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        
        railCushion.layer.cornerRadius = 19
        railCushion.layer.masksToBounds = true
    }

}
