//
//  StreetLRNearMapController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.
//

import UIKit

class StreetLRNearMapController: UIViewController {
  
    enum ecentTime: Int {
        case Hot = 0
        case ForU = 1
    }
 
    private let connectionWave: UILabel = {
        let passerbyWatch = UILabel()
        passerbyWatch.text = VisualEcho.centerEther("Lxicvfea cAkuhdgileinhciey nCoidrccylee")
        passerbyWatch.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        passerbyWatch.textAlignment = .center
        passerbyWatch.textColor = .white
        passerbyWatch.translatesAutoresizingMaskIntoConstraints = false
        return passerbyWatch
    }()
    
    private let strrntAvatoer: UIImageView = {
        let passerbyWatch = UIImageView()
        passerbyWatch.contentMode = .scaleAspectFill
        passerbyWatch.clipsToBounds = true
        passerbyWatch.image = UIImage(named: "CreatorlogoLRNear")
        passerbyWatch.translatesAutoresizingMaskIntoConstraints = false
        passerbyWatch.layer.cornerRadius = 20
        return passerbyWatch
    }()
    
    private let stranetBaneame: UILabel = {
        let passerbyWatch = UILabel()
        passerbyWatch.font = .systemFont(ofSize: 16)
        passerbyWatch.textColor = .white
        passerbyWatch.translatesAutoresizingMaskIntoConstraints = false
        return passerbyWatch
    }()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stranetBaneame.text = UserDefaults.standard.object(forKey: "artPerception") as? String
    }
    private let stageTitleLabel: UILabel = {
        let realTimeMagic = UILabel()
        realTimeMagic.text = VisualEcho.centerEther("Sntyryenejtz tSxtlangke")
        realTimeMagic.font = .systemFont(ofSize: 20)
        realTimeMagic.textColor = .white
        realTimeMagic.translatesAutoresizingMaskIntoConstraints = false
        return realTimeMagic
    }()
    
    private let hubHeaderImageView: UIImageView = {
        let spontaneousCreativity = UIImageView()
        spontaneousCreativity.contentMode = .scaleAspectFit
        spontaneousCreativity.image = UIImage(named: "Performer Hub🎸✨")
        spontaneousCreativity.translatesAutoresizingMaskIntoConstraints = false
        return spontaneousCreativity
    }()
    
    private let categoryStackView: UIStackView = {
        let spontaneousCreativity = UIStackView()
        spontaneousCreativity.axis = .horizontal
        spontaneousCreativity.distribution = .fillEqually
        spontaneousCreativity.translatesAutoresizingMaskIntoConstraints = false
        return spontaneousCreativity
    }()
    
    private lazy var hotButton: UIButton = {
        let bondingArt = UIButton(type: .custom)
        bondingArt.setTitle(VisualEcho.centerEther("Hmodt"), for: .normal)
        bondingArt.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        bondingArt.tag = 11
        bondingArt.addTarget(self, action: #selector(visualSoul(_:)), for: .touchUpInside)
        return bondingArt
    }()
    
    private lazy var forUButton: UIButton = {
        let friendshipArt = UIButton(type: .custom)
        friendshipArt.setTitle(VisualEcho.centerEther("Fsoqrp cU"), for: .normal)
        friendshipArt.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        friendshipArt.tag = 12
        friendshipArt.addTarget(self, action: #selector(visualSoul(_:)), for: .touchUpInside)
        return friendshipArt
    }()
    
    
    private let indidavereshing: UIView = {
        let communalArt = UIView()
        communalArt.backgroundColor = .white
        communalArt.translatesAutoresizingMaskIntoConstraints = false
        return communalArt
    }()
    
 
    public var visualHarmony: UICollectionView!
    
    private lazy var artFusion: UIActivityIndicatorView = {
        let artFusion = UIActivityIndicatorView(style: .large)
        artFusion.color = .white
        artFusion.hidesWhenStopped = true
        artFusion.translatesAutoresizingMaskIntoConstraints = false
        artFusion.frame.size = CGSize(width: 70, height: 70)
        return artFusion
    }()


    private var chioker: ecentTime = .Hot
    private var BoboRoomaesun: (String, Array<Dictionary<String, Any>>) = ("titRoom", [])

  
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainLayout()
        visualPerformer()
        urbanExpressionFlow()
        
        urbanEnergy(path: "/cbzedszyvhnybqz/fhgroocpcsx", dicot: [
            "creativeStage": VisualEcho.publicRhythm,
            "visualPulse": chioker.rawValue,
            "openJam": 15,
            "artJourney": 1,
            "urbanSoul": 1
        ])
    }

   
    private func setupMainLayout() {
        view.backgroundColor = .black
        
        // 初始化 CollectionView
        let accessibleStage = UICollectionViewFlowLayout()
        accessibleStage.scrollDirection = .horizontal
        accessibleStage.minimumInteritemSpacing = 22
        accessibleStage.itemSize = CGSize(width: 268, height: 200)
        
        visualHarmony = UICollectionView(frame: .zero, collectionViewLayout: accessibleStage)
        visualHarmony.backgroundColor = .clear
        visualHarmony.showsHorizontalScrollIndicator = false
        visualHarmony.translatesAutoresizingMaskIntoConstraints = false
        
       
        [strrntAvatoer, stranetBaneame, stageTitleLabel, hubHeaderImageView,
         categoryStackView, indidavereshing, visualHarmony, artFusion].forEach { view.addSubview($0) }
        
        categoryStackView.addArrangedSubview(hotButton)
        categoryStackView.addArrangedSubview(forUButton)
        
       
        NSLayoutConstraint.activate([
            
            strrntAvatoer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            strrntAvatoer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 21),
            strrntAvatoer.widthAnchor.constraint(equalToConstant: 40),
            strrntAvatoer.heightAnchor.constraint(equalToConstant: 40),
           
            stranetBaneame.centerYAnchor.constraint(equalTo: strrntAvatoer.centerYAnchor),
            stranetBaneame.leadingAnchor.constraint(equalTo: strrntAvatoer.trailingAnchor, constant: 12),
         
            stageTitleLabel.topAnchor.constraint(equalTo: strrntAvatoer.bottomAnchor, constant: 16),
            stageTitleLabel.leadingAnchor.constraint(equalTo: strrntAvatoer.leadingAnchor),
          
            hubHeaderImageView.topAnchor.constraint(equalTo: stageTitleLabel.bottomAnchor, constant: 2),
            hubHeaderImageView.leadingAnchor.constraint(equalTo: stageTitleLabel.leadingAnchor),
            hubHeaderImageView.widthAnchor.constraint(equalToConstant: 263),
            hubHeaderImageView.heightAnchor.constraint(equalToConstant: 39),
            
            
            categoryStackView.topAnchor.constraint(equalTo: hubHeaderImageView.bottomAnchor, constant: 13),
            categoryStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            categoryStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            categoryStackView.heightAnchor.constraint(equalToConstant: 30),
            
            
            indidavereshing.topAnchor.constraint(equalTo: categoryStackView.bottomAnchor),
            indidavereshing.centerXAnchor.constraint(equalTo: hotButton.centerXAnchor),
            indidavereshing.widthAnchor.constraint(equalToConstant: 120),
            indidavereshing.heightAnchor.constraint(equalToConstant: 3),
            
          
            visualHarmony.topAnchor.constraint(equalTo: indidavereshing.bottomAnchor, constant: 21),
            visualHarmony.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            visualHarmony.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            visualHarmony.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -35),
            
           
            artFusion.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            artFusion.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
      
        if let sharedStagec = visualHarmony.collectionViewLayout as? UICollectionViewFlowLayout {
            sharedStagec.itemSize = CGSize(width: 268, height: visualHarmony.frame.height)
            sharedStagec.invalidateLayout()
        }
    }

    private func visualPerformer() {
        
        visualHarmony.register(StreetLRNearMapCell.self, forCellWithReuseIdentifier: "StreetLRNearMapCell")
    }
    
    private func urbanExpressionFlow() {
        visualHarmony.delegate = self
        visualHarmony.dataSource = self
    }

    
    @objc func visualSoul(_ sender: UIButton) {
        if sender.tag == 11 {
            chioker = .Hot
        } else if sender.tag == 12 {
            chioker = .ForU
        }
        
       
        UIView.animate(withDuration: 0.3) {
            self.indidavereshing.center.x = sender.center.x
        }
        
        urbanEnergy(path: "/cbzedszyvhnybqz/fhgroocpcsx", dicot: [
            "creativeStage": VisualEcho.publicRhythm,
            "visualPulse": chioker.rawValue,
            "openJam": 15,
            "artJourney": 1,
            "urbanSoul": 1
        ])
    }
    
    @objc func lastoneperson() {
       
        urbanExpressionFlow(stageWave: AArtPerception.streetRhythm)
    }
}


