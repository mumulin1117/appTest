//
//  DiscobuioCell.swift
//  Spatasterrkling
//

//

import UIKit

class DiscobTopDiscobuioCell: UICollectionViewCell {
    @IBOutlet weak var DiscobTopqualityIndicator: UIImageView!
    
    @IBOutlet weak var DiscobTopflawDetection: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        DiscobTopcorkMemory()
    }
    private func DiscobTopcorkMemory() {
        DiscobTopqualityIndicator.layer.cornerRadius = 20
        DiscobTopqualityIndicator.layer.masksToBounds = true
    }
    
    func DiscobTopblindChallenge(DiscobTopiuuu:Dictionary<String,Any>)  {
        DiscobTopflawDetection.text = DiscobTopiuuu["aromaProfile"] as? String
       
        
        if let DiscobTopcork = (DiscobTopiuuu["palateDepth"] as? String) {
            DiscobTopqualityIndicator.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: DiscobTopcork)
        }
       
    }
}
