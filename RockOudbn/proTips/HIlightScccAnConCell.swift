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
        shotSelection()
        bridgeLength()
    }

    private func shotSelection()  {
        self.layer.masksToBounds = true
        
        railCushion.layer.cornerRadius = 19
    }
    
    func bridgeLength() {
        self.layer.cornerRadius = 10
        
        railCushion.layer.masksToBounds = true
    }
}
