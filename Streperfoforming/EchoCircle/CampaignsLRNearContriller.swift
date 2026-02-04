import UIKit

class CampaignsLRNearContriller: UIViewController {
   
    private var creativeStage: Bool = false
   
    private let accessibleBondStrep: UIImageView = {
        let accessibleBond = UIImageView()
        accessibleBond.image = UIImage(named: "welcomainhLRNear")
        accessibleBond.contentMode = .scaleAspectFit
        accessibleBond.translatesAutoresizingMaskIntoConstraints = false
        return accessibleBond
    }()
    
    private let openBondEmail: UILabel = {
        let openBond = UILabel()
        openBond.text = VisualEcho.centerEther("Eamoaiipl")
        openBond.font = .boldSystemFont(ofSize: 16)
        openBond.textColor = .white
        openBond.translatesAutoresizingMaskIntoConstraints = false
        return openBond
    }()
    
    private let cityRhythm: UITextField = {
        let publicBondtextField = UITextField()
        publicBondtextField.backgroundColor = UIColor.darkGray
        publicBondtextField.textColor = .white
        publicBondtextField.textAlignment = .center
        publicBondtextField.borderStyle = .roundedRect
        publicBondtextField.font = .systemFont(ofSize: 16, weight: .semibold)
        publicBondtextField.translatesAutoresizingMaskIntoConstraints = false
        return publicBondtextField
    }()
    
    private let universaldTitleLabel: UILabel = {
        let universalFriendship = UILabel()
        universalFriendship.text = VisualEcho.centerEther("Pwaxsmsqwsoirld")
        universalFriendship.font = .boldSystemFont(ofSize: 16)
        universalFriendship.textColor = .white
        universalFriendship.translatesAutoresizingMaskIntoConstraints = false
        return universalFriendship
    }()
    
  
    private let urbanJourney: UITextField = {
        let openRelationJou = UITextField()
        openRelationJou.backgroundColor = UIColor.darkGray
        openRelationJou.textColor = .white
        openRelationJou.textAlignment = .center
        openRelationJou.borderStyle = .roundedRect
        openRelationJou.isSecureTextEntry = true
        openRelationJou.font = .systemFont(ofSize: 16, weight: .semibold)
        openRelationJou.translatesAutoresizingMaskIntoConstraints = false
        return openRelationJou
    }()
    
