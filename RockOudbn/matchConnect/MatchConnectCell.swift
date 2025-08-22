//
//  MatchConnectCell.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class MatchConnectCell: UICollectionViewCell {

    @IBOutlet weak var jointPin: UIImageView!
    
    @IBOutlet weak var taperType: UIImageView!
    
    
    @IBOutlet weak var leatherTip: UIImageView!
    
    
    @IBOutlet weak var hardnessRating: UIImageView!
    
    @IBOutlet weak var hitConsistency: UILabel!
    
    
    @IBOutlet weak var strokeSpeed: UILabel!
    
    
    @IBOutlet weak var strokeTempo: UIImageView!
    
    @IBOutlet weak var scare: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        jointPin.layer.masksToBounds = true
        
        strokeAccuracy()
        self.clipsToBounds = true
        taperHighterType()
        hardnessRating.clipsToBounds = true
    }

    
    private func strokeAccuracy() {
        leatherTip.layer.masksToBounds = true
        
        self.layer.cornerRadius = 10
    }
    
    func taperHighterType() {
        taperType.layer.masksToBounds = true
        hardnessRating.layer.cornerRadius = 22
    }
}
