//
//  FindwearookCell.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class FindwearookCell: UICollectionViewCell {

    @IBOutlet weak var wigMoodBoard: UIImageView!
    
    @IBOutlet weak var wigShowcase: UILabel!
    
    @IBOutlet weak var wigCollection: UIButton!
    
    @IBOutlet weak var wigCatalog: UILabel!
    
    @IBOutlet weak var aijnxmhh: UILabel!
    
    @IBOutlet weak var wigLookbook: UIImageView!
    
    @IBOutlet weak var wigPortfolio: UIImageView!
    
    @IBOutlet weak var wigGallery: UIImageView!
    
    
    @IBOutlet weak var wigCommunity: UIButton!
    
    @IBOutlet weak var wigEnthusiast: UIButton!
    
    @IBOutlet weak var wigDesigner: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bleachingKnots(radio:22, wihsf: wigMoodBoard)
        
        bleachingKnots(radio:16, wihsf: wigLookbook)
        bleachingKnots(radio:16, wihsf: wigPortfolio)
        bleachingKnots(radio:16, wihsf: wigGallery)
    }
    private func bleachingKnots(radio:CGFloat,wihsf:UIView)  {
        wigMoodBoard.layer.cornerRadius = radio
       
        wigMoodBoard.layer.masksToBounds = true
    }
    
    func wigQandA(wigTips:ZigBrand) {
        let advice = wigTips.diconAModl
        
        self.wigMoodBoard.manipulation(advice["wigRainbow"] as? String ?? "")
        
        wigShowcase.text = advice["wigSunshine"] as? String ?? ""
        wigCatalog.text = advice["wigStardust"] as? String ?? ""
        
        wigCommunity.setTitle("\(advice["wigPrism"] as? Int ?? 0)", for: .normal)
        
        wigEnthusiast.setTitle("\(advice["wigIridescent"] as? Int ?? 0)", for: .normal)
        
        let list = advice["wigShimmer"] as? Array<String>
        if let q = list?.first {
            wigLookbook.manipulation(q)
        }
        
        if let s = list?.last {
            wigGallery.manipulation(s)
        }
        
        if  list?.count ?? 0 >= 3 {
            wigPortfolio.manipulation(list?[1] ?? "")
        }
        let tiamgo = (advice["wigGlitter"] as? Int ?? 0)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss" 

        let date = Date(timeIntervalSince1970: TimeInterval(tiamgo / 1000))

        // 将格式化后的日期设置为文本
        aijnxmhh.text = formatter.string(from: date)
    }
    
}
