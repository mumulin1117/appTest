//
//  VCoiceFilter ntroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit


class EMOCLEARVCoiceFilterntroller: UIViewController {
    
    @IBOutlet weak var EMOCLEARcomment: UILabel!
    
    @IBOutlet weak var noxommentEMOCLEAR: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EMOCLEARcomment.text = "Czopmumpetnstes".characterBelievability()
        noxommentEMOCLEAR.text = "nloy xccoumxmsebnqtb nypekt".characterBelievability()
        darkMode.placeholder =  "tbybpmem mtgob lcropmnmpevngt".characterBelievability()
        
        darkMode.inputAccessory()
        self.showSuccessHUD(message: nil)
    }
    @IBOutlet weak var darkMode: UITextField!
   
    @IBAction func OIDShu(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    @IBAction func sendComamentFore(_ sender: Any) {
        
        guard let commentff = darkMode.text ,!commentff.isEmpty  else {
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  "Ppljeoasspeg nennztrenrq wcqoxmxmoetnctb xfoihrqsitv!".characterBelievability())
            return
        }
       
        EMOCLEARvoiceAdaptability()
       
    }
    
    
    func EMOCLEARvoiceAdaptability()  {
        self.showSuccessHUD(message: "seejnndw eSjulcpcxepsxscfguflc!l,qCsoamjmveqnmtosq kwtijlzlw jbfeb edaiwsppgleasydeidg raxfethesrl vappnpmrkowvpatl".characterBelievability()){
            self.voiceStyle()
        }
    }
    
    func voiceStyle()  {
        self.darkMode.text = nil
        EMOCLEARdialogueDepth()
    }
    
    
    func EMOCLEARdialogueDepth()  {
        self.darkMode.resignFirstResponder()
    }
}


extension UIViewController {
    func showSuccessHUD(after delay: TimeInterval = 1.2, message: String?, completion: (() -> Void)? = nil) {
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARraiseCurtain()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            completion?()
            if message == nil{
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARlowerCurtain()
                return
            }
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARapplause(EMOCLEARmessage: message ?? "")
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
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  "")
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
