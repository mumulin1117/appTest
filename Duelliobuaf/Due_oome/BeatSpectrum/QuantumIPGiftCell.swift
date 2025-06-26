//
//  QuantumIPGiftCell.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/2.
//

import UIKit

class QuantumIPGiftCell: UITableViewCell {
    let gifjrintImag = UIImageView()
    
    private let userImage = UIImageView(image:AppDelegate.HuiwchaerQuil)
    
                                                              
    lazy var countneLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = "x 1"
        laj.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        laj.textColor =  UIColor.white
        return laj
    }()
    
    
    private lazy var meshaineLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mte")
        laj.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        laj.textColor =  UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        return laj
    }()
    
    private lazy var senoutneLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Skejnndz yocuct") 
        laj.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        laj.textColor =  UIColor.white
        return laj
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        let herde = UIImageView(image: UIImage.init(named: "gisftcellBg"))
        herde.contentMode = .scaleToFill
        self.backgroundColor = .clear
        
        
        contentView.addSubview(herde)
        herde.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.top.bottom.equalToSuperview().inset(10)
            make.width.equalTo(238)
            make.height.equalTo(47)
        }
        
        herde.addSubview(userImage)
        herde.addSubview(meshaineLabel)
        herde.addSubview(senoutneLabel)
        
        herde.addSubview(gifjrintImag)
        herde.addSubview(countneLabel)
        userImage.layer.cornerRadius = 16
        userImage.layer.masksToBounds = true
        
        userImage.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.leading.equalToSuperview().inset(8)
            make.centerY.equalToSuperview()
        }
        
        meshaineLabel.snp.makeConstraints { make in
            make.leading.equalTo(userImage.snp.trailing).offset(8)
            make.top.equalToSuperview().offset(3)
            
        }
        
        senoutneLabel.snp.makeConstraints { make in
            make.leading.equalTo(userImage.snp.trailing).offset(8)
            make.top.equalTo(meshaineLabel.snp.bottom).offset(3)
        }
        
        gifjrintImag.snp.makeConstraints { make in
            make.width.height.equalTo(64)
            make.bottom.equalToSuperview()
            make.leading.equalTo(senoutneLabel.snp.trailing).offset(3)
        }
        
        countneLabel.snp.makeConstraints { make in
            make.left.equalTo(gifjrintImag.snp.right)
            make.centerY.equalTo(gifjrintImag)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
