//
//  EhntAsyouler.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/3.
//

import UIKit

class EhntAsyouler: UIView {
    private let perpetually: UIImageView = {
            
        let perpe = UIImageView()
        perpe.contentMode = .scaleAspectFill
        perpe.clipsToBounds = true
    
        perpe.layer.cornerRadius = 24
        perpe.translatesAutoresizingMaskIntoConstraints = false
        return perpe
    }()
        
    private  let ngaging: UILabel = {
            
        let nga = UILabel()
        nga.textAlignment = .center
        nga.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        nga.textColor = .white
        nga.translatesAutoresizingMaskIntoConstraints = false
        return nga
    }()
    
    private  let vieuwing: UIButton = {
            
        let nga = UIButton.init()
        nga.setImage(UIImage.init(named: "oiauhgggg"), for: .normal)
        nga.translatesAutoresizingMaskIntoConstraints = false
        return nga
    }()
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.13, green: 0.14, blue: 0.15, alpha: 1)
        self.layer.cornerRadius = 14
        self.layer.masksToBounds = true
        genuinelyImpactful()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func genuinelyImpactful() {
           
        // Add subviews
        addSubview(perpetually)
        addSubview(ngaging)
        addSubview(vieuwing)
        // ImageView constraints (62x62, centered)
        NSLayoutConstraint.activate([
            perpetually.widthAnchor.constraint(equalToConstant: 48),
            perpetually.heightAnchor.constraint(equalToConstant: 48),
            perpetually.centerXAnchor.constraint(equalTo: centerXAnchor),
            perpetually.topAnchor.constraint(equalTo: topAnchor, constant: 14)
        ])
        
        
        NSLayoutConstraint.activate([
            ngaging.topAnchor.constraint(equalTo: perpetually.bottomAnchor, constant: 4),
            ngaging.leadingAnchor.constraint(equalTo: leadingAnchor),
            ngaging.trailingAnchor.constraint(equalTo: trailingAnchor),
            ngaging.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        NSLayoutConstraint.activate([
            vieuwing.topAnchor.constraint(equalTo: ngaging.bottomAnchor, constant: 11),
            vieuwing.centerXAnchor.constraint(equalTo: centerXAnchor),
            vieuwing.widthAnchor.constraint(equalToConstant: 56),
            vieuwing.heightAnchor.constraint(equalToConstant: 34)
        ])
        
      
       
    }
        

    
    // MARK: - Configuration
    func authenticallyHuman(imageTIl: String?, title: String) {
        perpetually.emphasizes(from: imageTIl)
        ngaging.text = title
    }


}
