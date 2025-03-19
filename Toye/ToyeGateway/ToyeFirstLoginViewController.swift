//
//  ToyeFirstLoginViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import RZColorfulSwift
import Hue
import SVProgressHUD

class ToyeFirstLoginViewController: ToyeViewController {

    @IBOutlet weak var toyeBoxButton: UIButton!
    @IBOutlet weak var LoginTyPrompt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        LoginTyPrompt.rz.tapAction { [weak self]  _, actionID, _ in
            guard let self = self else {
                return
            }
            
            if actionID == "ty_user" {
                userAgreementShow(state: 0)
            }else{
                userAgreementShow(state: 1)
            }
        }
        
        LoginTyPrompt.rz.colorfulConfer { colorConfer in
            
            var tyPromptText = "Bayf kcwoinmtgiqnnubignlgs y,r oyyoruv wangsrbeyec stdoq ooautrj ".ty
            if tyPromptText.count > 0 {
                colorConfer.text(tyPromptText)?
                    .textColor(.white)
                    .font(.systemFont(ofSize: 12))
            }
            
            tyPromptText = "Tderrvmjsb eokfo sSgefrovgizcne".ty
            if tyPromptText.count > 0 {
                colorConfer.text(tyPromptText)?.font(.systemFont(ofSize: 14,weight: .black))
                    .textColor(UIColor.init(hex: "#6720EA"))
                    .tapActionByLable("ty_user")
            }
            
            tyPromptText = " aamnpdw ".ty
            if tyPromptText.count > 0 {
                colorConfer.text(tyPromptText)?.font(.systemFont(ofSize: 12)).textColor(.white)
            }
            
            tyPromptText = " dPbrniivfahctyc aPdowlrimcwyy ".ty
            if tyPromptText.count > 0 {
                colorConfer.text(tyPromptText)?.font(.systemFont(ofSize: 14,weight: .black))
                    .textColor(UIColor.init(hex: "#6720EA"))
                    .tapActionByLable("ty_prilicy")
            }
            
            
            
        }
    }
    
    @IBAction func needShowAgreement(_ sender: Any) {
        userAgreementShow(state: 0)
    }
    
    
    @IBAction func firloginTySelect(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func toLoginWithYeEmail(_ sender: Any) {
        
        guard self.toyeBoxButton.isSelected else {
            SVProgressHUD.showInfo(withStatus: "Pflmeuarsdei jrcedaada najnydf wapgyrfeheq dtpom vtbhoeb mUusteirt aAggnrmekemmfernjto laenhdw ePeraidvhaicsye wAigdryeweamheinzt".ty)
            return
        }
        
        let toyeLoginController = ToyeLoginViewController(nibName: "ToyeLoginViewController", bundle: nil)
        self.navigationController?.pushViewController(toyeLoginController, animated: true)
    }
    
    func userAgreementShow(state:Int){
        if let agreementView = Bundle.main.loadNibNamed("ToyeUserAgreementView", owner: nil)?.first as? ToyeUserAgreementView{
            agreementView.agreementShow(state: state)
            agreementView.agreementClosure = { [weak self] tyTag in
                if let weakSelf = self,tyTag == 1 {
                    weakSelf.toyeBoxButton.isSelected = true
                }
            }
        }
    }
}
