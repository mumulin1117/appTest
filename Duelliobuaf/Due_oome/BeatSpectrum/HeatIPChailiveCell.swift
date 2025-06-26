//
//  HeatIPChailiveCell.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/2.
//

import UIKit

class HeatIPChailiveCell: UITableViewCell {
   
    
     let userImage = UIImageView(image:AppDelegate.HuiwchaerQuil)
    
                                                              
   
     lazy var meshaineLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mte") 
        laj.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        laj.textColor =  UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        return laj
    }()
    
     lazy var senoutneLabel: UILabel = {
        let laj = UILabel.init()
         laj.numberOfLines = 0
        laj.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        laj.textColor =  UIColor.white
        return laj
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        let herde = UIView.init()
        self.backgroundColor = .clear
        herde.layer.cornerRadius = 7
        herde.layer.masksToBounds = true
        userImage.layer.cornerRadius = 16
        userImage.layer.masksToBounds = true
        
       
        
        herde.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
    
        
        contentView.addSubview(herde)
        contentView.addSubview(userImage)
        contentView.addSubview(meshaineLabel)
        contentView.addSubview(senoutneLabel)
        
        userImage.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.leading.equalToSuperview().offset(14)
            make.top.equalToSuperview().offset(12)
        }
        
        
        meshaineLabel.snp.makeConstraints { make in
            make.leading.equalTo(userImage.snp.trailing).offset(8)
            make.top.equalTo(userImage.snp.top)
            make.height.equalTo(15)
            
        }
        senoutneLabel.snp.makeConstraints { make in
            make.leading.equalTo(userImage.snp.trailing).offset(8)
            make.top.equalTo(meshaineLabel.snp.bottom).offset(3)
            make.width.equalTo(185)
            make.bottom.equalToSuperview().offset(-12)
        }
        
        
        herde.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.top.equalTo(userImage.snp.top).offset(-6)
            make.width.equalTo(247)
            make.height.greaterThanOrEqualTo(47)
            make.bottom.equalTo(senoutneLabel.snp.bottom).offset(6)
        }
        
       
        
     
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
