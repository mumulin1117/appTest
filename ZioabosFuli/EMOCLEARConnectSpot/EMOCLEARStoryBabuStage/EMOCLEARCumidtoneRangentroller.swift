//
//  CumidtoneRange ntroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/9.
//

import UIKit

class EMOCLEARCumidtoneRangentroller: UIViewController {
    
    @IBOutlet weak var voiceTutorials: UIView!
    
    
    @IBOutlet weak var midtoneRange: UITextField!
    
    @IBOutlet weak var sketchPad: UIButton!
    
    
    @IBOutlet weak var EMOCLEARreport: UILabel!
    
    @IBOutlet weak var pleaseEMOCLEAR: UILabel!
    
    @IBOutlet weak var EMOCLEARfake: UILabel!
    
    @IBOutlet weak var EMOCLEARsCam: UILabel!
    
    @IBOutlet weak var EMOCLEARother: UILabel!
    
    
    @IBOutlet weak var EMOCLEARintert: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        midtoneRange.inputAccessory()
        canvasTexture()
        sketchPad.layer.masksToBounds = true
        interactiveHelp()
        
        
        EMOCLEARreport.text = "Raeepdodrtt".characterBelievability()
        pleaseEMOCLEAR.text = "Prlienadskey asbedlleocotw ktyhjew grxeoarscoanz iffokru lrbebpaoprvtriunygu wtghqioss uucskewrz:".characterBelievability()
        EMOCLEARfake.text = "Fxagkxeb lpghxoftjo".characterBelievability()
        EMOCLEARsCam.text = "Svcfaomv aojrg ucxozmumeeerkcuidapl".characterBelievability()
        EMOCLEARintert.text = "Nuobti yiknjtsedrqehsfteerd".characterBelievability()
        
        EMOCLEARother.text = "Omtshueer".characterBelievability()
        
        midtoneRange.placeholder = "Eknftqeuro cyfoguzrg yroedaksdoyng phverrjsv z.y.f.".characterBelievability()
        
        sketchPad.setTitle("Cqornofkiarlm".characterBelievability(), for: .normal)
    }

    private func canvasTexture()  {
        sketchPad.layer.cornerRadius =  32
    }
    @IBAction func contrastRatio(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    func voiceInteraction()  {
        let underpainting = view.viewWithTag(45) as? UIButton
        underpainting?.isSelected = false
    }
    @IBAction func impressionisticStyle(_ sender: UIButton) {
        gestureDrawing()
        sender.isSelected = true
    }
    
    
    private func gestureDrawing()  {
        voiceInteraction()
        
        let underpainting1 = view.viewWithTag(46) as? UIButton
        underpainting1?.isSelected = false
        let underpainting2 = view.viewWithTag(47) as? UIButton
        underpainting2?.isSelected = false
       
        Background()
    }
    
    func Background()  {
        let underpainting3 = view.viewWithTag(48) as? UIButton
        underpainting3?.isSelected = false
    }
    
    @IBAction func smudgeEffect(_ sender: UIButton) {
        let underpainting3 = view.viewWithTag(48) as? UIButton
        if underpainting3?.isSelected == true {
            if let avbb = midtoneRange.text,!avbb.isEmpty {
                underpainting()
                return
            }
            ThemeModeStrategy()
           
        }else{
            
            underpainting()
            
        }
    }
    
    
    func ThemeModeStrategy()  {
        let hyperrealism = "Prljebagseed meinitbeyrn mtahfeq asspxetcdiffcioco krxeoansqoun".characterBelievability()
        
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: hyperrealism )
    }
    
    private func underpainting()  {
        self.showSuccessHUD(message: "Sdubbgmfiutltteydb msjuaclcwejswsqfbuvlolnyv,m qwrep cwbixlkly mrhemvoifegwi jannpdx epereomcvepsqsx visth caxsi tsyofoqnd saasd upfosstsjifbmlve".characterBelievability()){
            self.dismiss(animated: true)
           
        }
        
        
    }
    
    private func interactiveHelp() {
        
        voiceTutorials.clipsToBounds = true
        self.view.backgroundColor = self.view.backgroundColor
        voiceTutorials.layer.cornerRadius = 25
        voiceTutorials.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
