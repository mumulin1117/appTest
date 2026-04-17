//
//  CUEBOSHTWHIlightCConCell.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit
struct CUEBOSHTWPhotoAnalysis {
    let suggestions: [String]
    let score: Int
}
class CUEBOSHTWHIlightCConCell: UICollectionViewCell {

    @IBOutlet weak var pocketRattler: UIImageView!
    
    static  var CUEBOSHTWstrokeFollowThrough:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
    @IBOutlet weak var pocketCheater: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pocketRattler.layer.cornerRadius = 15
        mechanicalBridge()
        pocketRattler.layer.borderWidth = 1
    }

    
    private func mechanicalBridge()  {
        pocketRattler.layer.masksToBounds = true
        pocketRattler.layer.borderColor =  UIColor(red: 1, green: 0.28, blue: 0.49, alpha: 1).cgColor
    }
}
