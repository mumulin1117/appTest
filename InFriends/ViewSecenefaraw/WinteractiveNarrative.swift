//
//  WinteractiveNarrative.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit

class WinteractiveNarrative: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    
    @IBOutlet weak var goldCOunt: UILabel!
    
    @IBOutlet weak var priceBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let bgLayer1 = CAGradientLayer()
        bgLayer1.colors = [UIColor(red: 0.77, green: 0.43, blue: 0.99, alpha: 1).cgColor, UIColor(red: 0.04, green: 0.99, blue: 0.98, alpha: 1).cgColor]
        bgLayer1.locations = [0, 1]
        bgLayer1.frame = CGRectMake(0, 0, 74, 40)
        bgLayer1.startPoint = CGPoint(x: 0, y: 0.5)
        bgLayer1.endPoint = CGPoint(x: 1, y: 0.5)
        priceBtn.layer.insertSublayer(bgLayer1, at: 0)
        if let img = priceBtn.imageView{
            priceBtn.bringSubviewToFront(img)
        }
        
    }

    
}
