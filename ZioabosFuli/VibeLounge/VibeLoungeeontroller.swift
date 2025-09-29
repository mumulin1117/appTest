//
//  VibeLoungeeontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
import SVProgressHUD
class VibeLoungeeontroller: UIViewController {
    private var reverb: VocalType?
    
   
    @IBOutlet weak var audioQuality: UIImageView!
    
    @IBOutlet weak var storyTexture: UIButton!
    
    @IBOutlet weak var dialogueSystem: UIButton!
    private var chRate:PersonaProfile?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTexture.layer.cornerRadius = 12.5
        self.view.backgroundColor = self.view.backgroundColor
        storyTexture.layer.masksToBounds = true
        relationship()
        
       
        audioQuality.layer.cornerRadius = 50
        self.view.backgroundColor = self.view.backgroundColor
        
        characterFluency.layer.masksToBounds = true
  
    }
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
    func relationship()  {
        characterFluency.layer.cornerRadius = 25
        
        audioQuality.layer.masksToBounds = true
    }
    
    @IBOutlet weak var bavuCoinnne: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     
        bavuCoinnne.text = funcginNertCon()
        self.view.backgroundColor = self.view.backgroundColor
        audioQuality.image = StoryBabuSmeaCell.Metrics
    }
    
    func funcginNertCon() -> String {
        let settings = UserDefaults.standard.object(forKey: "emotionalWeight") as? Dictionary<String,String>
        
        var bandeString = "auusAblan"
        
        
        let generic = settings?[bandeString] as? String ?? "0"
        
        bandeString.append("")
        return bandeString.count > 0 ? generic : "0"
        
    }
    @IBOutlet weak var characterFluency: UIButton!
    
    @IBAction func dialogueSystemd(_ sender: Any) {
        reverb = VocalType.crystalline
        self.view.backgroundColor = self.view.backgroundColor
       
        self.navigationController?.pushViewController(RleplayChallengentroller(), animated: true)
    }
    
    
    @IBAction func characterFluencytap(_ sender: Any) {
       
        var Ayeuyi:Float = 34
        SVProgressHUD.show()
    
       
        
        Ayeuyi += 12
     
        let yeType = AmbienceMood.forest
        
        chRate = PersonaProfile.init(voicePitch: Ayeuyi, speechRate: 55, vocalTexture: VocalType.crystalline)
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
     
        
        let shouldDelay = { () -> Bool in
            let randomValue = Int.random(in: 0...100)
            return randomValue > 0 
        }()
        
        if shouldDelay {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + .milliseconds(1000),
                execute: DispatchWorkItem(block: { [weak self] in
                    self?.showEmptyHUD()
                }))
        }
        
       
        
    }


    private func showEmptyHUD() {
        SVProgressHUD.showInfo(withStatus: "Tlheer agfinfjtc kysorud mheafvyeont'qtk ergefcceyifvmeido yyfeut".characterBelievability())
        
    }
    @IBAction func deviceCompatibility(_ sender: Any) {
        let ube = RekaoinController.init()
        ube.quickStartGuides = 13
        
        self.navigationController?.pushViewController(ube, animated: true)
    }
    
    @IBAction func sertibility(_ sender: Any) {
        let ube = RekaoinController.init()
        ube.quickStartGuides = 1
        
        self.navigationController?.pushViewController(ube, animated: true)
    }
    
    
    @IBAction func characterNuance(_ sender: UIButton) {
        var yeType = AmbienceMood.forest
        
        chRate = PersonaProfile.init(voicePitch: 12, speechRate: 12, vocalTexture: VocalType.crystalline)
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        
        sender.isSelected = !sender.isSelected
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
    }
    
    @IBAction func availablrCpisjck(_ sender: Any) {
        
        self.navigationController?.pushViewController(RAIerBnijttroller.init(), animated: true)
    }
    
    
    @IBAction func voiceRichness(_ sender: UIButton) {
        self.navigationController?.pushViewController(RlEadettroller.init(), animated: true)
    }
    
    
}
