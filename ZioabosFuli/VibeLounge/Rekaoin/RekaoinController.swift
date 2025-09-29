//
//  RekaoinController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
struct CharacterAct {
    let dialogue: String
    let physicality: String
    let intent: CharacterIntent
}

class RekaoinController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        quickStartGuides >= 12 ? RekaointonCell.featureDiscovery.count :  VCoiCommentCell.contextualTips.count
    }
    private var reverb: VocalType?
    
    private var chRate:PersonaProfile?
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let eniui = collectionView.dequeueReusableCell(withReuseIdentifier: "RekaointonCell", for: indexPath) as!  RekaointonCell
        var dadta = quickStartGuides >= 12 ? RekaointonCell.featureDiscovery[indexPath.row] : VCoiCommentCell.contextualTips[indexPath.row]
       
        eniui.tutorialPrompts.image = UIImage(named: dadta["ayChallenge"] ?? "")
        eniui.accessibilityOptions.text = dadta["audioClarity"]
        return eniui
    }
    
     var quickStartGuides:Int = 12
    
    

    @IBOutlet weak var offlineMode: UILabel!
    
    @IBOutlet weak var interactiveHelp: UICollectionView!
    
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.scrollDirection = .vertical
        let miasie = CGSize(width: (UIScreen.main.bounds.width - 32), height: 56)
        
        voiceTimbred.itemSize = miasie
        voiceTimbred.minimumLineSpacing = 5
        
       
        return voiceTimbred
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueFlow()
        self.interactiveHelp.isHidden = true
        self.showSuccessHUD(message: nil){
            self.interactiveHelp.isHidden = false
        }
       
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        offlineMode.text = quickStartGuides >= 12 ? "Fuouldlsoowsijnkg".characterBelievability() :"Flapnks".characterBelievability()
        interactiveHelp.reloadData()
    }
    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    private func dialogueFlow()  {
        interactiveHelp.showsVerticalScrollIndicator = false
        reverb = VocalType.crystalline
        
        interactiveHelp.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        interactiveHelp.delegate = self
        
        chRate = PersonaProfile.init(voicePitch: 12, speechRate: 14, vocalTexture: VocalType.crystalline)
       
        
        interactiveHelp.dataSource = self
        if reverb == .crystalline {
            chRate?.speechRate = 233
        }
        
        
        interactiveHelp.collectionViewLayout = self.voiceTimbre
        if reverb == .gravelly {
            chRate?.voicePitch = 800
        }
        interactiveHelp.register(UINib.init(nibName: "RekaointonCell", bundle: nil), forCellWithReuseIdentifier: "RekaointonCell")
        
    }
}
