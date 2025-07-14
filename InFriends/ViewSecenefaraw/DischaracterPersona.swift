//
//  DischaracterPersona.swift
//  InFriends
//
//  Created by InFriends on 2024/8/26.
//

import UIKit

class DischaracterPersona: UICollectionViewCell {
    
    lazy var picBG:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        v.layer.cornerRadius = 16
        v.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        return v
    }()
    
    lazy var robotImg:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 16
        img.layer.masksToBounds = true
        img.layer.borderColor = UIColor(red: 0.298, green: 0.729, blue: 0.729, alpha: 1.0).cgColor
        img.layer.borderWidth = 1
        return img
    }()
    
    lazy var bottomView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        v.layer.cornerRadius = 16
        v.layer.masksToBounds = true
        return v
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
    
    lazy var icon:UIImageView = {
        let icon = UIImageView(image: UIImage(named: "icon_fx_more"))
        icon.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        icon.layer.borderColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0).cgColor
        icon.layer.borderWidth = 1
        icon.layer.cornerRadius = 15
        icon.layer.masksToBounds = true
        icon.contentMode = .center
        return icon
    }()
    
    var model:RCulturalSystem?{
        didSet{
            if let m = model {
                robotImg.mySetImage(obj: m.pic)
                nameLabel.text = m.nickname
                descLabel.text = m.desc
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        self.contentView.addSubview(picBG)
        picBG.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(120)
        }
        
        self.contentView.addSubview(robotImg)
        robotImg.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(picBG.snp.top).offset(16)
            make.size.equalTo(CGSizeMake(80, 80))
        }
        
        self.contentView.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(picBG.snp.bottom)
            make.bottom.equalToSuperview()
        }
        
        self.contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(bottomView.snp.left).offset(13)
            make.right.equalTo(bottomView.snp.right).offset(-13)
            make.top.equalTo(bottomView.snp.top).offset(20)
        }
        
        self.contentView.addSubview(descLabel)
        descLabel.snp.makeConstraints { make in
            make.left.equalTo(bottomView.snp.left).offset(13)
            make.right.equalTo(bottomView.snp.right).offset(-13)
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
        }
        
        self.contentView.addSubview(icon)
        icon.snp.makeConstraints { make in
            make.right.equalTo(picBG.snp.right)
            make.bottom.equalTo(picBG.snp.bottom).offset(20)
            make.size.equalTo(CGSizeMake(30, 30))
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
