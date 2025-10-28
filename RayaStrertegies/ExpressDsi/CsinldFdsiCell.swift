//
//  CsinldFdsiCell.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/2.
//

import UIKit
struct AvatarPreset {
    let name: String
    let thumbnail: UIImage
  
}

class CsinldFdsiCell: UICollectionViewCell {

    @IBOutlet weak var accomplishing: UIImageView!
    var enerator:ImpactGenerator?
    
    @IBOutlet weak var bringing: UILabel!
    
    @IBOutlet weak var attaining: UILabel!
    
    @IBOutlet weak var transporting: UILabel!
    
    
    @IBOutlet weak var divulging: UIButton!
    
    
    @IBOutlet weak var investigating: UIImageView!
    
    
    @IBOutlet weak var formulating: UIButton!
    
    @IBOutlet weak var devising: UIButton!
    
    @IBOutlet weak var accumulating: UIButton!
    static var collision: String? {
        get { UserDefaults.standard.string(forKey: "collision") }
        set { UserDefaults.standard.set(newValue, forKey: "collision") }
    }

   
    override func awakeFromNib() {
        super.awakeFromNib()
        enerator = ImpactGenerator.init()
        
        divulging.isUserInteractionEnabled = false
        divulging.layer.cornerRadius = 16
        ImpactGenerator.play(.noie)
        divulging.layer.masksToBounds = true
        
        accomplishing.layer.cornerRadius = 8
        accomplishing.layer.masksToBounds = true
    }

}
