//
//  PartyRoomLeftDTableViewCell.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit

class PartyRoomLeftDTableViewCell: UITableViewCell {

    @IBOutlet weak var partyRoomContent: UIView!
    @IBOutlet weak var partyRoomMessageInfo: UILabel!
    @IBOutlet weak var partySenderImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        partyRoomContent.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner,.layerMaxXMaxYCorner]
    }
}
