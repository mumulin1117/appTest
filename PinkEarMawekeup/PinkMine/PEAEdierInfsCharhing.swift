//
//  PEAEdierInfsCharhing.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit
import SVProgressHUD
import CDAlertView

class PEAEdierInfsCharhing: UIViewController ,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
    func createrActivyIncationwrePEA(){
        indicatinActiViewPEA = UIActivityIndicatorView(style: .medium)
       
        indicatinActiViewPEA?.hidesWhenStopped = true
        
        indicatinActiViewPEA?.color = .purple
       
          
        indicatinActiViewPEA?.translatesAutoresizingMaskIntoConstraints = false
       
        
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
    }
    
   
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        for stpedr in buidingsPEA {
            if stpedr.count > 3 {
                handslovers.append(CGFloat(stpedr.count))
            }
            let uppenlsFC = stpedr.prefix(1).uppercased()
            if let firstC = uppenlsFC.first {
                pinkCHAPEA.append(firstC)
                counPink += 1
            }
        }

        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            picker.dismiss(animated: true)
        }
    }
    
    func personalizedRandomColoPEAr() {
        
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     
        if let  image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
             
                    
                self.siginerPEaImg.image = image
                
               
            }
        }
       
       
        
    }

    @IBOutlet weak var womenfemalePEA: UIButton!
    
    @IBOutlet weak var manmalePEA: UIButton!
    
    @IBOutlet weak var siginerPEAnamelvbl: UITextField!
    
    @IBOutlet weak var birtheNOwPEA: UITextField!
    
    @IBOutlet weak var siginerPEAbrieflvbl: UITextView!
    @IBOutlet weak var siginerPEaImg: UIImageView!
    
    var recorderGender:String = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        siginerPEaImg.layer.cornerRadius = 40
        siginerPEaImg.layer.masksToBounds = true
        
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        siginerPEAnamelvbl.text = PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernkmer"]
        siginerPEaImg.image = PEMAMakingupCreater.unniqiePEa.signinuserAvatorPEA
        siginerPEAbrieflvbl.text =   PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernDesc"]
        birtheNOwPEA.text = PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBornday"]
      
        let gendert = (PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAuserngender"] )
        if gendert == "0" {
            womenfemalePEA.isSelected = true
        }else{
            manmalePEA.isSelected = true
        }
    }

    @IBAction func gengclaikgPREa(_ sender: UIButton) {
        if sender == self.womenfemalePEA {
            womenfemalePEA.isSelected = true
            manmalePEA.isSelected = false
            recorderGender = "0"
        }else{
            womenfemalePEA.isSelected = false
            manmalePEA.isSelected = true
            recorderGender = "1"
        }
        
    }
    
    @IBAction func backPagePEAchn(_ sender: UIButton) {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        if sender.tag == 99 {
            self.navigationController?.popViewController(animated: true)
        }
        
        if sender.tag == 100 {
            guard let nameUIT = siginerPEAnamelvbl.text,
                  nameUIT.count != 0 else {
                let sucirAlert = CDAlertView(title: "Your name is empty!", message: "", type:.warning)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
                
                return
            }
            
            
            guard let genederinput = siginerPEAbrieflvbl.text,
                  genederinput.count != 0 else {
                let sucirAlert = CDAlertView(title: "Your Brief is empty!", message: "", type:.warning)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
             
                return
            }
            
            guard let birthUIT = birtheNOwPEA.text,
                  birthUIT.count != 0 else {
                let sucirAlert = CDAlertView(title: "Your birthday is empty!", message: "", type:.warning)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
               
                return
            }
           
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBornday"] = birthUIT
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAuserngender"]  = recorderGender
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernkmer"] = nameUIT
            PEMAMakingupCreater.unniqiePEa.signinuserAvatorPEA = siginerPEaImg.image
            
            
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
//                SVProgressHUD.showSuccess(withStatus: "Change information completed!")
                SVProgressHUD.dismiss()
                let sucirAlert = CDAlertView(title: "Change information completed!", message: "", type: .success)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
                self.navigationController?.popViewController(animated: true)
            }))
        }
        
    }
    
    func pageingoPRaFadingVler(showPEA: Bool) {
        guard let pinkVC = pinkFAthAChangeingPEA else {
            return
        }
        
        if showPEA {
            
            addChild(pinkVC)
            view.addSubview(pinkVC.view)
            pinkVC.view.translatesAutoresizingMaskIntoConstraints = false
           
            pinkVC.didMove(toParent: self)
            
            
        } else {
           
            pinkVC.willMove(toParent: nil)
            pinkVC.view.removeFromSuperview()
            pinkVC.removeFromParent()
        }
        
    }
    @IBAction func begserOpenCameraPEA(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let albumPickerPEA = UIImagePickerController()
            albumPickerPEA.delegate = self
            albumPickerPEA.allowsEditing = false
            albumPickerPEA.sourceType = .camera
  
            self.present(albumPickerPEA, animated: true, completion: nil)
            
        }else {
            let sucirAlert = CDAlertView(title: "No camera permission!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
        }
    }
    
   
}
