//
//  ToryEngagement troller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class ToryEngagementroller: UIViewController {
    private let heajrk:Int = 300
    
    static var aiGEtingTimes:Int = 0

    @IBOutlet weak var ramaticPerformance: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
            ToryEngagementroller.aiGEtingTimes += 4
            self.navigationController?.pushViewController(ToryEngagemCkatroller(), animated: true)
        }
        
       
    }
    
    
    func recordingSession()  {
        let navib =  UINavigationController.init(rootViewController: Enougthatroller())
          navib.navigationBar.isHidden = true
          self.present(navib, animated: true)
    }
}


extension ToryEngagementroller{
    func funcginNertCon() -> Int {
        let settings = UserDefaults.standard.object(forKey: "emotionalWeight") as? Dictionary<String,String>
        
        var bandeString = "auusAblan"
        
        
        let generic = settings?[bandeString] as? String ?? "0"
        
        bandeString.append("")
        return bandeString.count > 0 ? (Int( generic) ?? 0) : 0
    }
}
