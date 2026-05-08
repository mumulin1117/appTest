//
//  DiscobTopRegionExpertCell.swift
//  Spatasterrkling
//

//

import UIKit

class DiscobTopRegionExpertCell: UITableViewCell {
   
    @IBOutlet weak var DiscobTopqualityIndicator: UIImageView!
    
    @IBOutlet weak var DiscobTopflawDetection: UILabel!
    
    @IBOutlet weak var DiscobTopHUkasdxxxxx: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        DiscobTopcorkMemory()
        self.selectionStyle = .none
        DiscobTopHUkasdxxxxx.layer.cornerRadius = 10
        DiscobTopHUkasdxxxxx.layer.masksToBounds = true
    }

 
    
    
    private func DiscobTopcorkMemory() {
        DiscobTopqualityIndicator.layer.cornerRadius = 28
        DiscobTopqualityIndicator.layer.masksToBounds = true
    }
    
    func DiscobTopblindChallenge(DiscobTopiuuu:Dictionary<String,Any>)  {
        DiscobTopflawDetection.text = DiscobTopiuuu["palmLeaf"] as? String
       
        
        if let DiscobTopcork = (DiscobTopiuuu["biodynamicWine"] as? Array<String>)?.first {
            DiscobTopqualityIndicator.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: DiscobTopcork)
        }
       
    }
    
}
