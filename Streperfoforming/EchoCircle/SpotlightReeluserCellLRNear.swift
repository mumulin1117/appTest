//
//  SpotlightReeluserCellLRNear.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class SpotlightReeluserCellLRNear: UICollectionViewCell {
    
   
    let creativeTone: UIImageView = {
        let sharedSkill = UIImageView()
        sharedSkill.contentMode = .scaleAspectFill
        sharedSkill.clipsToBounds = true
        sharedSkill.layer.cornerRadius = 32
        return sharedSkill
    }()
   
    let cityTone: UILabel = {
        let universalTalent = UILabel()
        universalTalent.textAlignment = .center
        universalTalent.font = .systemFont(ofSize: 13)
        universalTalent.textColor = UIColor.white.withAlphaComponent(0.7)
        return universalTalent
    }()
    
  
    private let badgeIcon: UIImageView = {
        let inclusiveTalent = UIImageView()
        inclusiveTalent.image = UIImage(named: "soguieLRNear")
        inclusiveTalent.contentMode = .scaleAspectFit
        return inclusiveTalent
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        openArtistrysetupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    private func openArtistrysetupUI() {
        contentView.addSubview(creativeTone)
        contentView.addSubview(cityTone)
        contentView.addSubview(badgeIcon)
       
        creativeTone.translatesAutoresizingMaskIntoConstraints = false
        cityTone.translatesAutoresizingMaskIntoConstraints = false
        badgeIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            creativeTone.topAnchor.constraint(equalTo: contentView.topAnchor),
            creativeTone.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            creativeTone.widthAnchor.constraint(equalToConstant: 64),
            creativeTone.heightAnchor.constraint(equalToConstant: 64),
          
            cityTone.topAnchor.constraint(equalTo: creativeTone.bottomAnchor, constant: 5),
            cityTone.centerXAnchor.constraint(equalTo: creativeTone.centerXAnchor),
        
            badgeIcon.bottomAnchor.constraint(equalTo: creativeTone.bottomAnchor),
            badgeIcon.trailingAnchor.constraint(equalTo: creativeTone.trailingAnchor),
            badgeIcon.widthAnchor.constraint(equalToConstant: 24),
            badgeIcon.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
  
}
