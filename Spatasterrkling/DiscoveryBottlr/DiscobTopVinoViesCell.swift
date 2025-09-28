//
//  DiscobTopVinoViesCell.swift
//  Spatasterrkling
//

//

import UIKit
import SDWebImage
class DiscobTopVinoViesCell: UICollectionViewCell {

    @IBOutlet weak var qualityIndicator: UIImageView!
    
    
    @IBOutlet weak var flawDetection: UILabel!
    
    @IBOutlet weak var temperatureImpact: UILabel!
    
    
    @IBOutlet weak var aerationEffect: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        corkMemory()
    }

    
    private func corkMemory() {
        qualityIndicator.layer.cornerRadius = 20
        qualityIndicator.layer.masksToBounds = true
    }
    
    func blindChallenge(iuuu:Dictionary<String,Any>)  {
        flawDetection.text = iuuu["ratingSystem"] as? String
        temperatureImpact.text = iuuu["qualityIndicator"] as? String
        
        if let cork = (iuuu["biodynamicWine"] as? Array<String>)?.first {
            qualityIndicator.dessertSweetness(ournal: cork)
        }
       
    }
}

