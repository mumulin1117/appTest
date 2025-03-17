//
//  DSORDiscoveVerticalAiCel.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/10.
//

import UIKit

class DSORDiscoveVerticalAiCel: UICollectionViewCell {
 
    @IBOutlet weak var gogogDSORBg: UIView!
    
    @IBOutlet weak var seeecountDSORbg: UIView!
    
    @IBOutlet weak var robertnameDSOR: UILabel!
    
    @IBOutlet weak var robercentHEaderDSOR: UIImageView!
    
    
    @IBOutlet weak var roberbriefDSOR: UILabel!
    
    @IBOutlet weak var roberTypeDSOR: UILabel!
    
    @IBOutlet weak var roberSeecDSOR: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        robercentHEaderDSOR.layer.cornerRadius = 34.5
        robercentHEaderDSOR.layer.masksToBounds = true
        robercentHEaderDSOR.layer.borderWidth = 1.5
        robercentHEaderDSOR.layer.borderColor = UIColor(red: 0.95, green: 0.85, blue: 0.63, alpha: 1).cgColor
        
        gogogDSORBg.layer.cornerRadius = 4
        gogogDSORBg.layer.masksToBounds = true
        
        
        seeecountDSORbg.layer.cornerRadius = 4
        seeecountDSORbg.layer.masksToBounds = true
    }

}
