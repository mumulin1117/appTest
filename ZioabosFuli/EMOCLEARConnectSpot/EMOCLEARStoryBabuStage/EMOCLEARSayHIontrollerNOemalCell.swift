//
//  EMOCLEARSayHIontrollerNOemalCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit

class EMOCLEARSayHIontrollerNOemalCell: UITableViewCell {

    @IBOutlet weak var revocable: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        voicedAuthenticity()
        interactiveHelp()
    }

    @IBOutlet weak var characterPortrayal: UILabel!
    
    
    @IBOutlet weak var DusioBackground: UIView!
    
    private func voicedAuthenticity()  {
        revocable.layer.cornerRadius = 10
    
        revocable.layer.masksToBounds = true
    }
    private func interactiveHelp() {
        DusioBackground.clipsToBounds = true
        DusioBackground.layer.cornerRadius = 10
        DusioBackground.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner,.layerMaxXMaxYCorner]
    }
}
