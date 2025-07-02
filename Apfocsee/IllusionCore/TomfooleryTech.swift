//
//  TomfooleryTech.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit

class TomfooleryTech: UICollectionViewCell {
    @IBOutlet weak var fooceUserphoto: UIImageView!
    
    
    @IBOutlet weak var usernauioLbl: UILabel!
    
    @IBOutlet weak var tochatuityin: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        activateJokeDominoEffect()
        
        fooceUserphoto.layer.masksToBounds = true
    }

    private func activateJokeDominoEffect()  {
        fooceUserphoto.contentMode = .scaleAspectFill
        fooceUserphoto.layer.cornerRadius = 30
    }
    
}
