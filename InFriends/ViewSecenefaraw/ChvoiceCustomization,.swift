//
//  ChvoiceCustomization.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit

class ChvoiceCustomization: UITableViewCell {
    
    lazy var message:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor(red: 0.953, green: 0.922, blue: 1.0, alpha: 1.0)
        label.text = "Key elements"
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.contentView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        let shadowView = UIView()
        shadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 0
        contentView.addSubview(shadowView)
        shadowView.snp.makeConstraints { make in
            make.left.greaterThanOrEqualToSuperview().offset(48)
            make.top.equalToSuperview()
            make.right.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview()
        }
        
        let bg = UIView()
        bg.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        bg.layer.cornerRadius = 16
        bg.layer.masksToBounds = true
        bg.layer.borderColor = UIColor(red: 0.329, green: 0.235, blue: 0.478, alpha: 1.0).cgColor
        bg.layer.borderWidth = 1
        shadowView.addSubview(bg)
        bg.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        shadowView.addSubview(message)
        message.snp.makeConstraints { make in
            make.left.equalTo(bg.snp.left).offset(15)
            make.right.equalTo(bg.snp.right).offset(-15)
            make.top.equalToSuperview().offset(11)
            make.bottom.equalToSuperview().offset(-14)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
