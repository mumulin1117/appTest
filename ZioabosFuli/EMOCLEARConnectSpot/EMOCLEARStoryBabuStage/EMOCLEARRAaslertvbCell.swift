//
//  EMOCLEARRAaslertvbCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit

class EMOCLEARRAaslertvbCell: UICollectionViewCell {

    @IBOutlet weak var dataAnonymization: UILabel!
    
    
    @IBOutlet weak var realTimeSync: UILabel!
    
    static var themeCustomization = Array<Dictionary<String,String>>()
    
    @IBOutlet weak var lowLatencyAudio: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundNoiseFilter()
        lowLatencyAudio.text = "Rneqcjhqaurigge".characterBelievability()
    }

    
    private func backgroundNoiseFilter()  {
        lowLatencyAudio.layer.cornerRadius =  20
        lowLatencyAudio.layer.masksToBounds = true
    }
}
