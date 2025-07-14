//
//  UseemotionalSynthesis.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit

class UseemotionalSynthesis: UICollectionViewCell {
    
    lazy var topImg:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor.white
        label.text = "故事大师"
        return label
    }()
    
    lazy var descLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5)
        label.text = "故事大师是您创作悬疑、惊悚和奇幻小说的终"
        label.numberOfLines = 2
        return label
    }()
    
    var model:RCulturalSystem?{
        didSet{
            if let m = model {
                topImg.mySetImage(obj: m.pic)
                nameLabel.text = m.nickname
                descLabel.text = m.desc
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        
        self.contentView.addSubview(topImg)
        let itemWidth = (UIScreen.main.bounds.size.width - 60)/2
        topImg.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(itemWidth)
        }
        
        self.contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(topImg.snp.bottom).offset(5)
        }
        
        self.contentView.addSubview(descLabel)
        self.descLabel.snp.makeConstraints { make in
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalTo(nameLabel.snp.right)
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
            make.bottom.equalToSuperview().offset(-9)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
