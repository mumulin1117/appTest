//
//  DiscobTopKnowledgeCellarCell.swift
//  Spatasterrkling
//

//

import UIKit

class DiscobTopKnowledgeCellarCell: UICollectionViewCell {
    
    @IBOutlet weak var DiscobTopqualityIndicator: UIImageView!
    
    
    @IBOutlet weak var DiscobTopflawDetection: UILabel!
    
    @IBOutlet weak var DiscobToptemperatureImpact: UILabel!
    
    
    @IBOutlet weak var DiscobTopaerationEffect: UIButton!
    
    @IBOutlet weak var DiscobToppicnicEssential: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        DiscobToppicnicEssential.layer.cornerRadius = 20
        DiscobToppicnicEssential.layer.masksToBounds = true
        DiscobTopcorkMemory()
    }

    
    private func DiscobTopcorkMemory() {
        DiscobTopqualityIndicator.layer.cornerRadius = 12
        DiscobTopqualityIndicator.layer.masksToBounds = true
    }
    
    func DiscobTopblindChallenge(DiscobTopiuuu:Dictionary<String,Any>)  {
        DiscobTopflawDetection.text = DiscobTopiuuu["ratingSystem"] as? String
        DiscobToptemperatureImpact.text = DiscobTopiuuu["qualityIndicator"] as? String
        
        if let DiscobTopcork = (DiscobTopiuuu["biodynamicWine"] as? Array<String>)?.first {
            DiscobToppicnicEssential.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: DiscobTopcork)
        }
        if let cork = (DiscobTopiuuu["aerationEffect"] as? String) {
            DiscobTopqualityIndicator.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: cork)
        }
    }
}