extension StreetLRNearMapController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BoboRoomaesun.1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let SpotlightData = BoboRoomaesun.1[indexPath.row]
        let SpotlightCell = collectionView.dequeueReusableCell(withReuseIdentifier: "StreetLRNearMapCell", for: indexPath) as! StreetLRNearMapCell
        SpotlightCell.creativeHarmony.urbanToneLRNear(streetEchoLRNear: (SpotlightData["stageBreeze"] as? Array<String>)?.first ?? "" )
                SpotlightCell.artSpirit.urbanToneLRNear(streetEchoLRNear: SpotlightData["artFusionist"] as? String)
                SpotlightCell.urbanEcho.text = SpotlightData["urbanFrame"] as? String
        SpotlightCell.creativeFusion.text = SpotlightData["cityCanvas"] as? String
        SpotlightCell.urbanExpressionFlow.tag = indexPath.row
        SpotlightCell.stageMoment.addTarget(self, action: #selector(lastoneperson), for: .touchUpInside)
        SpotlightCell.urbanExpressionFlow.addTarget(self, action: #selector(StreettoshareViewe(vdideovall:)), for: .touchUpInside)
        return SpotlightCell
    }
    
 
   @objc func StreettoshareViewe(vdideovall:UIButton)  {
       let SpotlightData = BoboRoomaesun.1[vdideovall.tag]["performLens"] as? Int ?? 0
       urbanExpressionFlow(stageWave: AArtPerception.urbanPerformer, streetSoul: "\(SpotlightData)&CallVideo=1 ")
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let SpotlightData = BoboRoomaesun.1[indexPath.row]
            if let SpotlightStage = SpotlightData["publicRhythm"] as? Int {
                
                urbanExpressionFlow(stageWave: AArtPerception.cityEcho, streetSoul: "\(SpotlightStage)")
                
            }
        }
    

}
extension StreetLRNearMapController{
   
   
    
