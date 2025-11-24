//
//  EMOCLEARStoryBabuSmeaCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class EMOCLEARStoryBabuSmeaCell: UICollectionViewCell {
    @IBOutlet weak var refined: UIImageView!
    
    @IBOutlet weak var spatialAudio: UILabel!
    
    static var Metrics:UIImage = UIImage(named: "EMOCLEAZaboIO")!
    
    @IBOutlet weak var voiceActing: UILabel!
    
    private func voicePitchControl()  {
        refined.layer.cornerRadius = 30
        refined.layer.masksToBounds = true
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        voicePitchControl()
    }

}
