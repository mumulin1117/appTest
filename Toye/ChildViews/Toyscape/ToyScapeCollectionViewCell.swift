//
//  ToyScapeCollectionViewCell.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit

class ToyScapeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var toyImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        toyImage.layer.borderWidth = 1
        toyImage.layer.borderColor = UIColor.black.cgColor
    }

}
