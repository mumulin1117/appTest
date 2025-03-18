//
//  LiSSpTieZIPostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import AVFoundation

/// 发帖
class LiSSpTieZIPostfrbucue:  LissipSecondFrbucue , UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    @IBOutlet weak var ChokenSSIP: UIButton!
    var manSSIPStataus:UIImage?
    @IBOutlet weak var takeColIconLIPSS: UIButton!
    @IBOutlet weak var sedescribitTextView: UITextView!
    
    @IBOutlet weak var sureaddINgLIPSS: UIButton!
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        ssuitreatNet()
        takeColIconLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 12)
        
        enImageSSIPOViol.isHidden = true
        sureaddINgLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 27)
    }
    private func ssuitreatNet() {
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        enImageSSIPOViol.isHidden = true
        sedescribitTextView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        sedescribitTextView.maskLippaRoundCorner(rMakLSSIpadius: 12)
    }
    @IBAction func stakwingToArtsee(_ sender: UIButton) {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
        enImageSSIPOViol.isHidden = true
        if status == .authorized {
            self.openMineTakeSSIPCamera()
            self.pickerSSIPVC?.delegate = self
        } else if status == .notDetermined {
            AVCaptureDevice.requestAccess(for: .video) { granted in
                if granted {
                    DispatchQueue.main.async {
                        self.openMineTakeSSIPCamera()
                        self.pickerSSIPVC?.delegate = self
                    }
                }
            }
        } else {
            // 提示用户打开相机权限
            shiVabyuiogPermisson()
        }
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        enImageSSIPOViol.isHidden = true
        
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
       
        ssuitreatNet(gibernSSIP: image)
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    private func ssuitreatNet(gibernSSIP:UIImage) {
        DispatchQueue.main.async(execute: DispatchWorkItem(block: {
           
            self.manSSIPStataus = gibernSSIP
            self.takeColIconLIPSS.setBackgroundImage(gibernSSIP, for:.normal)
        }))
    }
 
   
    
    
    @IBAction func surestareAiUpload(_ sender: UIButton) {
        enImageSSIPOViol.isHidden = true
        if self.manSSIPStataus == nil {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pdlyetarsgei htyafkjeo uan apqhuontbot cfdiwrrsstd!".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        
        guard let artdesc = sedescribitTextView.text,artdesc.isEmpty == false,artdesc != "Talkspace description" else {
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pjlfezadsnez bdreesmcmrritbo kyaonufrb ipvoksatw xfgixrpsztk!".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        ssuipCreaNet()
        
     
    }
    private func ssuipCreaNet() {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "uxpclbobandgienrgs.x.p.m.m.".oranApolWothCharrterString(), loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.5) {
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
            
            self.navigationController?.popViewController(animated: true)
            
            AppDelegate.showSSIPSuccessTips(acccusString: "Ucphleoealdc msquxckcjekscssfsudlb,p iyxocuqri zpcovsetm xwrieldlf ibuez xdqibsvpflrasyjeide oaafithesrj erueivriverw".oranApolWothCharrterString())
            
        }
    }
    
  

}
