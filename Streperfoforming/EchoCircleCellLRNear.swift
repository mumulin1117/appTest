import UIKit

class EchoCircleCellLRNear: UICollectionViewCell {

    var visualToneFlow: UIImageView!
    var creativeJourneyFlow: UIImageView!
    var artSpiritWave: UILabel!
    var sceneMoodFlow: UIButton!
    var performExpression: UILabel!
    var streetVibration: UIButton!
    

    private let SpotlightBottomGradientOverlay: UIImageView = {
        let universalTalentimageView = UIImageView()
        universalTalentimageView.image = UIImage(named: "creativeBeatLRNear")
        universalTalentimageView.contentMode = .scaleToFill
        universalTalentimageView.translatesAutoresizingMaskIntoConstraints = false
        return universalTalentimageView
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
      
        visualToneFlow = UIImageView()
        visualToneFlow.contentMode = .scaleAspectFill
        visualToneFlow.backgroundColor = UIColor(red: 0.996, green: 0.898, blue: 0.365, alpha: 1.0)
       
        artSpiritWave = UILabel()
        artSpiritWave.font = .systemFont(ofSize: 16, weight: .semibold)
        artSpiritWave.textColor = .white
      
        performExpression = UILabel()
        performExpression.text = "Join"
        performExpression.textAlignment = .center
        performExpression.font = .systemFont(ofSize: 14, weight: .semibold)
        performExpression.textColor = .black
        performExpression.backgroundColor = UIColor(red: 0.976, green: 0.976, blue: 0.114, alpha: 1.0)
        
       
        creativeJourneyFlow = UIImageView()
        creativeJourneyFlow.contentMode = .scaleAspectFill
        creativeJourneyFlow.clipsToBounds = true
        creativeJourneyFlow.layer.cornerRadius = 11
      
        let SpotlightActionBtn = UIButton(type: .custom)
        SpotlightActionBtn.setImage(UIImage(named: "urbanMoodLRNear"), for: .normal)
        sceneMoodFlow = SpotlightActionBtn
        streetVibration = SpotlightActionBtn
        
      
        contentView.addSubview(visualToneFlow)
        contentView.addSubview(SpotlightBottomGradientOverlay)
        contentView.addSubview(artSpiritWave)
        contentView.addSubview(performExpression)
        contentView.addSubview(creativeJourneyFlow)
        contentView.addSubview(SpotlightActionBtn)
        
       
        [visualToneFlow, artSpiritWave, performExpression, creativeJourneyFlow, SpotlightActionBtn].forEach {
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupSpotlightConstraints() {
        
        let SpotlightJoinWidth: CGFloat = 63
        let SpotlightJoinHeight: CGFloat = 28
        let SpotlightIconSize: CGFloat = 22
        let SpotlightActionBtnSize: CGFloat = 26
        let SpotlightGradientHeight: CGFloat = 100
        
        NSLayoutConstraint.activate([
           
            visualToneFlow.topAnchor.constraint(equalTo: contentView.topAnchor),
            visualToneFlow.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            visualToneFlow.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            visualToneFlow.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            
            SpotlightBottomGradientOverlay.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            SpotlightBottomGradientOverlay.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            SpotlightBottomGradientOverlay.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            SpotlightBottomGradientOverlay.heightAnchor.constraint(equalToConstant: SpotlightGradientHeight),
            
          
            artSpiritWave.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            artSpiritWave.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            artSpiritWave.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -41),
          
            performExpression.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            performExpression.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -9),
            performExpression.widthAnchor.constraint(equalToConstant: SpotlightJoinWidth),
            performExpression.heightAnchor.constraint(equalToConstant: SpotlightJoinHeight),
            
            creativeJourneyFlow.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 9),
            creativeJourneyFlow.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -9),
            creativeJourneyFlow.widthAnchor.constraint(equalToConstant: SpotlightIconSize),
            creativeJourneyFlow.heightAnchor.constraint(equalToConstant: SpotlightIconSize),
            
            sceneMoodFlow.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            sceneMoodFlow.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            sceneMoodFlow.widthAnchor.constraint(equalToConstant: SpotlightActionBtnSize),
            sceneMoodFlow.heightAnchor.constraint(equalToConstant: SpotlightActionBtnSize)
        ])
    }
    
    private func applySpotlightStyles() {
       
        performExpression.layer.cornerRadius = 15
        performExpression.layer.masksToBounds = true
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}
