import UIKit


struct AudienceInteraction {
    let type: InteractionType
    let performerId: String
    let timestamp: Date
}

class SpotlightReelCellLRNear: UICollectionViewCell {

  
    var visualSoul: UILabel!
    var streetEnergy: UIButton!
    var urbanDream: UIButton!
    var stageJourney: UIImageView!
    var urbanExpressionist: UIView!
    var creativeBlend: UILabel!
    
   
    private let SpotlightStageSenseIcon: UIImageView = {
        let collectiveSpace = UIImageView()
        collectiveSpace.image = UIImage(named: "stageSenseLRNear")
        collectiveSpace.contentMode = .scaleAspectFit
        collectiveSpace.translatesAutoresizingMaskIntoConstraints = false
        return collectiveSpace
    }()
    
    private let SpotlightArtToneIcon: UIImageView = {
        let openSkill = UIImageView()
        openSkill.image = UIImage(named: "artToneLRNear")
        openSkill.contentMode = .scaleAspectFit
        openSkill.translatesAutoresizingMaskIntoConstraints = false
        return openSkill
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        applySpotlightStyles()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        applySpotlightStyles()
    }

  
    
    private func setupSpotlightSubviews() {
       
        stageJourney = UIImageView()
        stageJourney.contentMode = .scaleAspectFill
        stageJourney.clipsToBounds = true
        
        urbanExpressionist = UIView()
        urbanExpressionist.backgroundColor = .clear
        
        creativeBlend = UILabel()
        creativeBlend.font = .systemFont(ofSize: 18, weight: .semibold)
        creativeBlend.textColor = .white
        
        streetEnergy = UIButton(type: .custom)
        streetEnergy.backgroundColor = UIColor.white.withAlphaComponent(0.33)
        streetEnergy.titleLabel?.font = .systemFont(ofSize: 13)
        streetEnergy.setImage(UIImage(named: "streetPerceptionLRNear"), for: .normal)
        streetEnergy.setTitle("  0", for: .normal)
        
        visualSoul = UILabel()
        visualSoul.text = VisualEcho.centerEther("LeIeVaE")
        visualSoul.textAlignment = .center
        visualSoul.font = .systemFont(ofSize: 12)
        visualSoul.textColor = .white
        visualSoul.backgroundColor = UIColor(red: 0.96, green: 0.26, blue: 0.21, alpha: 1.0)
        
        urbanDream = UIButton(type: .custom)
        urbanDream.setImage(UIImage(named: "urbanMoodLRNear"), for: .normal)
        
     
        contentView.addSubview(stageJourney)
        contentView.addSubview(SpotlightStageSenseIcon)
        contentView.addSubview(SpotlightArtToneIcon)
        contentView.addSubview(urbanDream)
        contentView.addSubview(streetEnergy)
        contentView.addSubview(visualSoul)
        contentView.addSubview(urbanExpressionist)
        urbanExpressionist.addSubview(creativeBlend)
        
     
        [stageJourney, urbanExpressionist, creativeBlend, streetEnergy, visualSoul, urbanDream].forEach {
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    private func setupSpotlightConstraints() {
        
        let SpotlightMargin15: CGFloat = 15
        let SpotlightMargin11: CGFloat = 11
        let SpotlightIconSize: CGFloat = 30
        let SpotlightLiveWidth: CGFloat = 60
        let SpotlightEnergyWidth: CGFloat = 74
        let SpotlightBottomHeight: CGFloat = 80
        
        NSLayoutConstraint.activate([
            
            stageJourney.topAnchor.constraint(equalTo: contentView.topAnchor),
            stageJourney.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stageJourney.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stageJourney.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
          
            visualSoul.topAnchor.constraint(equalTo: contentView.topAnchor, constant: SpotlightMargin11),
            visualSoul.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightMargin15),
            visualSoul.widthAnchor.constraint(equalToConstant: SpotlightLiveWidth),
            visualSoul.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
          
            streetEnergy.topAnchor.constraint(equalTo: contentView.topAnchor, constant: SpotlightMargin15),
            streetEnergy.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightMargin15),
            streetEnergy.widthAnchor.constraint(equalToConstant: SpotlightEnergyWidth),
            streetEnergy.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
           
            SpotlightStageSenseIcon.topAnchor.constraint(equalTo: streetEnergy.bottomAnchor, constant: 21),
            SpotlightStageSenseIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -23),
            SpotlightStageSenseIcon.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            SpotlightStageSenseIcon.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            SpotlightArtToneIcon.topAnchor.constraint(equalTo: SpotlightStageSenseIcon.bottomAnchor, constant: 21),
            SpotlightArtToneIcon.centerXAnchor.constraint(equalTo: SpotlightStageSenseIcon.centerXAnchor),
            SpotlightArtToneIcon.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            SpotlightArtToneIcon.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            urbanDream.topAnchor.constraint(equalTo: SpotlightArtToneIcon.bottomAnchor, constant: 25),
            urbanDream.centerXAnchor.constraint(equalTo: SpotlightArtToneIcon.centerXAnchor),
            urbanDream.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            urbanDream.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
           
            urbanExpressionist.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            urbanExpressionist.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            urbanExpressionist.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            urbanExpressionist.heightAnchor.constraint(equalToConstant: SpotlightBottomHeight),
            
            creativeBlend.leadingAnchor.constraint(equalTo: urbanExpressionist.leadingAnchor, constant: SpotlightMargin15),
            creativeBlend.trailingAnchor.constraint(equalTo: urbanExpressionist.trailingAnchor, constant: -SpotlightMargin15),
            creativeBlend.bottomAnchor.constraint(equalTo: urbanExpressionist.bottomAnchor, constant: -SpotlightMargin15)
        ])
    }
    
    private func applySpotlightStyles() {
        
        let SpotlightCornerRadius: CGFloat = 12
        
        visualSoul.layer.cornerRadius = SpotlightCornerRadius
        visualSoul.layer.masksToBounds = true
        
        streetEnergy.layer.cornerRadius = SpotlightCornerRadius
        streetEnergy.layer.masksToBounds = true
        
        self.layer.cornerRadius = SpotlightCornerRadius
        self.layer.masksToBounds = true
    }
}
