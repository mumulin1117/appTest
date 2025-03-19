//
//  ToyTalksInfoTableViewCell.swift
//  Toye
//
//  Created by Toye on 2025/1/11.
//

import UIKit

class ToyTalksInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var talkInfoContainer: UIView!
    @IBOutlet weak var talkInfo: UILabel!
    @IBOutlet weak var talkTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        talkInfoContainer.layer.cornerRadius = 30
        talkInfoContainer.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner]
        talkInfoContainer.layer.masksToBounds = true
        
    }

    
}
