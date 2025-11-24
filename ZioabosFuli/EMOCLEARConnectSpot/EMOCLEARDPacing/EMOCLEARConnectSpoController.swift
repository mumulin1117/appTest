//
//  EMOCLEARConnectSpoController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class EMOCLEARConnectSpoController: UIViewController, ConnectSpotusedViewDelegate {
    func beginartisticCipher(indess: Int) {
        monochromeArt()
    }
    private var reverb: VocalType?
    
    private var chRate:EMOCLEARPersonaProfile?
    private var currentScene = EMOCLEARsceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])

    @IBOutlet weak var roleplayGuide: UICollectionView!
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 - 7)/2, height: 190)
        voiceTimbred.minimumLineSpacing = 7
        voiceTimbred.minimumInteritemSpacing = 7
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.roleplayGuide.isHidden = true
        self.showSuccessHUD(message: nil){
            self.roleplayGuide.isHidden = false
        }
        
        performanceIntensity()
        
        NotificationCenter.default.addObserver(self, selector: #selector(ZuoGeuoGhhh), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
    }
    
    @objc func ZuoGeuoGhhh()  {
        self.roleplayGuide.reloadData()
    }
    
    @IBAction func unwindB(unwindSegue: UIStoryboardSegue) {  }
    private func performanceIntensity()  {
        roleplayGuide.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        roleplayGuide.delegate = self
        reverb = VocalType.crystalline
        
        roleplayGuide.register(UINib(nibName: "EMOCLEARConnectSpotusedView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EMOCLEARConnectSpotusedView")
        
        chRate = EMOCLEARPersonaProfile.init(voicePitch: 12, speechRate: 14, vocalTexture: VocalType.crystalline)
        if reverb == .crystalline {
            chRate?.speechRate = 233
        }
        
        
        roleplayGuide.dataSource = self
        
        roleplayGuide.collectionViewLayout = self.voiceTimbre
        voiceRange()
      
        roleplayGuide.showsVerticalScrollIndicator = false
    }
    
    func voiceRange()  {
        if reverb == .gravelly {
            chRate?.voicePitch = 800
        }
        roleplayGuide.register(UINib.init(nibName: "EMOCLEARConnectSpotCell", bundle: nil), forCellWithReuseIdentifier: "EMOCLEARConnectSpotCell")
    }

    @IBAction func interactiveScene(_ sender: UIButton) {
    }
    

}


extension EMOCLEARConnectSpoController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        EMOCLEARRAaslertvbCell.themeCustomization.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "EMOCLEARConnectSpotCell", for: indexPath) as! EMOCLEARConnectSpotCell
        jjIo.backgroundAmbience.image = UIImage(named: EMOCLEARRAaslertvbCell.themeCustomization[indexPath.row]["RoomAlpDCOver"] ?? "")
        jjIo.audioLatency.image = UIImage(named: EMOCLEARRAaslertvbCell.themeCustomization[indexPath.row]["ayChallenge"] ?? "")
        jjIo.roleplayGuidelines.text = EMOCLEARRAaslertvbCell.themeCustomization[indexPath.row]["RoomAlpTitle"]
        jjIo.characterAlignment.text = EMOCLEARRAaslertvbCell.themeCustomization[indexPath.row]["RoomAlpDades"]
        jjIo.storySeeds.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
        jjIo.voiceMorphing.setTitle("\(Int.random(in: 1...2)) online", for: .normal)
        return jjIo
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 30, height: 256 + 12) 
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard kind == UICollectionView.elementKindSectionHeader else {
                return UICollectionReusableView()
            }
            
            guard let header = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "EMOCLEARConnectSpotusedView",
                for: indexPath) as? EMOCLEARConnectSpotusedView else {
                    fatalError("Failed to load ConnectSpotusedView from nib. Check registration and class inheritance.")
            }
        header.delegater = self
        header.disvoverpage.addTarget(self, action: #selector(monochromeArt), for: .touchUpInside)
        header.creeatertoem.addTarget(self, action: #selector(warmTones), for: .touchUpInside)
        header.buildAio.addTarget(self, action: #selector(vibrantColors), for: .touchUpInside)
        header.cycleViewFall.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(monochromeArt)))
        return header
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let roromedetail = EMOCLEARFallINreoomtiproller.init(nnsteBase: EMOCLEARRAaslertvbCell.themeCustomization[indexPath.row])
        self.navigationController?.pushViewController(roromedetail, animated: true)
        
    }
    
}


extension EMOCLEARConnectSpoController{
  
   @objc func storyboardTools()  {
       self.present(EMOCLEARCumidtoneRangentroller.init(), animated: true)
    }
    
    @objc func monochromeArt()  {
        let  cheicking =  UIStoryboard(name: "Mgaripn".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "DswVcoverontroller") as! EMOCLEARDswVcoverontroller
        
        self.navigationController?.pushViewController(cheicking, animated: true)
    }
    
    
    @objc func warmTones()  {
        let  cheicking =  EMOCLEARNurraamSetiproller.init()
        
        self.navigationController?.pushViewController(cheicking, animated: true)
    }
    
    @objc func vibrantColors()  {
        
        if EMOCLEARToryEngagementroller.aiGEtingTimes >= 1 {
            EMOCLEARToryEngagementroller.aiGEtingTimes -= 1
            let  cheicking =  EMOCLEARToryEngagemCkatroller.init()
            
            self.navigationController?.pushViewController(cheicking, animated: true)
            return
        }
        let  cheicking =  EMOCLEARToryEngagementroller.init()
        
        self.navigationController?.pushViewController(cheicking, animated: true)
    }
}
