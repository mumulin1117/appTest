//
//  CrashmStreamCell.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit

class CrashmStreamCell: UICollectionViewCell {

    @IBOutlet weak var dueLiveCoverimageview: UIImageView!
    
    @IBOutlet weak var avterDUE: UIImageView!
    
    @IBOutlet weak var LiabeTitle: UILabel!
    @IBOutlet weak var namertlbel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avterDUE.isUserInteractionEnabled = true
        self.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        self.layer.cornerRadius = 24
        self.layer.masksToBounds = true
        
        dueLiveCoverimageview.layer.cornerRadius = 24
        dueLiveCoverimageview.layer.masksToBounds = true
        
        avterDUE.layer.cornerRadius = 19
        avterDUE.layer.masksToBounds = true
    }

}
