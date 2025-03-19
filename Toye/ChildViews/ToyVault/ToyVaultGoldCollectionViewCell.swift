//
//  ToyVaultGoldCollectionViewCell.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit

class ToyVaultGoldCollectionViewCell: UICollectionViewCell {
    
    var toyFlagAction:(()->Void)?

    @IBOutlet weak var toyeCountNumber: UILabel!
    
    @IBOutlet weak var toyeOwnerFlagButton: UIButton!
    
    @IBAction func toyeOwnerFlagButtonAction(_ sender: Any) {
        toyFlagAction?()
    }
}
