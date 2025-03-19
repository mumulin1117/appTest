//
//  TreasureHuntCollectionViewCell.swift
//  Toye
//
//  Created by Toye on 2025/1/11.
//

import UIKit

class TreasureHuntCollectionViewCell: UICollectionViewCell {
    
    var gotoToyUsercenterClosure:(()->())?
    @IBOutlet weak var toyScapeImage: UIImageView!
    @IBOutlet weak var toyIntroduction: UILabel!
    @IBOutlet weak var toyUserInfoImage: UIImageView!
    @IBOutlet weak var toyOwner: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func gotoToyUsercenter(_ sender: Any) {
        gotoToyUsercenterClosure?()
    }
    
}
