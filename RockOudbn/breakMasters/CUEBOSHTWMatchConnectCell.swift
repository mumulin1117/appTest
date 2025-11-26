//
//  CUEBOSHTWMatchConnectCell.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class CUEBOSHTWMatchConnectCell: UICollectionViewCell {

    @IBOutlet weak var CUEBOSHTWjointPin: UIImageView!
    
    @IBOutlet weak var CUEBOSHTWtaperType: UIImageView!
    
    
    @IBOutlet weak var CUEBOSHTWleatherTip: UIImageView!
    
    
    @IBOutlet weak var CUEBOSHTWhardnessRating: UIImageView!
    
    @IBOutlet weak var CUEBOSHTWhitConsistency: UILabel!
    
    
    @IBOutlet weak var CUEBOSHTWstrokeSpeed: UILabel!
    
    
    @IBOutlet weak var CUEBOSHTWstrokeTempo: UIImageView!
    
    @IBOutlet weak var CUEBOSHTWscare: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CUEBOSHTWjointPin.layer.masksToBounds = true
        
        CUEBOSHTWstrokeAccuracy()
        self.clipsToBounds = true
        CUEBOSHTWtaperHighterType()
        CUEBOSHTWhardnessRating.clipsToBounds = true
    }

    
    private func CUEBOSHTWstrokeAccuracy() {
        CUEBOSHTWleatherTip.layer.masksToBounds = true
        
        self.layer.cornerRadius = 10
    }
    
    func CUEBOSHTWtaperHighterType() {
        CUEBOSHTWtaperType.layer.masksToBounds = true
        CUEBOSHTWhardnessRating.layer.cornerRadius = 22
    }
}
