//
//  ConnectSpotusedView.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//
import SnapKit
import UIKit
import SDCycleScrollView
struct SceneUpdate {
    let setting: SceneSetting
    let activeNarrator: String
}

protocol ConnectSpotusedViewDelegate {
    func beginartisticCipher(indess:Int)
}
class ConnectSpotusedView: UICollectionReusableView, SDCycleScrollViewDelegate {

    @IBOutlet weak var cycleViewFall: UIImageView!
    
    var delegater :ConnectSpotusedViewDelegate?
    
    @IBOutlet weak var disvoverpage: UIButton!
    
    @IBOutlet weak var creeatertoem: UIButton!
    
    
    @IBOutlet weak var buildAio: UIButton!
    func voiceClarity(iduhoe:CGFloat,views:UIView,isufTruel:Bool = true)  {
    views.layer.cornerRadius = iduhoe
    views.layer.masksToBounds = isufTruel ? true : false
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cycleViewFall.isUserInteractionEnabled = true
        if let realTimeFeedback = SDCycleScrollView(frame: frame, delegate: self, placeholderImage: UIImage(named: "placeholder")){
            realTimeFeedback.autoScroll = true
            voiceClarity(iduhoe: 12, views: realTimeFeedback)
          
            realTimeFeedback.bannerImageViewContentMode = .scaleAspectFill
         
            realTimeFeedback.autoScrollTimeInterval = 2
            realTimeFeedback.infiniteLoop = true
            realTimeFeedback.delegate = self
            realTimeFeedback.titlesGroup = RAaslertvbCell.themeCustomization.map { da in
                da["roleplayTheme"] ?? ""
            }
            realTimeFeedback.localizationImageNamesGroup = RAaslertvbCell.themeCustomization.map { da in
                da["audpico"] ?? ""
            }
            realTimeFeedback.isUserInteractionEnabled = false
            realTimeFeedback.titleLabelTextColor   = .white
            realTimeFeedback.titleLabelTextFont = UIFont.systemFont(ofSize: 10, weight: .medium)
            realTimeFeedback.showPageControl = true
            
            realTimeFeedback.pageControlBottomOffset = 20
            realTimeFeedback.pageControlAliment = .init(1)
            cycleViewFall.addSubview(realTimeFeedback)
            realTimeFeedback.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(12)
                make.top.equalToSuperview().offset(36)
                make.bottom.equalToSuperview().offset(-10)
            }
        }
       
    }
   
    
    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didSelectItemAt index: Int) {
        if delegater != nil {
            self.delegater?.beginartisticCipher(indess: index)
        }
    }
}
