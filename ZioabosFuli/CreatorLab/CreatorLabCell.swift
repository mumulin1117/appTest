//
//  CreatorLabCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class CreatorLabCell: UICollectionViewCell {
    @IBOutlet weak var antiExploitation: UIImageView!
    

    
    @IBOutlet weak var trustAndSafety: UIButton!
    
    
    @IBOutlet weak var userVerification: UILabel!
    
    
    @IBOutlet weak var behavioralAnalysis: UILabel!
    
    
    
    @IBOutlet weak var antiHarassment: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        antiHarassment.layer.masksToBounds = true
        antiHarassment.layer.cornerRadius = 25
        
        antiExploitation.layer.cornerRadius = 25
        antiExploitation.layer.masksToBounds = true
    }

}
