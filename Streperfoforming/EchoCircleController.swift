import UIKit


enum InteractionType {
    case inclusiveTalentCall, liveReaction, qnaSession
}

class EchoCircleController: UIViewController {

    enum ecentTime: Int {
        case all = 0
        case music = 1
        case dance = 2
    }

    private let SpotlightHeaderImageView: UIImageView = {
        let portableMic = UIImageView()
        portableMic.image = UIImage(named: "Street EventsLRNear")
        portableMic.contentMode = .scaleAspectFit
        portableMic.translatesAutoresizingMaskIntoConstraints = false
        return portableMic
    }()
    
    private let SpotlightCategoryStackView: UIStackView = {
        let miniProp = UIStackView()
        miniProp.axis = .horizontal
        miniProp.distribution = .fillEqually
        miniProp.translatesAutoresizingMaskIntoConstraints = false
        return miniProp
    }()
    
    private let SpotlightIndicatorView: UIView = {
        let onstageAura = UIView()
        onstageAura.backgroundColor = .systemBackground
        onstageAura.translatesAutoresizingMaskIntoConstraints = false
        return onstageAura
    }()
    
    var visualHarmony: UICollectionView!
    var indidavereshing: UIView!
    
    // MARK: - Private Properties
    
    private let connectionWave: UILabel = {
        let backstagePrep = UILabel()
        backstagePrep.text = "Live Audience Circle"
        backstagePrep.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        backstagePrep.textAlignment = .center
        backstagePrep.textColor = .white
        backstagePrep.translatesAutoresizingMaskIntoConstraints = false
        return backstagePrep
    }()
    
    private let interactionFlow: UIRefreshControl = {
        let recreativeGesturefresh = UIRefreshControl()
        recreativeGesturefresh.tintColor = .systemYellow
        return recreativeGesturefresh
    }()
    
    private var chioker: ecentTime = .all
    private var BoboRoomaesun: (String, [[String: Any]]) = ("titRoom", [])
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let inshortClipdicator = UIActivityIndicatorView(style: .large)
        inshortClipdicator.color = .white
        inshortClipdicator.hidesWhenStopped = true
        return inshortClipdicator
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSpotlightLayout()
        creativeHarmony()
        visualPerformer()
        urbanExpressionFlow()
        
        artFusion.center = self.view.center
        self.view.addSubview(artFusion)
   
