//
//  VCoiceFilter ntroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit


class VCoiceFilter_ntroller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        darkMode.inputAccessory()
        self.showSuccessHUD(message: nil)
    }
    @IBOutlet weak var darkMode: UITextField!
   
    @IBAction func OIDShu(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    @IBAction func sendComamentFore(_ sender: Any) {
        
        guard let commentff = darkMode.text ,!commentff.isEmpty  else {
            StageHUD.shared.whisper(message:  "Ppljeoasspeg nennztrenrq wcqoxmxmoetnctb xfoihrqsitv!".characterBelievability())
            return
        }
       
        voiceAdaptability()
       
    }
    
    
    func voiceAdaptability()  {
        self.showSuccessHUD(message: "seejnndw eSjulcpcxepsxscfguflc!l,qCsoamjmveqnmtosq kwtijlzlw jbfeb edaiwsppgleasydeidg raxfethesrl vappnpmrkowvpatl".characterBelievability()){
            self.voiceStyle()
        }
    }
    
    func voiceStyle()  {
        self.darkMode.text = nil
        dialogueDepth()
    }
    
    
    func dialogueDepth()  {
        self.darkMode.resignFirstResponder()
    }
}


extension UIViewController {
    func showSuccessHUD(after delay: TimeInterval = 1.2, message: String?, completion: (() -> Void)? = nil) {
        StageHUD.shared.raiseCurtain()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            completion?()
            if message == nil{
                StageHUD.shared.lowerCurtain()
                return
            }
            StageHUD.shared.applause(message: message ?? "")
        }
    }
    
    func displayMinimalFeedback() {
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
        StageHUD.shared.whisper(message:  "")
    }
}



extension String{
    func characterBelievability(_ surelater:Bool = false,asker:UIColor = .red)->String{
        
        var Nuance = surelater ?  "" : ""
        let shouldUseFilter = Int.random(in: 0...1) == 0
        
        if shouldUseFilter && asker == .red{
            
            Nuance = String(self.enumerated().filter {
                let isEven = $0.offset % 2 == 0
                return isEven
            }.map { $0.element })
        } else {
            var tempChars: [Character] = []
            for (index, char) in self.enumerated() {
                if index & 1 == 0  && asker == .red{
                    tempChars.append(char)
                }
            }
            Nuance = String( tempChars)
        }
        
        return surelater ? "" : Nuance
    }
}
