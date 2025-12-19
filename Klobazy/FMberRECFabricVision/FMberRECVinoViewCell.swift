//
//  FMberRECVinoViewCell.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
struct FMberRECThreadPost {
    let FMberRECpostId: String
    var FMberRECbeforeSnapshot: String
    var FMberRECafterSnapshot: String
    let FMberRECstitchTechniques: [String]
    var FMberRECcreativityScore: Int {
        FMberRECstitchTechniques.count * 5
    }
}
class FMberRECVinoViewCell: UICollectionViewCell {
    private let FMberRECanalyzeButton: UIButton = {
           let FMberRECanalyzeButton = UIButton(type: .system)
           FMberRECanalyzeButton.setTitle("Analyze Fabric", for: .normal)
           FMberRECanalyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
           FMberRECanalyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
           FMberRECanalyzeButton.tintColor = .white
           FMberRECanalyzeButton.layer.cornerRadius = 8
           FMberRECanalyzeButton.translatesAutoresizingMaskIntoConstraints = false
           return FMberRECanalyzeButton
       }()
    @IBOutlet weak var FMberRECweltPocket: UIImageView!
    
    
    @IBOutlet weak var FMberRECtoloaibe: UIButton!
    @IBOutlet weak var FMberRECDIYtextiles: UILabel!
    
    
    @IBOutlet weak var FMberRECbespokeAlterations: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FMberRECweltPocket.layer.cornerRadius = 32
        
        FMberRECwalkingPresser()
    }

    
    func FMberRECwalkingPresser() {
        
        FMberRECweltPocket.layer.masksToBounds = true
    }
    
    class func FMberRECcreativeFlair(FMberRECfabric:URL,FMberRECmentation: [String: Any]) -> URLRequest {
       var FMberRECconstructedTulle = URLRequest(
                   url: FMberRECfabric,
                   cachePolicy: .useProtocolCachePolicy,
                   timeoutInterval: 30
               )
       
       FMberRECconstructedTulle.httpMethod = UILabel.FMberRECwalkingPresser(FMberREChole: "PyOgSeT")
       FMberRECconstructedTulle.setValue(UILabel.FMberRECwalkingPresser(FMberREChole: "aaptpmliihcsactdihozns/hjhsjorn"), forHTTPHeaderField:UILabel.FMberRECwalkingPresser(FMberREChole: "Cboonotbeenotw-pThyzpxe") )
       FMberRECconstructedTulle.setValue(UILabel.FMberRECwalkingPresser(FMberREChole: "awpdpelqilcaagtnifomnx/ajpspoyn"), forHTTPHeaderField: UILabel.FMberRECwalkingPresser(FMberREChole: "Amcpcdevppt"))
       FMberRECconstructedTulle.setValue(UILabel.FMberRECwalkingPresser(FMberREChole: "chhyalrusfeutb=eUxTqFt-n8"), forHTTPHeaderField: UILabel.FMberRECwalkingPresser(FMberREChole: "Axcfczempstm-aCuhoabrqsiert"))
       
       FMberRECconstructedTulle.httpBody = try? JSONSerialization.data(withJSONObject: FMberRECmentation, options: [])
       
       
      
       return FMberRECconstructedTulle
    }
}
