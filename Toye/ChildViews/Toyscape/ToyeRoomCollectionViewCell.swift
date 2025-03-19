//
//  ToyeRoomCollectionViewCell.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit

class ToyeRoomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var toyeRoomImage: UIImageView!
    @IBOutlet weak var talkRoomIdentifier: UILabel!
    @IBOutlet weak var joinUserSuperView: ToyScapeChildUserView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        toyeRoomImage.layer.borderWidth = 1
        toyeRoomImage.layer.borderColor = UIColor.black.cgColor
    }

}
