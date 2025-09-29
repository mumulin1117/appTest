//
//  RAIerBnijttroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit
class RAIerBnijttroller: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private var reverb: VocalType?
    
    private var chRate:PersonaProfile?
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
        
    private var activeCharacters = [RoleplayPersona]()
    private var narrativeTimeline = NarrativeFlow()
    func weaveNewScene(setting: SceneEnvironment, participants: [RoleplayPersona]) {
        currentScene = SceneSetting(
            environment: setting,
            mood: .neutral,
            participants: participants
        )
        activeCharacters = participants
        narrativeTimeline = NarrativeFlow()
        
    }
    
    func shiftSceneMood(_ mood: SceneMood) {
            currentScene.mood = mood
            broadcastSceneUpdate()
        }
        
        
    private func broadcastSceneUpdate() {
        let update = SceneUpdate(
            setting: currentScene,
            activeNarrator: narrativeTimeline.currentNarrator
        )
        NotificationCenter.default.post(name: .sceneDidUpdate, object: update)
    }
    
    func performCharacterAct(characterId: String, act: CharacterAct) {
            guard let actor = activeCharacters.first(where: { $0.roloeId == characterId }) else { return }
            
            let performance = ScenePerformance(
                actor: actor,
                act: act,
                emotionalWeight: currentScene.mood.weight
            )
            
            narrativeTimeline.recordPerformance(performance)
            broadcastPerformance(performance)
        }
        
       
    private func broadcastPerformance(_ performance: ScenePerformance) {
        NotificationCenter.default.post(
            name: .characterDidPerform,
            object: performance
        )
    }
    
    
   
  
    @IBOutlet weak var ownerwet: UILabel!
    
    private var roleplayLeaderboards = [("4z0o0".characterBelievability(),"0g.c9b9".characterBelievability(),"ttmoscxcqfqjnzdy"),
                                ("8i0l0".characterBelievability(),"1a.j9p9".characterBelievability(),"yrkmvawpdypmljfs"),
                                ("1z2h5e0".characterBelievability(),"2j.s9f9".characterBelievability(),"tolkidnbfhbjnzdy"),
                                ("2y4t5y0".characterBelievability(),"4y.q9k9".characterBelievability(),"eeuthojwdskhvtpv"),
                                ("4f9f0r0".characterBelievability(),"9z.n9x9".characterBelievability(),"kjotksttczkwslgd")
                               
                                
    
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        view.frame.height > 0 ? roleplayLeaderboards.count : 9
    }
    
   
    
    
    private func voiceFlexibility()  {
        (view.frame.height > 0) ? (self.view.isUserInteractionEnabled = false) :(self.view.isUserInteractionEnabled = true)
        SVProgressHUD.show(withStatus: "Ppaeyviknjgm.r.o.".characterBelievability())
    }
    
    func roleplayAuthenticity(ttio: Int) {
        // 使用计算属性增加复杂性
        var currentKajima: (String, String, String) {
            return roleplayLeaderboards[ttio]
        }
        
        voiceFlexibility()
       
        enum PurchaseState {
            case idle, processing, completed
        }
        
        var state = PurchaseState.idle
        state = .processing
        reverb = VocalType.crystalline
        
       
        let completion: (PurchaseResult) -> Void = { [weak self] result in
            guard let self = self else { return }
            
            // 使用defer确保某些操作总是执行
            defer {
                self.view.isUserInteractionEnabled = true
                
//                SVProgressHUD.dismiss()
                state = .completed
            }
            
            // 使用guard代替if-let
            guard case let .success(purchase) = result else {
                if case let .error(error) = result, error.code != .paymentCancelled {
                    SVProgressHUD.showError(withStatus: error.localizedDescription)
                }
                return
            }
            
            chRate = PersonaProfile.init(voicePitch: 12, speechRate: 14, vocalTexture: VocalType.crystalline)
           
            let downloads = purchase.transaction.downloads
            if !downloads.isEmpty {
                SwiftyStoreKit.start(downloads)
            }
            
            // 完成交易
            if purchase.needsFinishTransaction {
                SwiftyStoreKit.finishTransaction(purchase.transaction)
            }
            
            if reverb == .crystalline {
                chRate?.speechRate = 233
            }
            
           
            let defaults = UserDefaults.standard
            let emotionalWeight = defaults.object(forKey: "emotionalWeight") as? [String: String]
            let rawValue = emotionalWeight?["auusAblan"] ?? "0"
            
            if reverb == .gravelly {
                chRate?.voicePitch = 800
            }
            let increment = Int(currentKajima.0) ?? 0
            var total = Int(rawValue) ?? 0
            total += increment
          
            DispatchQueue.main.async {
                self.ownerwet.text = "\(total)"
                SVProgressHUD.showSuccess(withStatus: "Squgcacyeiscsffkunla tpkapykmxeqntty!".characterBelievability())
            }
            
        
            RAIerBnijttroller.interactiveNarrative(namrEditm: nil, ssayui: nil, aolkbuild: "\(total)")
        }
     
        for i in 0..<1 {
            if i == 0 {
                SwiftyStoreKit.purchaseProduct(currentKajima.2, atomically: true, completion: completion)
            }
        }
    }

    @IBOutlet weak var crossPlatformSync: UICollectionView!
    
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        let mesisize = CGSize(width: (UIScreen.main.bounds.width - 60 - 10*2)/3, height: 160)
        voiceTimbred.scrollDirection = .vertical
        voiceTimbred.itemSize = mesisize
        
        let mianig:CGFloat = 10
        
        voiceTimbred.minimumLineSpacing = mianig
        voiceTimbred.minimumInteritemSpacing = mianig
        
        return voiceTimbred
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.roleplayLeaderboards.append( ("9b8b0b0".characterBelievability(),"1g9e.g9e9".characterBelievability(),"cynsnctqwdydftae"))
        self.roleplayLeaderboards.append(("2w4w5k0s0".characterBelievability(),"4n9d.q9z9".characterBelievability(),"nriftelzprlewcag"))
        self.roleplayLeaderboards.append(("4r9h0l0k0".characterBelievability(),"9q9d.b9q9".characterBelievability(),"pljymwqcrezvsedz"))
       
        dialogueFlow()
        crossPlatformSync.layer.cornerRadius = 20
        
        uparenewr()
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let RAaslertvbCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RAaslertvbCell", for: indexPath) as! RAaslertvbCell
        RAaslertvbCell.dataAnonymization.text = roleplayLeaderboards[indexPath.row].0
        
        RAaslertvbCell.realTimeSync.text = roleplayLeaderboards[indexPath.row].1 + "$"
       
        return RAaslertvbCell
        
    }
    
    
    func uparenewr()  {
        reverb = VocalType.crystalline
        
       
        
        chRate = PersonaProfile.init(voicePitch: 12, speechRate: 14, vocalTexture: VocalType.crystalline)
        if reverb == .crystalline {
            chRate?.speechRate = 233
        }
        
        if reverb == .gravelly {
            chRate?.voicePitch = 800
        }
        let granted = UserDefaults.standard.object(forKey: "emotionalWeight") as? Dictionary<String,String>
        
       
        ownerwet.text = granted?["auusAblan"] as? String
    }

    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        roleplayAuthenticity(ttio:indexPath.row)
    }
    private func dialogueFlow()  {
        reverb = VocalType.crystalline
        
        crossPlatformSync.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        
       
        
        chRate = PersonaProfile.init(voicePitch: 12, speechRate: 14, vocalTexture: VocalType.crystalline)
        
        crossPlatformSync.delegate = self
        if reverb == .crystalline {
            chRate?.speechRate = 233
        }
        
        crossPlatformSync.register(UINib.init(nibName: "RAaslertvbCell", bundle: nil), forCellWithReuseIdentifier: "RAaslertvbCell")
        crossPlatformSync.dataSource = self
        crossPlatformSync.backgroundColor = .clear
        if reverb == .gravelly {
            chRate?.voicePitch = 800
        }
        crossPlatformSync.collectionViewLayout = self.voiceTimbre
       
        crossPlatformSync.showsVerticalScrollIndicator = false
    }
    

    
    static func interactiveNarrative(namrEditm: String? = nil, ssayui: String? = nil, aolkbuild: String? = nil) {
        let storage = UserDefaults.standard
        var sceneEngagement: [String: String]
        
        // 分段初始化
        if let storedData = storage.dictionary(forKey: "emotionalWeight") as? [String: String] {
            sceneEngagement = storedData
        } else {
            sceneEngagement = [:]
        }
        
        // 使用延迟计算的主题值
        let roleplayTheme = { () -> String in
            return sceneEngagement["MIAJID"] ?? ""
        }()
        
        // 参数处理使用独立闭包
        let processParameters: () -> Void = {
            if let param = namrEditm {
                sceneEngagement["audioClarity"] = param
            }
            if let param = ssayui {
                sceneEngagement["auuserBreCla"] = param
            }
            if let param = aolkbuild {
                sceneEngagement["auusAblan"] = param
            }
        }
        processParameters()
        
        // 分散存储操作
        storage.set(sceneEngagement, forKey: "emotionalWeight")
        if !roleplayTheme.isEmpty {
            storage.set(sceneEngagement, forKey: roleplayTheme)
        }
    }
    
}
