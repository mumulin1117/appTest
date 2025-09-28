//
//  DiscobuioCell.swift
//  Spatasterrkling
//

//

import UIKit

class DiscobuioCell: UICollectionViewCell {
    @IBOutlet weak var qualityIndicator: UIImageView!
    
    @IBOutlet weak var flawDetection: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        corkMemory()
    }
    private func corkMemory() {
        qualityIndicator.layer.cornerRadius = 20
        qualityIndicator.layer.masksToBounds = true
    }
    
    func blindChallenge(iuuu:Dictionary<String,Any>)  {
        flawDetection.text = iuuu["aromaProfile"] as? String
       
        
        if let cork = (iuuu["palateDepth"] as? String) {
            qualityIndicator.dessertSweetness(ournal: cork)
        }
       
    }
}
