//
//  DiscobTopMoodsomonCell.swift
//  Spatasterrkling
//

//

import UIKit

class DiscobTopMoodsomonCell: UICollectionViewCell {
    
    @IBOutlet weak var DiscobTopqualityIndicator: UIImageView!
    
    
    @IBOutlet weak var DiscobTopflawDetection: UILabel!
    
    @IBOutlet weak var DiscobToptemperatureImpact: UILabel!
    
    
    @IBOutlet weak var DiscobTopaerationEffect: UIButton!
    
    @IBOutlet weak var DiscobToppicnicEssential: UIImageView!
    
    @IBOutlet weak var DiscobTopUIQnua: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        DiscobTopqualityIndicator.layer.cornerRadius = 24
       
        DiscobTopcorkMemory()
    }

    
    private func DiscobTopcorkMemory() {
        DiscobTopqualityIndicator.layer.masksToBounds = true
    }
    
    func DiscobTopblindChallenge(DiscobTopiuuu:Dictionary<String,Any>)  {
        DiscobTopflawDetection.text = DiscobTopiuuu["ratingSystem"] as? String
        DiscobToptemperatureImpact.text = DiscobTopiuuu["qualityIndicator"] as? String
        
        if let DiscobTopcork = (DiscobTopiuuu["bottleJournal"] as? String) {
            DiscobToppicnicEssential.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: DiscobTopcork)
        }
        if let cork = (DiscobTopiuuu["aerationEffect"] as? String) {
            DiscobTopqualityIndicator.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: cork)
        }
    }
}
