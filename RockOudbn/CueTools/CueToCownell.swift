//
//  CueToCownell.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class CueToCownell: UICollectionViewCell {

    @IBOutlet weak var ferrule: UIImageView!
    
    @IBOutlet weak var chalkTip: UIButton!
    
    
    @IBOutlet weak var shaftWrap: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ferrule.layer.cornerRadius = 13
        hitConsistency()
        chalkTip.clipsToBounds = true
    }

    
    private func hitConsistency()  {
        ferrule.clipsToBounds = true
        
        
        chalkTip.layer.cornerRadius = 11
    }
}

extension UIImageView {
    func bankPool(achk string: String?) {
        guard let basicj = string,let url = URL(string: basicj) else { return  }
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil, let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                if self?.image == nil {
                    self?.image = image
                    self?.contentMode = .scaleAspectFill
                }
                
            }
        }.resume()
    }
}
