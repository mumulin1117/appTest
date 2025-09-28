//
//  MoodsomonCell.swift
//  Spatasterrkling
//

//

import UIKit

class MoodsomonCell: UICollectionViewCell {
    
    @IBOutlet weak var qualityIndicator: UIImageView!
    
    
    @IBOutlet weak var flawDetection: UILabel!
    
    @IBOutlet weak var temperatureImpact: UILabel!
    
    
    @IBOutlet weak var aerationEffect: UIButton!
    
    @IBOutlet weak var picnicEssential: UIImageView!
    
    @IBOutlet weak var UIQnua: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        qualityIndicator.layer.cornerRadius = 24
       
        corkMemory()
    }

    
    private func corkMemory() {
        qualityIndicator.layer.masksToBounds = true
    }
    
    func blindChallenge(iuuu:Dictionary<String,Any>)  {
        flawDetection.text = iuuu["ratingSystem"] as? String
        temperatureImpact.text = iuuu["qualityIndicator"] as? String
        
        if let cork = (iuuu["bottleJournal"] as? String) {
            picnicEssential.dessertSweetness(ournal: cork)
        }
        if let cork = (iuuu["aerationEffect"] as? String) {
            qualityIndicator.dessertSweetness(ournal: cork)
        }
    }
}
