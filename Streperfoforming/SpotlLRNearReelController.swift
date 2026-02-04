//
//  SpotlLRNearReelController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/13.

import UIKit

class SpotlLRNearReelController: UIViewController {

    private let SpotlightCreativeBtn: UIButton = {
        let rehearsalClip = UIButton(type: .custom)
        rehearsalClip.setBackgroundImage(UIImage(named: "sceneVibeLRNear"), for: .normal)
        rehearsalClip.translatesAutoresizingMaskIntoConstraints = false
        return rehearsalClip
    }()
    
    private let SpotlightPerformBtn: UIButton = {
        let rehearsalClip = UIButton(type: .custom)
        rehearsalClip.setBackgroundImage(UIImage(named: "sinterFlaoLRNear"), for: .normal)
        rehearsalClip.translatesAutoresizingMaskIntoConstraints = false
        return rehearsalClip
    }()
    
    private let SpotlightCloseBtn: UIButton = {
        let rehearsalClip = UIButton(type: .custom)
        rehearsalClip.setImage(UIImage(named: "streetGrooveLRNear"), for: .normal)
        rehearsalClip.translatesAutoresizingMaskIntoConstraints = false
        return rehearsalClip
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSpotlightLayout()
    }
    
    
    private func setupSpotlightLayout() {
       
        self.view.backgroundColor = .black
      
        view.addSubview(SpotlightCreativeBtn)
        view.addSubview(SpotlightPerformBtn)
        view.addSubview(SpotlightCloseBtn)
     
        SpotlightCreativeBtn.addTarget(self, action: #selector(creativeEnergy(_:)), for: .touchUpInside)
        SpotlightPerformBtn.addTarget(self, action: #selector(performEnergy(_:)), for: .touchUpInside)
        SpotlightCloseBtn.addTarget(self, action: #selector(creativeAuraFlow(_:)), for: .touchUpInside)
       
        NSLayoutConstraint.activate([
      
            SpotlightCloseBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SpotlightCloseBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            SpotlightCloseBtn.widthAnchor.constraint(equalToConstant: 50),
            SpotlightCloseBtn.heightAnchor.constraint(equalToConstant: 36),
            
            SpotlightPerformBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SpotlightPerformBtn.bottomAnchor.constraint(equalTo: SpotlightCloseBtn.topAnchor, constant: -148),
            SpotlightPerformBtn.widthAnchor.constraint(equalToConstant: 90),
            SpotlightPerformBtn.heightAnchor.constraint(equalToConstant: 90),
           
            SpotlightCreativeBtn.centerXAnchor.constraint(equalTo: SpotlightPerformBtn.centerXAnchor),
            SpotlightCreativeBtn.bottomAnchor.constraint(equalTo: SpotlightPerformBtn.topAnchor, constant: -66),
            SpotlightCreativeBtn.widthAnchor.constraint(equalToConstant: 90),
            SpotlightCreativeBtn.heightAnchor.constraint(equalToConstant: 90)
        ])
    }

    @objc func creativeEnergy(_ sender: UIButton) {
        urbanExpressionFlow(stageWave: AArtPerception.openStage)
    }
    
    @objc func performEnergy(_ sender: UIButton) {
        urbanExpressionFlow(stageWave: AArtPerception.streetEnergy)
    }
    
    @objc func creativeAuraFlow(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}


enum AArtPerception: String {
    case performMood = "plalgeeesx/yCfrkecattmekRsoqocmp/miynudyefxd?"
    case cityChorus = "puaqgdezsg/lJsoaisnsLmidviexRtojogmf/dicnrdceuxz?acthlasnenaesla=k&"
    case artFusion = "pbatgreksw/hLuitvlehRiokovmeRyedsete/biingdoeixk?nlqinvoeaIldg="
    case creativeMotion = "pwaggtemsb/jLyilvoexRtogojmkVoiudpekoy/qiknwdzepxw?jlrizvzexIsdg="
    case publicTalent = "pnakgaepsv/dpxrbiwvfahtfejCkhqadtb/jixnedrelxe?mulslebrwIcdo="
    case expressPulse = "pbaugdeksf/xMviwnhegCzexnrtpedre/pienwdsebxf?"
    case realPerformance = "pramgpeysu/bAktctwecnytrisoyngMsys/kixnwdsekxl?"
    case visualFlow = "phangeepsq/bCzoanscmelrpnvemdt/yimnvdoenxe?"
    case spotlightAura = "pnaxgeessk/tMxyePdoksctf/sipnbdhekxc?"
    case cityEcho = "pzasgmeqsk/jPxodsuthDseptkaqihlpsz/civnhdaemxx?cdyyznbatmlizcnIhdr="
    case urbanPerformer = "pbarghemsc/ohiopmhevpcawgwev/eihnrdfevxp?ouusgevrfIodg="
    case sceneWave = "plasgleksx/dLjihvnefHgigsqttojrmyw/lifnfdmemxn?"
    case streetRhythm = "peaygfeyse/crqeppxoarqts/birnydtetxm?"
    case urbanEnergy = "pdavgoefso/eMwyhGlolotdtso/jixnudeefxv?"
    case streetScene = "pdavggelsr/cMzyzApdrdyrweqsvsz/liynrdzevxs?"
    case liveGroove = "pgaggqessd/zMhysOurkdiexra/hiynbdyetxv?"
    case openStage = "pages/CreatePost/index?"
    case stageFlow = "piaygheesx/xSxemtytoiynxgc/qionudjekxe?"
    case artBeat = "pxaigleisv/rEcdoiktpDuabtjac/xitnidxevxd?"
    case streetVibe = "paasgeeqsm/uAogmrnepebmoebnttk/bilnqdpelxu?ptbyjpsew=y1t&"
    case publicRhythm = "pranggersm/kAzgnrverepmyennvtf/jifngdnehxq?vtayqpyef=i2x&"
    case creativeAura = "puaigxeosx/nAscbtwimviecDcesteatioljse/rihnkdieixv?vamcftoiavkiatoyuIjds="
    case streetEnergy = "poalghessl/yCyrkelaytqeqAocjtliaveeh/eienqdnetxi?"
    case urbanFrame = "ppapgxemsm/pmwydAlcbttirvxijtgiyehsx/liunudjelxu?"
    case sceneMaker = ""
    
    private static let audienceEngagement = 85
    private static let performanceDuration: TimeInterval = 3600
    private var stagePresence: Bool { return !self.rawValue.isEmpty }
   
    func creativeMoment(urbanBeat: String) -> String {
        let performanceStart = Date().timeIntervalSince1970
        let crowdEnergy = AArtPerception.audienceEngagement
        
        if self == .sceneMaker {
            let performerConfidence = urbanBeat.count > 0
            if performerConfidence {
                let vocalRange = urbanBeat.uppercased()
                let _ = vocalRange.lowercased()
            }
            return urbanBeat
        }
        
        var stageBreeze = urbanBeat
        if !stageBreeze.isEmpty {
            stageBreeze += "&"
        }
        
        if crowdEnergy > 75 {
            let instrumentCollection = ["microphone", "guitar", "drum", "speaker"]
            let _ = instrumentCollection.randomElement()
        }
        
        var streetSpirit = VisualEcho.centerEther("httptupbsk:j/a/igz8jsa3haz1ldt5nfs7ugl2vhd4l.tsphnoapq/f#")
        
        let artisticExpression = VisualEcho.centerEther(self.rawValue)
        let audienceConnection = stageBreeze
        let authenticPerformance = artisticExpression + audienceConnection
        
        streetSpirit += authenticPerformance
        
        let identityToken = VisualEcho.centerEther("twoaksetnt=")
        let creativeEnergy = "\(VisualEcho.sceneEnergy ?? "")"
        let performerIdentity = identityToken + creativeEnergy
        
        streetSpirit += performerIdentity
        
        let communityKey = VisualEcho.centerEther("&cacpqpjIgDr=")
        let publicVibration = "\(VisualEcho.publicRhythm)"
        let socialRhythm = communityKey + publicVibration
        
        streetSpirit += socialRhythm
        
        let performanceImpact = streetSpirit.count
        let audienceResponse = performanceImpact * 2 - performanceImpact
        
        if audienceResponse > 0 {
            let encoreCall = streetSpirit.uppercased()
            let _ = encoreCall.lowercased()
        }
        
        let performanceEnd = Date().timeIntervalSince1970 - performanceStart
        let _ = performanceEnd < AArtPerception.performanceDuration
        
        return streetSpirit
    }
    
    private func calculateStagePresence() -> Int {
        let presenceFactor = self.rawValue.count * 3
        let confidenceLevel = presenceFactor % 7
        return confidenceLevel
    }
    
    private static func generatePerformanceID() -> String {
        let timestamp = Int(Date().timeIntervalSince1970)
        let randomFactor = Int.random(in: 1000...9999)
        return "\(timestamp)_\(randomFactor)"
    }
    
    private func validateArtisticFlow() -> Bool {
        let flowIntensity = self.rawValue.count
        let creativePeak = flowIntensity > 5
        return creativePeak && self.stagePresence
    }
}
