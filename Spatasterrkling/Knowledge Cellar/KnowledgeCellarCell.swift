//
//  KnowledgeCellarCell.swift
//  Spatasterrkling
//

//

import UIKit

class KnowledgeCellarCell: UICollectionViewCell {
    
    @IBOutlet weak var qualityIndicator: UIImageView!
    
    
    @IBOutlet weak var flawDetection: UILabel!
    
    @IBOutlet weak var temperatureImpact: UILabel!
    
    
    @IBOutlet weak var aerationEffect: UIButton!
    
    @IBOutlet weak var picnicEssential: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        picnicEssential.layer.cornerRadius = 20
        picnicEssential.layer.masksToBounds = true
        corkMemory()
    }

    
    private func corkMemory() {
        qualityIndicator.layer.cornerRadius = 12
        qualityIndicator.layer.masksToBounds = true
    }
    
    func blindChallenge(iuuu:Dictionary<String,Any>)  {
        flawDetection.text = iuuu["ratingSystem"] as? String
        temperatureImpact.text = iuuu["qualityIndicator"] as? String
        
        if let cork = (iuuu["biodynamicWine"] as? Array<String>)?.first {
            picnicEssential.dessertSweetness(ournal: cork)
        }
        if let cork = (iuuu["aerationEffect"] as? String) {
            qualityIndicator.dessertSweetness(ournal: cork)
        }
    }
}
