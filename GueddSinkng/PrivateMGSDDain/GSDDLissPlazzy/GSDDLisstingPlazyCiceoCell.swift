//
//  GSDDLisstingPlazyCiceoCell.swift
//  GueddSinkng
//
//  Created by User on 2025/2/21.
//

import UIKit

class GSDDLisstingPlazyCiceoCell: UICollectionViewCell {

    @IBOutlet weak var ReporitgnVieoGSDD: UIButton!
    
    @IBOutlet weak var vioklNamenGSDD: UILabel!//
    
    
    @IBOutlet weak var zanGSDD: UIButton!
    
    
    @IBOutlet weak var videokoCoverGSDD: UIImageView!
    
    @IBOutlet weak var liaortyGSDD: UIButton!
    
    
    @IBOutlet weak var poinusericonGSDD: UIImageView!
    
    @IBOutlet weak var useringNAmeGS: UILabel!
    
    @IBOutlet weak var videghuContenGS: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        videokoCoverGSDD.layer.cornerRadius = 22
        videokoCoverGSDD.layer.masksToBounds = true
        
        poinusericonGSDD.layer.cornerRadius = 25
        poinusericonGSDD.layer.masksToBounds = true
        
    }

}
