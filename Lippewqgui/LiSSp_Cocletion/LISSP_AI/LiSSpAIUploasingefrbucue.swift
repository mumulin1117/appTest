//
//  LiSSpAIUploasingefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//
import AVFoundation
import UIKit

class LiSSpAIUploasingefrbucue: LissipSecondFrbucue , UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var takeColIconLIPSS: UIButton!

    @IBOutlet weak var sureaddINgLIPSS: UIButton!
    
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    var manSSIPStataus:UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        enImageSSIPOViol.isHidden = true
        takeColIconLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 24)
        sureaddINgLIPSS.maskLippaRoundCorner(rMakLSSIpadius: 26)
        
        
    }
   
    @IBAction func stakwingToArtsee(_ sender: UIButton) {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
        enImageSSIPOViol.isHidden = true
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
        
        enImageSSIPOViol.isHidden = true
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
       
        ssuitreatNet(gibernSSIP: image)
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    private func ssuitreatNet(gibernSSIP:UIImage) {
        
        enImageSSIPOViol.isHidden = true
        DispatchQueue.main.async(execute: DispatchWorkItem(block: {
           
            self.manSSIPStataus = gibernSSIP
            self.takeColIconLIPSS.setBackgroundImage(gibernSSIP, for:.normal)
        }))
    }
    private func ssuipCreaNet() {
        
    }
    
   
    
    @IBAction func surestareAiUpload(_ sender: UIButton) {
        if self.manSSIPStataus == nil {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pxlcexaqskeu zuppklfoaamdc iphhxovtioksz morfu oyoonuxru ucnoiltlaetcbtbikonnu wfgikrxsrtb!".oranApolWothCharrterString(), loaingShowView: self.view)
        }else{
            ssuitreatNet()
        }
    }
    private func ssuitreatNet() {
        enImageSSIPOViol.isHidden = true
        let resulitingAi = LiSSpAIResuiltingsingefrbucue.init()
        resulitingAi.transImagSSIP = self.manSSIPStataus
        self.navigationController?.pushViewController(resulitingAi, animated: true)
    }
}
