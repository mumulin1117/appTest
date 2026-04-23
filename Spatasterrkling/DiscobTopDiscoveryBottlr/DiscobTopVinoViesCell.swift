//
//  DiscobTopVinoViesCell.swift
//  Spatasterrkling
//

//

import UIKit

class DiscobTopVinoViesCell: UICollectionViewCell {

    @IBOutlet weak var DiscobTopqualityIndicator: UIImageView!
    
    
    @IBOutlet weak var DiscobTopflawDetection: UILabel!
    
    @IBOutlet weak var DiscobToptemperatureImpact: UILabel!
    
    
    @IBOutlet weak var DiscobTopaerationEffect: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        DiscobTopcorkMemory()
    }

    
    private func DiscobTopcorkMemory() {
        DiscobTopqualityIndicator.layer.cornerRadius = 20
        DiscobTopqualityIndicator.layer.masksToBounds = true
    }
    
    func DiscobTopblindChallenge(DiscobTopiuuu:Dictionary<String,Any>)  {
        DiscobTopflawDetection.text = DiscobTopiuuu["ratingSystem"] as? String
        DiscobToptemperatureImpact.text = DiscobTopiuuu["qualityIndicator"] as? String
        
        if let DiscobTopcork = (DiscobTopiuuu["biodynamicWine"] as? Array<String>)?.first {
            DiscobTopqualityIndicator.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: DiscobTopcork)
        }
       
    }
}

