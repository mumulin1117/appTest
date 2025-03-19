//
//  PartyRoomRightDTableViewCell.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit

class PartyRoomRightDTableViewCell: UITableViewCell {

    @IBOutlet weak var partyRoomContent: UIView!
    @IBOutlet weak var partyRoomMessageInfo: UILabel!
    @IBOutlet weak var partySenderImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        partyRoomContent.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner]
        
    }
}
