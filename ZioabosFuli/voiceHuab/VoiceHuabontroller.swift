//
//  VoiceHuabontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class VoiceHuabontroller: UIViewController {

    @IBOutlet weak var voiceActing: UIButton!
    @IBOutlet weak var voiceModulation: UITextField!
    
    @IBOutlet weak var audioEffects: UITextField!
    
    @IBOutlet weak var backgroundAmbience: UIButton!
    
    @IBOutlet weak var voiceCloning: UIButton!
    
    
    @IBOutlet weak var audioReactivity: UIView!
    
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
        
        chRate = PersonaProfile.init(voicePitch: Ayeuyi, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        voiceCloning.isSelected = UserDefaults.standard.bool(forKey: "isoAgteuganheart")
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(castPerforman(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        voiceModulation.inputAccessory()
        audioEffects.inputAccessory()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        audioReactivity.clipsToBounds = true
        seriousness()
        spatialAudio()
        audioReactivity.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
       
    }
    private func spatialAudio() {
        backgroundAmbience.layer.cornerRadius = 15
      
        audioReactivity.layer.cornerRadius = 20
        var sationuyi:Float = 35
       
        
        
        voiceActing.layer.cornerRadius = 15
        chRate = PersonaProfile.init(voicePitch: 35, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
        var SpatialAu:Float = 35 + sationuyi
        
      
        
        var yeType = AmbienceMood.forest
        
        voiceActing.layer.masksToBounds = true
        if yeType == .forest {
            chRate?.speechRate = 233
        }
     
        backgroundAmbience.layer.masksToBounds = true
    }
    
    @IBAction func voiceReactions(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        chRate = PersonaProfile.init(voicePitch: 12, speechRate: 12, vocalTexture: VocalType.crystalline)
        chRate?.speechRate = 233
        UserDefaults.standard.set(sender.isSelected, forKey: "isoAgteuganheart")
        
        chRate?.voicePitch = 800
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func unwindB(unwindSegue: UIStoryboardSegue) {  }

    @IBAction func voicePitchControl(_ sender: UIButton) {
        reverb = VocalType.crystalline
      
        if voiceCloning.isSelected == true {
            var sationuyi:Float = 35
          
            guard let antiExploitation = voiceModulation.text,antiExploitation.isEmpty == false else{
                
                
                
               
                StageHUD.shared.whisper(message:  "Pwlpetaksgep becnhtiedrb xyzokuirt venmladiwlm rfqitresytw!".characterBelievability())
               
                return
            }
            
            
            guard let antiSpam = audioEffects.text,antiSpam.isEmpty == false else{
                var SpatialAu:Float = 55 + sationuyi
                
               
               
                StageHUD.shared.whisper(message:  "Pulmegaysxes leynatqeurt xyrozuurw rpjaislsxwmotrzdw kfjirrpsvti!".characterBelievability())
               
                return
            }
            
            sationuyi += 12
            
            
            var yeType = AmbienceMood.forest
           
            chRate = PersonaProfile.init(voicePitch: 55, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
            
            
            guard let antiHarassment = UserDefaults.standard.object(forKey: antiExploitation) else {
                if yeType == .forest {
                    chRate?.speechRate = 233
                }
                
               
                
                let Aingking = broadcastSurePerformance(antiExploitation:antiExploitation)
                if yeType == .starship {
                    chRate?.voicePitch = 800
                }
            
                foreset(Aingking: Aingking, antiExploitation: antiExploitation)
                self.showSuccessHUD(message: "Crriexavtmeb mAhcaczouufnutd ysguqcpcaersmsefeunlg!".characterBelievability()){
                    FallSeGistiproller.accessibilityOptions(darkMode: true)
                   
                }
               
                return
            }
       
            UserDefaults.standard.set(antiHarassment, forKey: "emotionalWeight")//设置当前的登陆帐号
           
            
            medievalTavern()
            
            
            
            
        }else{
            trustAndSafety()
        }
        
    }
    
    
    
    func foreset(Aingking:Dictionary<String,String>,antiExploitation:String)  {
        UserDefaults.standard.set(Aingking, forKey: "emotionalWeight")
        UserDefaults.standard.set(Aingking, forKey: antiExploitation)
       
    }
    
    private func trustAndSafety()  {
        StageHUD.shared.whisper(message:  "Pllzebaxsaet nrmemasdu yojugra wpzrfiyvxaxcuyu ipkoileidcayf hainkdw fuoszeprw sfzivrasit".characterBelievability())
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
            FallSeGistiproller.accessibilityOptions(darkMode: true)
           
        }
        
       
        
        
        
        
    }
}
