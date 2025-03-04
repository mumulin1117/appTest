//
//  LiSSpPostColtomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import AVFoundation
class LiSSpPostColtomrbucue: LissipSecondFrbucue , UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var takeColIconLIPSS: UIButton!
    
    @IBOutlet weak var sedescribitTextView: UITextView!
    
    
    @IBOutlet weak var sureaddINgLIPSS: UIButton!
    
  
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    var manSSIPStataus:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)

        takeColIconLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 24)
        ssuipCreaNet()
    }
    
     private func ssuipCreaNet() {
         
         sedescribitTextView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
         
         sureaddINgLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 26)
        
         sedescribitTextView.maskLippaRoundCorner(rMakLSSIpadius: 26)
     }
     
    @IBAction func stakwingToArtsee(_ sender: UIButton) {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
                
        if status == .authorized {
            self.openMineTakeSSIPCamera()
            pickerSSIPVC?.delegate = self
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
        if self.manSSIPStataus == nil {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pqlheuacsbew quupclfovavdy xprhzottqoxse cosfz pyjokutrh hcpoqlalmercctlimornq nfsiarwsqtr!".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        
        guard let artdesc = sedescribitTextView.text,artdesc.isEmpty == false,artdesc != "Describ it:" else {
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pxloeeaksfeu odvelspclrvikbf cyqoguore mcuoololielcqtjigowng ufoifrzsitr!".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        
        ssuitreatNet()
       
    }
    
    
    private func ssuitreatNet() {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "uxpclbobandgienrgs.x.p.m.m.".oranApolWothCharrterString(), loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.5) {
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
            
            self.navigationController?.popViewController(animated: true)
            
            
            AppDelegate.showSSIPSuccessTips(acccusString: "Ugpdleouatdi ksduicrcveisvsafmulln,b fyjowucre vslhtaqrpibnxgq twqiglzlo abjen qdwixsapalwaoyaexdf jaifytoehrb yrgenvnitetw".oranApolWothCharrterString())
           
        }
    }
}
