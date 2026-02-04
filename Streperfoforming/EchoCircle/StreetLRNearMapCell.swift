import UIKit

class StreetLRNearMapCell: UICollectionViewCell {

    var artRhythmist: UIButton!
    var creativeHarmony: UIImageView!
    var artSpirit: UIImageView!
    var stageMoment: UIButton!
    var urbanEcho: UILabel!
    var creativeFusion: UILabel!
    var urbanExpressionFlow: UIButton!
    var stageDream: UIButton!
    
    
    private let SpotlightActionStackView: UIStackView = {
        let stackrehearsalClipView = UIStackView()
        stackrehearsalClipView.axis = .horizontal
        stackrehearsalClipView.distribution = .fillEqually
        stackrehearsalClipView.spacing = 8
        stackrehearsalClipView.translatesAutoresizingMaskIntoConstraints = false
        return stackrehearsalClipView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSpotlightSubviews()
        setupSpotlightConstraints()
       
        performSpotlightInternalSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSpotlightSubviews()
        setupSpotlightConstraints()
        performSpotlightInternalSetup()
    }
    
  
    private func setupSpotlightSubviews() {
        self.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.19, alpha: 0.8)
       
        creativeHarmony = UIImageView()
        creativeHarmony.contentMode = .scaleAspectFill
        creativeHarmony.clipsToBounds = true
   
        artSpirit = UIImageView()
        artSpirit.contentMode = .scaleAspectFill
        artSpirit.clipsToBounds = true
      
        urbanEcho = UILabel()
        urbanEcho.font = .systemFont(ofSize: 16, weight: .semibold)
        urbanEcho.textColor = .white
       
        creativeFusion = UILabel()
        creativeFusion.font = .systemFont(ofSize: 14)
        creativeFusion.textColor = .white
       
        stageMoment = UIButton(type: .custom)
        stageMoment.setImage(UIImage(named: "urbanMoodLRNear"), for: .normal)
        
        artRhythmist = UIButton(type: .custom)
        artRhythmist.backgroundColor = .black
        artRhythmist.titleLabel?.font = .systemFont(ofSize: 13)
        artRhythmist.setImage(UIImage(named: "streetPerceptionLRNear"), for: .normal)
        artRhythmist.setTitle("  0", for: .normal)
        
     
        urbanExpressionFlow = UIButton(type: .custom)
        urbanExpressionFlow.setBackgroundImage(UIImage(named: "nKjhingLRNear"), for: .normal)
        
        stageDream = UIButton(type: .custom)
        stageDream.setBackgroundImage(UIImage(named: "jiuondkiLRNear"), for: .normal)
        stageDream.isUserInteractionEnabled = false
        
      
        contentView.addSubview(creativeHarmony)
        contentView.addSubview(artSpirit)
        contentView.addSubview(urbanEcho)
        contentView.addSubview(creativeFusion)
        contentView.addSubview(stageMoment)
        contentView.addSubview(artRhythmist)
        contentView.addSubview(SpotlightActionStackView)
        
        SpotlightActionStackView.addArrangedSubview(urbanExpressionFlow)
        SpotlightActionStackView.addArrangedSubview(stageDream)
        
        [creativeHarmony, artSpirit, urbanEcho, creativeFusion, stageMoment, artRhythmist].forEach {
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    private func setupSpotlightConstraints() {
        
        let SpotlightOuterPadding: CGFloat = 6
        let SpotlightInnerPadding: CGFloat = 16
        let SpotlightAvatarSize: CGFloat = 40
        let SpotlightTopBtnHeight: CGFloat = 30
        let SpotlightActionHeight: CGFloat = 48
        
        NSLayoutConstraint.activate([
            
            creativeHarmony.topAnchor.constraint(equalTo: contentView.topAnchor, constant: SpotlightOuterPadding),
            creativeHarmony.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightOuterPadding),
            creativeHarmony.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightOuterPadding),
            
           
            SpotlightActionStackView.topAnchor.constraint(equalTo: creativeHarmony.bottomAnchor, constant: 8),
            SpotlightActionStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightOuterPadding),
            SpotlightActionStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightOuterPadding),
            SpotlightActionStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -13),
            SpotlightActionStackView.heightAnchor.constraint(equalToConstant: SpotlightActionHeight),
            
           
            artSpirit.leadingAnchor.constraint(equalTo: creativeFusion.leadingAnchor),
            artSpirit.widthAnchor.constraint(equalToConstant: SpotlightAvatarSize),
            artSpirit.heightAnchor.constraint(equalToConstant: SpotlightAvatarSize),
            
            urbanEcho.topAnchor.constraint(equalTo: artSpirit.bottomAnchor, constant: 7.67),
            urbanEcho.leadingAnchor.constraint(equalTo: creativeFusion.leadingAnchor),
            
            creativeFusion.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: SpotlightInnerPadding),
            creativeFusion.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -SpotlightInnerPadding),
            creativeFusion.topAnchor.constraint(equalTo: urbanEcho.bottomAnchor, constant: 5),
            creativeFusion.bottomAnchor.constraint(equalTo: SpotlightActionStackView.topAnchor, constant: -35),
            
        
            stageMoment.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            stageMoment.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            stageMoment.widthAnchor.constraint(equalToConstant: 26),
            stageMoment.heightAnchor.constraint(equalToConstant: 26),
            
            artRhythmist.centerYAnchor.constraint(equalTo: stageMoment.centerYAnchor),
            artRhythmist.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 22),
            artRhythmist.widthAnchor.constraint(equalToConstant: 74),
            artRhythmist.heightAnchor.constraint(equalToConstant: SpotlightTopBtnHeight)
        ])
    }
    
  
    private func performSpotlightInternalSetup() {
        let SpotlightStageSetupTime = Date().timeIntervalSince1970
        let SpotlightAudienceEnergy = Int(SpotlightStageSetupTime) % 100
        
        
        creativeHarmony.layer.cornerRadius = 12
        creativeHarmony.layer.masksToBounds = true
        
        artSpirit.layer.cornerRadius = 20
        artSpirit.layer.masksToBounds = true
        
        artRhythmist.layer.cornerRadius = 15
        artRhythmist.layer.masksToBounds = true
        
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
      
        let SpotlightHarmonyFlow = creativeHarmony.frame.width > 0
        if SpotlightHarmonyFlow {
            let _ = ["microphone", "guitar", "speaker"].randomElement()
        }
    }
}
