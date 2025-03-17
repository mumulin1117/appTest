//
//  DSORCubertrelationCell.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/14.
//

import UIKit

class DSORCubertrelationCell: UITableViewCell {

    @IBOutlet weak var namerVcDSOR: UILabel!
    
    
    @IBOutlet weak var conberDSOR: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        conberDSOR.layer.cornerRadius = 24
        conberDSOR.layer.masksToBounds = true
    }


}
