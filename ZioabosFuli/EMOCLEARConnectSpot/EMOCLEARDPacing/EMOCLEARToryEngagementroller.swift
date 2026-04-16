//
//  ToryEngagement troller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class EMOCLEARToryEngagementroller: UIViewController {
    private let heajrk:Int = 300
    
    static var aiGEtingTimes:Int = 0

    @IBOutlet weak var EMOCLEARbuildai: UILabel!
    
    @IBOutlet weak var EMOCLEARalert: UITextView!
    
    
    
    @IBOutlet weak var ramaticPerformance: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        EMOCLEARbuildai.text = "CthvavruBtujiklkdp zAfI".characterBelievability()
        EMOCLEARalert.text = """

Got a voice but no character yet? Wondering how to step into a new identity? Let me assist you.
  I'll answer your questions and provide personalized role ideas, dialogue prompts, and immersive backstory twists.
  Let’s begin your journey of roleplay—voice by voice, story by story.

"""
        voiceModulation()
        ramaticPerformance.layer.masksToBounds = true
    }

    func voiceModulation()  {
        ramaticPerformance.layer.cornerRadius = 25
    }

    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func accessibilityLabels(_ sender: UIButton) {
      
        var purposeCxD =  funcginNertCon()
        if purposeCxD < heajrk {
            recordingSession()
        
            return
        }else{
            purposeCxD = purposeCxD - heajrk
            EMOCLEARToryEngagementroller.aiGEtingTimes += 4
            self.navigationController?.pushViewController(EMOCLEARToryEngagemCkatroller(), animated: true)
        }
        
       
    }
    
    
    func recordingSession()  {
        let navib =  UINavigationController.init(rootViewController: EMOCLEAREnougthatroller())
          navib.navigationBar.isHidden = true
          self.present(navib, animated: true)
    }
}


extension EMOCLEARToryEngagementroller{
    func funcginNertCon() -> Int {
        let settings = UserDefaults.standard.object(forKey: "emotionalWeight") as? Dictionary<String,String>
        
        var bandeString = "auusAblan"
        
        
        let generic = settings?[bandeString] as? String ?? "0"
        
        bandeString.append("")
        return bandeString.count > 0 ? (Int( generic) ?? 0) : 0
    }
}
