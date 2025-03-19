//
//  ToyScapeChildUserView.swift
//  Toye
//
//  Created by Toye on 2025/1/17.
//

import UIKit

class ToyScapeChildUserView: UIView {
    
    
    var scapeItems:[ToyScape]!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        // 创建三张图片
        let imageToyView1 = UIImageView()
        imageToyView1.tag = 1000
        imageToyView1.layer.cornerRadius = 13
        imageToyView1.layer.borderColor = UIColor.black.cgColor
        imageToyView1.layer.borderWidth = 1
        imageToyView1.layer.masksToBounds = true
//        imageToyView1.image = UIImage(named: scapeItems[0].toyOwnerID)
        let imageToyView2 = UIImageView()
        imageToyView2.tag = 1001
        imageToyView2.layer.cornerRadius = 13
        imageToyView2.layer.borderColor = UIColor.black.cgColor
        imageToyView2.layer.borderWidth = 1
        imageToyView2.layer.masksToBounds = true
//        imageToyView2.image = UIImage(named: scapeItems[1].toyOwnerID)
        let imageToyView3 = UIImageView()
        imageToyView3.tag = 1002
        imageToyView3.layer.cornerRadius = 13
        imageToyView3.layer.borderColor = UIColor.black.cgColor
        imageToyView3.layer.borderWidth = 1
        imageToyView3.layer.masksToBounds = true
//        imageToyView3.image = UIImage(named: scapeItems[2].toyOwnerID)
        
        // 创建圆形 label
        let otherUserCount = UILabel()
        otherUserCount.text = "+\(Int.random(in: 5...10))"
        otherUserCount.textAlignment = .center
        otherUserCount.textColor = .white
        otherUserCount.font = .systemFont(ofSize: 12, weight: .black)
        otherUserCount.backgroundColor = .black
        otherUserCount.layer.cornerRadius = 13  // 圆形效果
        otherUserCount.clipsToBounds = true
        otherUserCount.translatesAutoresizingMaskIntoConstraints = false
        
        // 添加图片和label到主视图
        addSubview(imageToyView1)
        addSubview(imageToyView2)
        addSubview(imageToyView3)
        addSubview(otherUserCount)
        
        // 开始布局图片和label
        imageToyView1.translatesAutoresizingMaskIntoConstraints = false
        imageToyView2.translatesAutoresizingMaskIntoConstraints = false
        imageToyView3.translatesAutoresizingMaskIntoConstraints = false
        
        // 设置图片的位置和大小
        NSLayoutConstraint.activate([
            imageToyView1.topAnchor.constraint(equalTo: topAnchor),
            imageToyView1.leftAnchor.constraint(equalTo: leftAnchor),
            imageToyView1.widthAnchor.constraint(equalToConstant: 26),
            imageToyView1.heightAnchor.constraint(equalToConstant: 26),
            
            imageToyView2.topAnchor.constraint(equalTo: topAnchor),
            imageToyView2.leftAnchor.constraint(equalTo: imageToyView1.rightAnchor, constant: -10),
            imageToyView2.widthAnchor.constraint(equalToConstant: 26),
            imageToyView2.heightAnchor.constraint(equalToConstant: 26),
            
            imageToyView3.topAnchor.constraint(equalTo: topAnchor),
            imageToyView3.leftAnchor.constraint(equalTo: imageToyView2.rightAnchor, constant: -10),
            imageToyView3.widthAnchor.constraint(equalToConstant: 26),
            imageToyView3.heightAnchor.constraint(equalToConstant: 26),
            
            // 设置圆形label的位置
            otherUserCount.leftAnchor.constraint(equalTo: imageToyView3.rightAnchor,constant: -10),
            otherUserCount.centerYAnchor.constraint(equalTo: imageToyView3.centerYAnchor),
            otherUserCount.widthAnchor.constraint(equalToConstant: 26),
            otherUserCount.heightAnchor.constraint(equalToConstant: 26),
        ])
    }
    
    func reloadScape(scapeItem:[ToyTalkRoom]){
        for i in 0..<3 {
            if let imageToyView = self.viewWithTag(1000+i) as? UIImageView {
                imageToyView.image = UIImage(named: scapeItem[i].talkRoomInitiatorID)
            }
        }
    }
}
