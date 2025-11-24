//
//  EMOCLEARCreatorLabController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class EMOCLEARCreatorLabController: UIViewController {
    var ifChiej:Int = 0
    
    static  var vocalimprov:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
    @IBOutlet weak var scroindiView: UIImageView!
    
  
   
    @IBAction func impressionisticStyle(_ sender: UIButton) {
        expressionisticStroke()
        sender.isSelected = true
        scroindiView .center.x = sender.center.x
        if sender.tag == 40 {
            ifChiej = 0
        }else{
            ifChiej = 1
        }
        
        ZuoGeuoGhhh()
    }
    
    private func expressionisticStroke()  {
        let cStroke = self.view.viewWithTag(40) as? UIButton
        cStroke?.isSelected = false
        let cStroke1 = self.view.viewWithTag(50) as? UIButton
        cStroke1?.isSelected = false
        
    }
    
    private var viroeitLise:Array<Dictionary<String,String>>{
        if ifChiej == 0 {
            return EMOCLEARRAaslertvbCell.themeCustomization.filter({ dio in
                dio["AldioAlpPath"] != nil &&  dio["AldioAlpPath"] != ""
            })
        }
        return EMOCLEARRekaointonCell.featureDiscovery.filter({ dio in
            dio["AldioAlpPath"] != nil &&  dio["AldioAlpPath"] != ""
        })
    }
    
    @IBOutlet weak var roleplayGuide: UICollectionView!
    
    
    
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        let massi = CGSize(width: (UIScreen.main.bounds.width - 30 ), height: 457)
        
        voiceTimbred.itemSize = massi
        
        voiceTimbred.minimumLineSpacing = 12
        
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    private var reverb: VocalType?
    
    private var chRate:EMOCLEARPersonaProfile?
    private var currentScene = EMOCLEARsceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueFlow()
        self.roleplayGuide.isHidden = true
        self.showSuccessHUD(message: nil){
            self.roleplayGuide.isHidden = false
        }
    }
    
    private func dialogueFlow()  {
        reverb = VocalType.crystalline
        NotificationCenter.default.addObserver(self, selector: #selector(ZuoGeuoGhhh), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
        roleplayGuide.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        roleplayGuide.delegate = self
        
        
        chRate = EMOCLEARPersonaProfile.init(voicePitch: 12, speechRate: 14, vocalTexture: VocalType.crystalline)
        roleplayGuide.dataSource = self
       
        roleplayGuide.collectionViewLayout = self.voiceTimbre
        if reverb == .crystalline {
            chRate?.speechRate = 233
        }
        
       
       
        roleplayGuide.register(UINib.init(nibName: "EMOCLEARCreatorLabCell", bundle: nil), forCellWithReuseIdentifier: "EMOCLEARCreatorLabCell")
        roleplayGuide.showsVerticalScrollIndicator = false
        if reverb == .gravelly {
            chRate?.voicePitch = 800
        }
        
       
    }
    
    @objc func ZuoGeuoGhhh()  {
        self.roleplayGuide.reloadData()
    }
    
    //message
    @IBAction func interactiveScene(_ sender: UIButton) {
    }
    
   

}
extension EMOCLEARCreatorLabController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viroeitLise.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "EMOCLEARCreatorLabCell", for: indexPath) as! EMOCLEARCreatorLabCell
        
        let hoafeel = viroeitLise[indexPath.row]
        
        jjIo.antiExploitation.image = UIImage(named: hoafeel["AldioAlpCover"] ?? "")
        jjIo.trustAndSafety.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
        jjIo.userVerification.text =  hoafeel["audioClarity"]
        jjIo.behavioralAnalysis.text =  hoafeel["AldioAlpPost"]
        return jjIo
        
    }

   @objc func storyboardTools()  {
       self.present(EMOCLEARCumidtoneRangentroller.init(), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let hoafeel = viroeitLise[indexPath.row]
        let detaidlo = EMOCLEARCreatelaDetioController.init(nnsteBase: hoafeel)
        detaidlo.hoafeel = hoafeel
        self.navigationController?.pushViewController(detaidlo, animated: true)
    }
    
}
