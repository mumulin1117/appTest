//
//  Enhancementller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit

class EMOCLEAREnhancementller: UIViewController {

    @IBOutlet weak var voiceMorphing: UIButton!
    
    
    @IBOutlet weak var audioLatency: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        voiceMorphing.layer.cornerRadius = 24
        voiceRecognition()
    }
    
    
    private func voiceRecognition()  {
        
        voiceMorphing.layer.masksToBounds = true
        
        ScenemoodSetters()
       
    }
    
    func ScenemoodSetters()  {
        audioLatency.layer.cornerRadius = 24
        audioLatency.layer.borderWidth = 0
        audioLatency.layer.masksToBounds = true
    }

    
    @IBAction func characterCustomization(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "isoAgteuganheart")
        audioLatency.layer.borderWidth = 0
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func personaCreation(_ sender: UIButton) {
        
        UserDefaults.standard.set(true, forKey: "isoAgteuganheart")
        audioLatency.layer.borderWidth = 0
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
