//
//  UsercenterReusableView.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit

class UsercenterReusableView: UICollectionReusableView {
    
    var selectType:((Int)->())?

    var mobaishiot:UhaviorSyste?{
        didSet{
            if let m = mobaishiot {
                avatar.mySetImage(obj: m.avatar)
                paraphracourse.text = m.styleLearning
                userID.text = "  ID:" + m.userId + "  "
                sexFlag.image = m.gender == "Male" ? UIImage(named: "icon_nan") : UIImage(named: "sex_g")
            }
        }
    }
    
    var postValue:Int? {
        didSet{
            if let value = postValue{
                self.postNumber.text = "\(value) Post"
            }
        }
    }
    
    lazy var avatar:UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 50
        img.layer.masksToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var paraphracourse:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = .white
        label.text = " "
        return label
    }()
    
    lazy var sexFlag:UIImageView = {
        let img = UIImageView(image: UIImage(named: "sex_g"))
        return img
    }()
    
    lazy var userInfoV:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        
        v.addSubview(paraphracourse)
        paraphracourse.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        v.addSubview(sexFlag)
        sexFlag.snp.makeConstraints { make in
            make.left.equalTo(paraphracourse.snp.right).offset(7)
            make.top.right.bottom.equalToSuperview()
            make.size.equalTo(CGSizeMake(20, 20))
        }
        
        return v
    }()
    
    lazy var userID:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        label.text = "    "
        label.backgroundColor = UIColor(red: 0.2, green: 0.129, blue: 0.31, alpha: 1.0)
        label.layer.cornerRadius = 12
        label.layer.masksToBounds = true
        return label
    }()
    
    lazy var postNumber:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = .white
        label.text = "0 Post"
        return label
    }()
    
    lazy var dynamicStoryss:UIButton = {
        let goalOriented = UIButton(type: .custom)
        goalOriented.setImage(UIImage(named: "ic_video_call"), for: .normal)
        goalOriented.backgroundColor = UIColor(red: 1.0, green: 0.302, blue: 0.651, alpha: 1.0)
        goalOriented.layer.cornerRadius = 16
        goalOriented.layer.masksToBounds = true
        goalOriented.interfaceWithADesign { [weak self] sender in
            self?.selectType?(0)
        }
        return goalOriented
    }()
    
    lazy var creativeNarrativeBau:UIButton = {
        let creativeNarrativeddd = UIButton(type: .custom)
        creativeNarrativeddd.setImage(UIImage(named: "Swanteho"), for: .normal)
        creativeNarrativeddd.setTitle("Cfhbact".key, for: .normal)
        creativeNarrativeddd.titleLabel?.font = UIFont.systemFont(ofSize: 17,weight: .medium)
        creativeNarrativeddd.setTitleColor(.white, for: .normal)
        creativeNarrativeddd.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0)
        creativeNarrativeddd.layer.cornerRadius = 16
        creativeNarrativeddd.layer.masksToBounds = true
        creativeNarrativeddd.interfaceWithADesign { [weak self] sender in
            self?.selectType?(1)
        }
        return creativeNarrativeddd
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        
        self.addSubview(avatar)
        avatar.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(10)
            make.size.equalTo(CGSizeMake(100, 100))
        }
        
        self.addSubview(userInfoV)
        userInfoV.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(avatar.snp.bottom).offset(13)
        }
        
        self.addSubview(userID)
        userID.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userInfoV.snp.bottom).offset(10)
            make.height.equalTo(22)
        }
        
        self.addSubview(dynamicStoryss)
        dynamicStoryss.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(23)
            make.top.equalTo(userID.snp.bottom).offset(34)
            make.size.equalTo(CGSizeMake(52, 52))
        }
        
        self.addSubview(creativeNarrativeBau)
        creativeNarrativeBau.snp.makeConstraints { make in
            make.left.equalTo(dynamicStoryss.snp.right).offset(10)
            make.top.equalTo(userID.snp.bottom).offset(34)
            make.height.equalTo(52)
            make.right.equalToSuperview().offset(-23)
        }
        
        self.addSubview(postNumber)
        postNumber.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(creativeNarrativeBau.snp.bottom).offset(40)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