        urbanEnergy(path: "/xstmcdoyz/vsrayjvz", dicot: [
            "artMoodFlow": VisualEcho.publicRhythm,
            "performBlend": chioker.rawValue
        ])
    }
    
   
    
    private func setupSpotlightLayout() {
        self.view.backgroundColor = .black
        
       
        let SpotlightLayout = UICollectionViewFlowLayout()
        visualHarmony = UICollectionView(frame: .zero, collectionViewLayout: SpotlightLayout)
        visualHarmony.translatesAutoresizingMaskIntoConstraints = false
       
        indidavereshing = SpotlightIndicatorView
      
        let SpotlightTitles = [VisualEcho.centerEther("Atlfl"), VisualEcho.centerEther("Mcueskiic"), VisualEcho.centerEther("Dnarnfcbe")]
        for (index, title) in SpotlightTitles.enumerated() {
            let SpotlightBtn = UIButton(type: .custom)
            SpotlightBtn.tag = 11 + index
            SpotlightBtn.setTitle(title, for: .normal)
            SpotlightBtn.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
            SpotlightBtn.addTarget(self, action: #selector(visualSoul(_:)), for: .touchUpInside)
            SpotlightCategoryStackView.addArrangedSubview(SpotlightBtn)
        }
        
        view.addSubview(SpotlightHeaderImageView)
        view.addSubview(SpotlightCategoryStackView)
        view.addSubview(SpotlightIndicatorView)
        view.addSubview(visualHarmony)
        
        NSLayoutConstraint.activate([
          
            SpotlightHeaderImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 13),
            SpotlightHeaderImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            SpotlightHeaderImageView.widthAnchor.constraint(equalToConstant: 251),
            SpotlightHeaderImageView.heightAnchor.constraint(equalToConstant: 34),
         
            SpotlightCategoryStackView.topAnchor.constraint(equalTo: SpotlightHeaderImageView.bottomAnchor, constant: 23),
            SpotlightCategoryStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            SpotlightCategoryStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            SpotlightCategoryStackView.heightAnchor.constraint(equalToConstant: 30),
         
            SpotlightIndicatorView.topAnchor.constraint(equalTo: SpotlightCategoryStackView.bottomAnchor, constant: 3),
            SpotlightIndicatorView.heightAnchor.constraint(equalToConstant: 3),
            SpotlightIndicatorView.widthAnchor.constraint(equalToConstant: 100),
          
            SpotlightIndicatorView.centerXAnchor.constraint(equalTo: SpotlightCategoryStackView.subviews[0].centerXAnchor),
            
         
            visualHarmony.topAnchor.constraint(equalTo: SpotlightIndicatorView.bottomAnchor, constant: 20),
            visualHarmony.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            visualHarmony.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            visualHarmony.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
  
    @objc func visualSoul(_ sender: UIButton) {
        if sender.tag == 11 { chioker = .all }
        if sender.tag == 12 { chioker = .music }
        if sender.tag == 13 { chioker = .dance }
        
        UIView.animate(withDuration: 0.3) {
            self.indidavereshing.center.x = sender.center.x + 10
        }
        
        urbanEnergy(path: "/xstmcdoyz/vsrayjvz", dicot: [
            "artMoodFlow": VisualEcho.publicRhythm,
            "performBlend": chioker.rawValue
        ])
    }
    
    @objc func lastoneperson() {
        urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
    
  
    private func creativeHarmony() {
        visualHarmony.backgroundColor = .clear
        visualHarmony.showsHorizontalScrollIndicator = false
        
        let SpotlightFlow = UICollectionViewFlowLayout()
        let SpotlightWidth = (UIScreen.main.bounds.width - 36 - 11) / 2
        SpotlightFlow.itemSize = CGSize(width: SpotlightWidth, height: 240)
        SpotlightFlow.minimumInteritemSpacing = 11
        SpotlightFlow.scrollDirection = .vertical
        visualHarmony.collectionViewLayout = SpotlightFlow
    }
    
    private func visualPerformer() {
        visualHarmony.register(EchoCircleCellLRNear.self, forCellWithReuseIdentifier: "EchoCircleCellLRNear")
    }
    
    private func urbanExpressionFlow() {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }
}

extension EchoCircleController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let SpotlightData = BoboRoomaesun.1[indexPath.row]
        let SpotlightCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EchoCircleCellLRNear", for: indexPath) as! EchoCircleCellLRNear
       
        SpotlightCell.visualToneFlow.urbanToneLRNear(streetEchoLRNear: SpotlightData["artDream"] as? String)
        SpotlightCell.artSpiritWave.text = SpotlightData["creativeToneFlow"] as? String
        SpotlightCell.creativeJourneyFlow.urbanToneLRNear(streetEchoLRNear: SpotlightData["urbanGroove"] as? String)
        SpotlightCell.sceneMoodFlow.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
        return SpotlightCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let SpotlightData = BoboRoomaesun.1[indexPath.row]
        if let SpotlightStage = SpotlightData["streetStageLRNear"] as? Int {
            urbanExpressionFlow(stageWave: AArtPerception.creativeAura, streetSoul: "\(SpotlightStage)")
        }
    }
}

extension EchoCircleController {
    private func urbanEnergy(path: String, dicot: [String: Any]) {
        artFusion.startAnimating()
        
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { [weak self] SpotlightResult in
            guard let self = self else { return }
            self.artFusion.stopAnimating()
            
            guard let SpotlightDict = SpotlightResult as? [String: Any],
                  let SpotlightAura = SpotlightDict[VisualEcho.centerEther("dcattpa")] as? [[String: Any]] else { return }
            
            self.BoboRoomaesun.1 = SpotlightAura
            self.visualHarmony.reloadData()
        } urbanBeat: { [weak self] _ in
            self?.artFusion.stopAnimating()
        }
    }
}
