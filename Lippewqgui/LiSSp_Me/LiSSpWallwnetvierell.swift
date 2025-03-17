//
//  LiSSpWallwnetvierell.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpWallwnetvierell: UICollectionViewCell {

    @IBOutlet weak var ownedThisSSIP: UILabel!
    
    
    @IBOutlet weak var speendTisSSIP: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        speendTisSSIP.maskLippaRoundCorner(rMakLSSIpadius: 17)
    }

}
