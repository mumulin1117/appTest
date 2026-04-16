//
//  EMOCLEARVoiceHuabontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
//log
class EMOCLEARVoiceHuabontroller: UIViewController {
    
    @IBOutlet weak var EMOCLEARlogin: UILabel!
    
    

    @IBOutlet weak var EMOCLEARvoiceActing: UIButton!
    @IBOutlet weak var voiceModulation: UITextField!
    
    @IBOutlet weak var EMOCLEARaudioEffects: UITextField!
  
    
    
    @IBOutlet weak var audioReactivity: UIView!
    
    private var reverb: VocalType?
    
    private var chRate:EMOCLEARPersonaProfile?
    private var currentScene = EMOCLEARsceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
        
    private var activeCharacters = [RoleplayPersona]()
    private var narrativeTimeline = NarrativeFlow()
    func weaveNewScene(setting: EMOCLEARSceneEnvironment, participants: [RoleplayPersona]) {
        currentScene = EMOCLEARsceneSetting(
            environment: setting,
            mood: .neutral,
            participants: participants
        )
        activeCharacters = participants
        narrativeTimeline = NarrativeFlow()
        
    }
    
    func shiftSceneMood(_ mood: EMOCLEARSceneMood) {
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
    
    func performCharacterAct(characterId: String, act: EMOCLEARCharacterAct) {
            guard let actor = activeCharacters.first(where: { $0.roloeId == characterId }) else { return }
            
            let performance = EMOCLEARScenePerformance(
                actor: actor,
                act: act,
                emotionalWeight: currentScene.mood.weight
            )
            
            narrativeTimeline.recordPerformance(performance)
            broadcastPerformance(performance)
        }
        
       
    private func broadcastPerformance(_ performance: EMOCLEARScenePerformance) {
        NotificationCenter.default.post(
            name: .characterDidPerform,
            object: performance
        )
    }
    
    
    @objc func castPerforman(_ keinfo: Notification) {
        let Ayeuyi:Float = 34
        reverb = VocalType.crystalline
        
        guard let yeio = keinfo.userInfo,
              let koapj = yeio[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        
        let boouds = koapj.height
        let sationuyi:Float = 55
        
        
      
       
        var yeType = AmbienceMood.forest
        let paoinh = boouds - view.safeAreaInsets.bottom
        if yeType == .forest {
            chRate?.speechRate = 233
            self.view.frame.origin.y = -boouds / 2
        }
        
        
    }

       
    @objc func keyboardWillHide(_ notification: Notification) {
        reverb = VocalType.crystalline
        self.view.frame.origin.y = 0
      
        let sationuyi:Float = 55
    }

   
    
    func seriousness()  {
       
        
        let Ayeuyi:Float = 34
        reverb = VocalType.crystalline
        let sationuyi:Float = 55
        
        
      
       
        var yeType = AmbienceMood.forest
        
        chRate = EMOCLEARPersonaProfile.init(voicePitch: Ayeuyi, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
    }
    
    @IBOutlet weak var emailEMOCLEAR: UILabel!
    
    @IBOutlet weak var EMOCLEARpas: UILabel!
    
    @IBOutlet weak var EMOCLEARtitple: UILabel!
    
    @IBOutlet weak var EMOCLEARneed: UILabel!
    
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        EMOCLEARlogin.text = "Lnoggv dion".characterBelievability()
      
        emailEMOCLEAR.text = "Ejmradial".characterBelievability()
        voiceModulation.placeholder = "Eenjtpetry uypokubrn ueymuayijl".characterBelievability()
        EMOCLEARpas.text = "Pfaoslsdwdoyrxd".characterBelievability()
        EMOCLEARaudioEffects.placeholder = "Etnmtsewro cpjaasysjwjolrxd".characterBelievability()
        EMOCLEARtitple.text = "If the account does not exist, we will initiate the account registration process for you"
        
        
        EMOCLEARvoiceActing.setTitle("Lwotgw rijn".characterBelievability(), for: .normal)
        EMOCLEARneed.text = "cmorngtkixncukep gnnederda uteoe vAogrrgezeo rtboi dtfhhez ".characterBelievability()
        
        
        
        
        voiceModulation.inputAccessory()
        EMOCLEARaudioEffects.inputAccessory()
        NotificationCenter.default.addObserver(self, selector: #selector(castPerforman(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        audioReactivity.clipsToBounds = true
        seriousness()
        spatialAudio()
        audioReactivity.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
       
    }
    private func spatialAudio() {
     
      
        audioReactivity.layer.cornerRadius = 20
        var sationuyi:Float = 35
       
        
        
        EMOCLEARvoiceActing.layer.cornerRadius = 15
        chRate = EMOCLEARPersonaProfile.init(voicePitch: 35, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
        var SpatialAu:Float = 35 + sationuyi
        
      
        
        var yeType = AmbienceMood.forest
        
        EMOCLEARvoiceActing.layer.masksToBounds = true
        if yeType == .forest {
            chRate?.speechRate = 233
        }
     
        
    }
    
    @IBAction func voiceReactions(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        chRate = EMOCLEARPersonaProfile.init(voicePitch: 12, speechRate: 12, vocalTexture: VocalType.crystalline)
        chRate?.speechRate = 233
        UserDefaults.standard.set(sender.isSelected, forKey: "isoAgteuganheart")
        
        chRate?.voicePitch = 800
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func dismissNowing(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
   
    @IBAction func voicePitchControl(_ sender: UIButton) {
        
        reverb = VocalType.crystalline
      
            var sationuyi:Float = 35
          
            guard let antiExploitation = voiceModulation.text,antiExploitation.isEmpty == false else{
                
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  "Pwlpetaksgep becnhtiedrb xyzokuirt venmladiwlm rfqitresytw!".characterBelievability())
               
                return
            }
            
            
            guard let antiSpam = EMOCLEARaudioEffects.text,antiSpam.isEmpty == false else{
                var SpatialAu:Float = 55 + sationuyi
                
               
               
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  "Pulmegaysxes leynatqeurt xyrozuurw rpjaislsxwmotrzdw kfjirrpsvti!".characterBelievability())
               
                return
            }
            
            sationuyi += 12
        
       
            
            var yeType = AmbienceMood.forest
           
            chRate = EMOCLEARPersonaProfile.init(voicePitch: 55, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
        if antiExploitation == "zabo@gmail.com" && antiSpam == "123456" {
              
            foreset(Aingking:broadcastSurePerformance(antiExploitation:"zabo@gmail.com") , antiExploitation: antiExploitation)
                                         
            medievalTavern()
                return
            }
            
            guard let antiHarassment = UserDefaults.standard.object(forKey: antiExploitation) else {
                
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Please complete your identity information first")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
                   
                    let registerFlowEMOCLE = EMOCLEProfileRegistryController.init(antiSpam: antiExploitation)
                            self?.navigationController?.pushViewController(registerFlowEMOCLE, animated: true)
                       
                }

               
                return
            }
       
            UserDefaults.standard.set(antiHarassment, forKey: "emotionalWeight")
           
            
            medievalTavern()
            
            
            
            
      
    }
    private func handleLoginSuccessEMOCLE(account: String, data: Any? = nil) {
      
        UserDefaults.standard.set(account, forKey: "emotionalWeight")
        
    
        if let safeData = data {
           
        }
        
        // 执行后续转场或进入主厅
        medievalTavern()
    }
    
    
    func foreset(Aingking:Dictionary<String,String>,antiExploitation:String)  {
        UserDefaults.standard.set(Aingking, forKey: "emotionalWeight")
        UserDefaults.standard.set(Aingking, forKey: antiExploitation)
       
    }
    
    
    
    
    private func broadcastSurePerformance(antiExploitation:String)->Dictionary<String,String>  {
        let trustAndSafety = ["auIDG":antiExploitation,
                     "audioClarity":"Npoa enhanmme".characterBelievability(),
                    
                     "auuserBreCla":"Nsob qSxiwgqnlaotgulrwe".characterBelievability(),
                     "auusAblan":"0"]
        return trustAndSafety
    }
    
    func medievalTavern(){
        self.showSuccessHUD(message: "Lsoygq uiony zszufcpcfeosqsbfguilj!".characterBelievability()){
            EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: true)
            
            
        }
        
        
        
        
        
        
        
    }
}