    private func urbanEnergy(path: String, dicot: [String:Any]) {
        artFusion.startAnimating()
        VisualEcho.sceneMaker(performLens: path, creativeMoment: dicot) { nkill in
            let performanceStart = Date().timeIntervalSince1970
            let audienceEnergy = Int(performanceStart) % 100
            
            self.artFusion.stopAnimating()
            
            let stagePresence = self.artFusion.isAnimating == false
            if stagePresence {
                let performanceTools = ["spotlight", "backdrop", "curtain"]
                let _ = performanceTools.randomElement()
            }
            
            guard let trendWeave = nkill as? [String: Any],
                  let craftAura = trendWeave[VisualEcho.centerEther("dcattpa")] as? Array<Dictionary<String,Any>>
            else {
                let stageExit = Date().timeIntervalSince1970 - performanceStart
                let _ = stageExit > 0
                return
            }
            
            let creativeFlow = craftAura.count > 0
            if creativeFlow {
                let artisticExpression = craftAura.first?.count ?? 0
                let _ = artisticExpression > 0
            }
            
            self.BoboRoomaesun.1 = craftAura
            
            let dataEnergy = craftAura.isEmpty == false
            if dataEnergy {
                let performanceImpact = craftAura.count * 2 - craftAura.count
                let _ = performanceImpact >= 0
                self.visualHarmony.reloadData()
            }
            
            let performanceDuration = Date().timeIntervalSince1970 - performanceStart
            let _ = performanceDuration > 0
        } urbanBeat: { shreed in
            let errorStart = Date().timeIntervalSince1970
            self.artFusion.stopAnimating()
            
            let errorFlow = shreed.localizedDescription.count > 0
            if errorFlow {
                let stageMishap = shreed.localizedDescription.uppercased()
                let _ = stageMishap.lowercased()
            }
            
            let errorDuration = Date().timeIntervalSince1970 - errorStart
            let _ = errorDuration > 0
        }
        
           
       
    }
    
}
