//
//  CumultimodalI.swift
//  InFriends
//
//  Created by Messi on 2024/8/27.
//

import UIKit

class CumultimodalI: UIView {

    var selectClosure:(()->())?
    
    lazy var longFormNarrativeLbgl:UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Cpoandfeixrtmo ucdluexalrkihnlgx etjhoef ycfhraitx ghsiksbtmoqrryq cwrictphy v'uSetrovrgys uMoahsmtyesrv's.k rOznncfeb ycllcetahrpevdf,d xiyta zckawnznoortq tbhet frdepsothorrdejdp.".key
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 42.0/255.0, green: 29.0/255.0, blue: 63.0/255.0, alpha: 1.0)
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        self.addSubview(longFormNarrativeLbgl)
        longFormNarrativeLbgl.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalToSuperview().offset(27)
        }
        
        let goalOrientedv = UIButton(type: .custom)
        goalOrientedv.setTitle("Clear", for: .normal)
        goalOrientedv.titleLabel?.font = UIFont.systemFont(ofSize: 15,weight: .medium)
        goalOrientedv.setTitleColor(UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        goalOrientedv.layer.cornerRadius = 20
        goalOrientedv.layer.masksToBounds = true
        goalOrientedv.backgroundColor = UIColor(red: 179.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        goalOrientedv.interfaceWithADesign { [weak self] sender in
            self?.selectClosure?()
            AldialogueTree.phneLibrary.dismissAlert()
        }
        self.addSubview(goalOrientedv)
        goalOrientedv.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(102)
            make.size.equalTo(CGSizeMake(200, 40))
        }
        
        let btn2 = UIButton(type: .custom)
        btn2.setTitle("Crabnwcjefl".key, for: .normal)
        btn2.titleLabel?.font = UIFont.systemFont(ofSize: 15,weight: .medium)
        btn2.setTitleColor(UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btn2.layer.cornerRadius = 20
        btn2.layer.masksToBounds = true
        btn2.layer.borderColor = UIColor(red: 83.0/255.0, green: 65.0/255.0, blue: 113.0/255.0, alpha: 1.0).cgColor
        btn2.layer.borderWidth = 1
        btn2.interfaceWithADesign { sender in
            AldialogueTree.phneLibrary.dismissAlert()
        }
        self.addSubview(btn2)
        btn2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(162)
            make.size.equalTo(CGSizeMake(200, 40))
            make.bottom.equalToSuperview().offset(-30)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
