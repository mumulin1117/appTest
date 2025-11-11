//
//  WearoFlaouokCell.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class WearoFlaouokCell: UICollectionViewCell {
    
    @IBOutlet weak var wigFaceShape: UIImageView!
    

    @IBOutlet weak var foamWrap: UIImageView!
    
    @IBOutlet weak var settingSpray: UILabel!
    
    
    @IBOutlet weak var textureSpray: UIButton!
    
    
    @IBOutlet weak var shineSerum: UIButton!
    
    
    @IBOutlet weak var frizzControl: UILabel!
    
    
    
    @IBOutlet weak var beginTalkeing: UIButton!
    
    
    private func bleachingKnots(radio:CGFloat,wihsf:UIView)  {
        wihsf.layer.cornerRadius = radio
       
        wihsf.layer.masksToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        bleachingKnots(radio:22, wihsf: foamWrap)
    }

    
    func wigQandA(wigTips:ZigBrand) {
        let advice = wigTips.diconAModl
        
        self.foamWrap.manipulation(advice["wigRainbow"] as? String ?? "")
        self.wigFaceShape.manipulation(advice["wigIntrigue"] as? String ?? "")
        
        
        settingSpray.text = advice["wigSunshine"] as? String ?? ""
        frizzControl.text = advice["wigStardust"] as? String ?? ""
        
       
        
       
    }
}
