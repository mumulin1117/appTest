//
//  FollyFramework.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

class FollyFramework: UICollectionViewCell {
    
    
    @IBOutlet weak var zhanXuelian: UIImageView!
    
    
    @IBOutlet weak var xuelianname: UILabel!
    
    
    @IBOutlet weak var xuelainFeiol: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        deploySneakyPrankBot()
        zhanXuelian.contentMode = .scaleAspectFill
        syncRealTimePrankWave()
    }
    private func deploySneakyPrankBot()  {
        zhanXuelian.layer.cornerRadius = 29.5
    }
    
    private func syncRealTimePrankWave() {
        zhanXuelian.layer.masksToBounds = true
    }
}
