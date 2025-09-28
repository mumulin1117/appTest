//
//  RegionExpertCell.swift
//  Spatasterrkling
//

//

import UIKit

class RegionExpertCell: UITableViewCell {
   
    @IBOutlet weak var qualityIndicator: UIImageView!
    
    @IBOutlet weak var flawDetection: UILabel!
    
    @IBOutlet weak var HUkasdxxxxx: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        corkMemory()
        self.selectionStyle = .none
        HUkasdxxxxx.layer.cornerRadius = 10
        HUkasdxxxxx.layer.masksToBounds = true
    }

 
    
    
    private func corkMemory() {
        qualityIndicator.layer.cornerRadius = 28
        qualityIndicator.layer.masksToBounds = true
    }
    
    func blindChallenge(iuuu:Dictionary<String,Any>)  {
        flawDetection.text = iuuu["ratingSystem"] as? String
       
        
        if let cork = (iuuu["biodynamicWine"] as? Array<String>)?.first {
            qualityIndicator.dessertSweetness(ournal: cork)
        }
       
    }
    
}
