//
//  ChaLavatarPersonalization.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit

class ChaLavatarPersonalization: UITableViewCell {
    
    lazy var avatarImg:UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 8
        img.layer.masksToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var message:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor(red: 0.498, green: 0.580, blue: 1.0, alpha: 1.0)
        label.text = "You can enhance the suspense by introducing different twists and unexpected events in the emotional arc."
        label.numberOfLines = 0
        return label
    }()
    
    var model:MsituationalS?{
        didSet{
            if let m = model{
                message.text = m.messageContent
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.contentView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        contentView.addSubview(avatarImg)
        avatarImg.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalToSuperview()
            make.size.equalTo(CGSizeMake(40, 40))
        }
        
        let shadowView = UIView()
        shadowView.layer.shadowColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 0
        contentView.addSubview(shadowView)
        shadowView.snp.makeConstraints { make in
            make.left.equalTo(avatarImg.snp.right).offset(8)
            make.top.equalToSuperview()
            make.right.lessThanOrEqualToSuperview().offset(-15)
            make.bottom.equalToSuperview()
        }
        
        let bg = UIView()
        bg.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        bg.layer.cornerRadius = 16
        bg.layer.masksToBounds = true
        bg.layer.borderColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0).cgColor
        bg.layer.borderWidth = 1
        shadowView.addSubview(bg)
        bg.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        shadowView.addSubview(message)
        message.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.right.equalTo(bg.snp.right).offset(-12)
            make.top.equalToSuperview().offset(11)
            make.bottom.equalToSuperview().offset(-14)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
