//
//  CUEBOSHTWHIlightScccAnConCell.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

class CUEBOSHTWHIlightScccAnConCell: UICollectionViewCell {
    @IBOutlet weak var CUEBOSHTWrailRubber: UIImageView!
    
    @IBOutlet weak var CUEBOSHTWrailCushion: UIImageView!
    
    
    @IBOutlet weak var CUEBOSHTWrailNose: UILabel!
    
    
    @IBOutlet weak var CUEBOSHTWpocketShape: UIButton!
    
    
    
    @IBOutlet weak var CUEBOSHTWpocketReducer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CUEBOSHTWshotSelection()
        CUEBOSHTWbridgeLength()
    }

    private func CUEBOSHTWshotSelection()  {
        self.layer.masksToBounds = true
        
        CUEBOSHTWrailCushion.layer.cornerRadius = 19
    }
    
    func CUEBOSHTWbridgeLength() {
        self.layer.cornerRadius = 10
        
        CUEBOSHTWrailCushion.layer.masksToBounds = true
    }
}