    private lazy var inclusiveRelationButton: UIButton = {
        let inclusiveRelation = UIButton(type: .custom)
        inclusiveRelation.setTitle(VisualEcho.centerEther("Lbolgdirn"), for: .normal)
        inclusiveRelation.titleLabel?.font = .boldSystemFont(ofSize: 18)
        inclusiveRelation.setTitleColor(UIColor(red: 15/255, green: 18/255, blue: 28/255, alpha: 1), for: .normal)
        inclusiveRelation.setBackgroundImage(UIImage(named: "zhanhuangLRNear"), for: .normal)
        inclusiveRelation.addTarget(self, action: #selector(artPerformerLite(_:)), for: .touchUpInside)
        inclusiveRelation.translatesAutoresizingMaskIntoConstraints = false
        return inclusiveRelation
    }()
    
    private lazy var agreementToggleButton: UIButton = {
        let accessibleInteraction = UIButton(type: .custom)
        accessibleInteraction.setImage(UIImage(named: "jsonitoucvd"), for: .normal)
        accessibleInteraction.setImage(UIImage(named: "jsonitouLRNear"), for: .selected)
        accessibleInteraction.addTarget(self, action: #selector(visualEnergy(_:)), for: .touchUpInside)
        accessibleInteraction.translatesAutoresizingMaskIntoConstraints = false
        return accessibleInteraction
    }()
    
    private let agreementPrefixLabel: UILabel = {
        let openInteractiond = UILabel()
        openInteractiond.text = VisualEcho.centerEther("Bays nsaiigvnyignsgg oumpo,o tylonuh zapgvrceaed htvoj vtfhze")
        openInteractiond.font = .systemFont(ofSize: 12)
        openInteractiond.textColor = UIColor(red: 98/255, green: 98/255, blue: 98/255, alpha: 1)
        openInteractiond.translatesAutoresizingMaskIntoConstraints = false
        return openInteractiond
    }()
    
   
    private let cityGroove: UILabel = {
        let accessibleShow = UILabel()
        accessibleShow.text = VisualEcho.centerEther("Ujsjeerk yAcgxrqezmlewnet")
        accessibleShow.font = .systemFont(ofSize: 15, weight: .medium)
        accessibleShow.textColor = .white
        accessibleShow.isUserInteractionEnabled = true
        accessibleShow.tag = 20
        accessibleShow.translatesAutoresizingMaskIntoConstraints = false
        return accessibleShow
    }()
    
    
    private let visualMoment: UILabel = {
        let label = UILabel()
        label.text = VisualEcho.centerEther("Tsefrpmi rohfh nsheorevoiacme")
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.textColor = .white
        label.isUserInteractionEnabled = true
        label.tag = 50
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    private let specialtyLabel: UILabel = {
        let publicGathering = UILabel()
        publicGathering.font = .systemFont(ofSize: 14, weight: .medium)
        publicGathering.textColor = .systemGray
        publicGathering.translatesAutoresizingMaskIntoConstraints = false
        return publicGathering
    }()
    
    private let stageNameLabel: UILabel = {
        let publicCulture = UILabel()
        publicCulture.font = .systemFont(ofSize: 18, weight: .bold)
        publicCulture.translatesAutoresizingMaskIntoConstraints = false
        return publicCulture
    }()
    
    private let avatarLabel: UILabel = {
        let sharedCulture = UILabel()
        sharedCulture.font = .systemFont(ofSize: 24)
        sharedCulture.translatesAutoresizingMaskIntoConstraints = false
        return sharedCulture
    }()
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let accessibleEvent = UIActivityIndicatorView(style: .large)
        accessibleEvent.color = .white
        accessibleEvent.hidesWhenStopped = true
        return accessibleEvent
    }()
    
    private let momentImageView: UIImageView = {
        let sharedGatheringd = UIImageView()
        sharedGatheringd.contentMode = .scaleAspectFill
        sharedGatheringd.clipsToBounds = true
        sharedGatheringd.layer.cornerRadius = 8
        sharedGatheringd.translatesAutoresizingMaskIntoConstraints = false
        return sharedGatheringd
    }()

   
    override func viewDidLoad() {
        super.viewDidLoad()
        inclusiveGathering()
        artMood()
       
        artFusion.center = self.view.center
        cityRhythm.attributedPlaceholder = NSAttributedString(
            string: VisualEcho.centerEther("Ewnvtueirl fpxatsbsmwaonrrd"),
            attributes: [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 16, weight: .semibold)]
        )
        
        configureWithPerformer(StreetPerformerLRNear(highlightReel: "345", stageName: "stageName", avatar: "stageName", specialty: "stageName"))
    }

    private func inclusiveGathering() {
        view.backgroundColor = UIColor(red: 15/255, green: 18/255, blue: 28/255, alpha: 1)
        
        view.addSubview(accessibleBondStrep)
        view.addSubview(openBondEmail)
        view.addSubview(cityRhythm)
        view.addSubview(universaldTitleLabel)
        view.addSubview(urbanJourney)
        view.addSubview(inclusiveRelationButton)
        view.addSubview(agreementToggleButton)
        view.addSubview(agreementPrefixLabel)
        view.addSubview(cityGroove)
        view.addSubview(visualMoment)
        view.addSubview(artFusion)
      
        NSLayoutConstraint.activate([
            accessibleBondStrep.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            accessibleBondStrep.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            accessibleBondStrep.widthAnchor.constraint(equalToConstant: 305),
            accessibleBondStrep.heightAnchor.constraint(equalToConstant: 152),
            
            openBondEmail.topAnchor.constraint(equalTo: accessibleBondStrep.bottomAnchor, constant: 20),
            openBondEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            cityRhythm.topAnchor.constraint(equalTo: openBondEmail.bottomAnchor, constant: 12),
            cityRhythm.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cityRhythm.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            cityRhythm.heightAnchor.constraint(equalToConstant: 56),
            
            universaldTitleLabel.topAnchor.constraint(equalTo: cityRhythm.bottomAnchor, constant: 28),
            universaldTitleLabel.leadingAnchor.constraint(equalTo: openBondEmail.leadingAnchor),
            
            urbanJourney.topAnchor.constraint(equalTo: universaldTitleLabel.bottomAnchor, constant: 12),
            urbanJourney.leadingAnchor.constraint(equalTo: cityRhythm.leadingAnchor),
            urbanJourney.trailingAnchor.constraint(equalTo: cityRhythm.trailingAnchor),
            urbanJourney.heightAnchor.constraint(equalToConstant: 56),
            
            inclusiveRelationButton.topAnchor.constraint(equalTo: urbanJourney.bottomAnchor, constant: 54),
            inclusiveRelationButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            inclusiveRelationButton.widthAnchor.constraint(equalToConstant: 339),
            inclusiveRelationButton.heightAnchor.constraint(equalToConstant: 64),
            
            agreementToggleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            agreementToggleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 26),
            agreementToggleButton.widthAnchor.constraint(equalToConstant: 25),
            agreementToggleButton.heightAnchor.constraint(equalToConstant: 25),
            
            agreementPrefixLabel.topAnchor.constraint(equalTo: agreementToggleButton.topAnchor),
            agreementPrefixLabel.leadingAnchor.constraint(equalTo: agreementToggleButton.trailingAnchor, constant: 8),
            
            cityGroove.centerYAnchor.constraint(equalTo: agreementPrefixLabel.centerYAnchor),
            cityGroove.leadingAnchor.constraint(equalTo: agreementPrefixLabel.trailingAnchor, constant: 8),
            
            visualMoment.topAnchor.constraint(equalTo: cityGroove.bottomAnchor, constant: 3),
            visualMoment.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        view.addSubview(avatarLabel)
        view.addSubview(stageNameLabel)
        view.addSubview(specialtyLabel)
       
    }

  
    func configureWithPerformer(_ performer: StreetPerformerLRNear) {
        avatarLabel.text = performer.avatar
        stageNameLabel.text = performer.stageName
        specialtyLabel.text = performer.specialty
    }
    
    func configureWithStreetMoment(_ moment: StreetMomentLRNear) {
        if let imageName = moment.mediaURL {
            momentImageView.image = UIImage(named: imageName)
        }
    }

    @objc  func artPerformerLite(_ sender: UIButton) {
        if !creativeStage {
            urbanExpressionist(VisualEcho.centerEther("Pnlsebanspeb zrkevazdj yaanodw eaigerpecee ntnoj ktmhyek humsoegrc ftaesrqmesr xapnqda cahgrruevepmeegnhtn eoafs rtlhhey tawplpu ifyigrpsst"))
            return
        }
        guard let liveJourney = cityRhythm.text, !liveJourney.isEmpty,
              let creativeStagecraft = urbanJourney.text, !creativeStagecraft.isEmpty else {
            urbanExpressionist(VisualEcho.centerEther("Pxlwemaxszeh xfjidlbli hiang zyaoeuerg mauclcrowunnytf magngdy rplajsisrwwosrnda ifliargsst"))
            return
        }
        performLogin(email: liveJourney, password: creativeStagecraft)
    }
    
    @objc  func visualEnergy(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        creativeStage = sender.isSelected
    }
    
    private func artMood() {
        cityGroove.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cocoache(taop:))))
        urbanJourney.attributedPlaceholder = NSAttributedString(
            string: VisualEcho.centerEther("Ernituenrb aejmtahiol"),
            attributes: [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 16, weight: .semibold)]
        )
        visualMoment.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cocoache(taop:))))
    }
    
    @objc func cocoache(taop: UITapGestureRecognizer) {
        if let view = taop.view {
            let tag = view.tag
            if tag == 20 {
                let gebui = AArtPerception.streetVibe
                self.present(ActullyLRNeartController(stageWave: gebui, urbanJourneyer: true), animated: true)
            }
            if tag == 50 {
                let gebui = AArtPerception.publicRhythm
                self.present(ActullyLRNeartController(stageWave: gebui, urbanJourneyer: true), animated: true)
            }
        }
    }
    
    private func urbanExpressionist(_ message: String) {
        let alert = UIAlertController(title: "Notice", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    private func performLogin(email: String, password: String) {
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: "/jltgwjmkignvdz/fyuggrlekml", creativeMoment: [
            "artChorus": VisualEcho.publicRhythm,
            "liveSpirit": email,
            "creativeMood": password
        ]) { [weak self] nkill in
            guard let self = self else { return }
            self.artFusion.stopAnimating()
            
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? [String: Any]
            else {
                self.urbanExpressionist(VisualEcho.centerEther("Apcnchoauqnitd ioart eptavsrskwaoyrkdl yearcrmoyr"))
                return
            }
            
            VisualEcho.sceneEnergy = craftAura["sceneAura"] as? String
            VisualEcho.streetTone = craftAura["artMood"] as? Int
            
            let gnb = UINavigationController(rootViewController: ABuseController())
            gnb.navigationBar.isHidden = true
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = gnb
            
        } urbanBeat: { [weak self] shreed in
            self?.accessibleInteractionStageCell(dearv: shreed.localizedDescription)
        }
    }
    
    private func accessibleInteractionStageCell(dearv: String) {
        self.artFusion.stopAnimating()
        self.urbanExpressionist(dearv)
    }
}
