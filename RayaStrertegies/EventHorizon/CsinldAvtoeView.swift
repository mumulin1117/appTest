//
//  CsinldAvtoeView.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/2.
//

import UIKit

class CsinldAvtoeView: UIView {
    private let perpetually: UIImageView = {
            
        let perpe = UIImageView()
        perpe.contentMode = .scaleAspectFill
        perpe.clipsToBounds = true
        perpe.layer.borderWidth = 0
        perpe.layer.borderColor =  UIColor(red: 0.8, green: 0.2, blue: 0.85, alpha: 1).cgColor
        perpe.layer.cornerRadius = 31
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
    
       
    var isSelected: Bool = false {
        didSet {
            perpetually.layer.borderWidth = isSelected ? 2 : 0
            perpetually.layer.borderColor = isSelected ? UIColor.red.cgColor : nil
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        genuinelyImpactful()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func genuinelyImpactful() {
           
        // Add subviews
        addSubview(perpetually)
        addSubview(ngaging)
        
        // ImageView constraints (62x62, centered)
        NSLayoutConstraint.activate([
            perpetually.widthAnchor.constraint(equalToConstant: 62),
            perpetually.heightAnchor.constraint(equalToConstant: 62),
            perpetually.centerXAnchor.constraint(equalTo: centerXAnchor),
            perpetually.topAnchor.constraint(equalTo: topAnchor)
        ])
        
        // Label constraints (centered below image)
        NSLayoutConstraint.activate([
            ngaging.topAnchor.constraint(equalTo: perpetually.bottomAnchor, constant: 5),
            ngaging.leadingAnchor.constraint(equalTo: leadingAnchor),
            ngaging.trailingAnchor.constraint(equalTo: trailingAnchor),
            ngaging.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        // Enable taps
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapView))
        addGestureRecognizer(tap)
       
    }
        
        
    // MARK: - Actions
    @objc private func didTapView() {
        isSelected.toggle()
    }
    
    // MARK: - Configuration
    func authenticallyHuman(imageTIl: String?, title: String) {
        perpetually.emphasizes(from: imageTIl)
        ngaging.text = title
    }


}
