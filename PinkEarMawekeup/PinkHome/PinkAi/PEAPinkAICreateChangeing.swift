//
//  PEAPinkAICreateChangeing.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit
import SVProgressHUD
import CDAlertView
class PEAPinkAICreateChangeing: UIViewController {
    @IBOutlet weak var addePicThreePEA: UIImageView!
    
    @IBOutlet weak var sizePEAView: UIView!
    
    @IBOutlet weak var addePicButtonPEA: UIButton!
    
    @IBOutlet weak var robertnametexfPEA: UITextField!
    @IBOutlet weak var topuctexfPEA: UITextField!
    @IBOutlet weak var typetexfPEA: UITextField!
    
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
   
    
    
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
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        sizePEAView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(800)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        addePicButtonPEA.addTarget(self, action: #selector(begserOpenAlbumPEA), for: .touchUpInside)
    }
   

    @IBAction func backPagePEAchn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @objc func begserOpenAlbumPEA()  {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let albumPickerPEA = UIImagePickerController()
            albumPickerPEA.delegate = self
            albumPickerPEA.allowsEditing = false
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
                albumPickerPEA.sourceType = .photoLibrary
            }
            
  
            self.present(albumPickerPEA, animated: true, completion: nil)
            
        }else {
            
            let sucirAlert = CDAlertView(title: "No album permission!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
        }
        
    }
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
    
    
  
    
    @IBAction func suresetupRobertealistChangePEA(_ sender: Any) {
        if addePicThreePEA.image == nil {
            let sucirAlert = CDAlertView(title: "Please add an avatar for your chatbot!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
            return
        }
        
        
        if robertnametexfPEA.text == nil || robertnametexfPEA.text?.count == 0 {
            let sucirAlert = CDAlertView(title: "Please enter a name for your chatbot!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
            return
        }
        
        
        if topuctexfPEA.text == nil || topuctexfPEA.text?.count == 0 {
            let sucirAlert = CDAlertView(title: "Please enter the Chatting Topic for your chatbot!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
            return
        }
        
        if typetexfPEA.text == nil || typetexfPEA.text?.count == 0 {
            let sucirAlert = CDAlertView(title: "Please enter the Personality Type for your chatbot!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
            return
        }
        
        var ownedSionerPEA =  Int(PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] ?? "0") ?? 0
        let mustcoinPEA = 300
        
        if ownedSionerPEA <  mustcoinPEA{//金币不足
            
            let alert = CDAlertView(title: "Insufficient Blance", message: "Creating a personal chatbot requires a one-time cost of 300 coins. The first chat is free, and each subsequent chat costs 15 coins", type: .warning)
            let doneAction = CDAlertViewAction(title: "Recharge",textColor: .white,backgroundColor: .black) { cd in
                
                self.navigationController?.pushViewController(PEAUSpendoCharhing.init(), animated: true)
                return true
            }
            
            alert.add(action: doneAction)
            let nevermindAction = CDAlertViewAction(title: "Cancel")
            alert.add(action: nevermindAction)
            alert.show()
            
            return
        }
        PEMAMakingupCreater.unniqiePEa.minePinkRobert = PEMRpbertPink.init(pinkName: robertnametexfPEA.text!, pinkHeader: addePicThreePEA.image!, pinkTopic: topuctexfPEA.text!, pinkpersonType: typetexfPEA.text!)
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
//            SVProgressHUD.showSuccess(withStatus: "Creat succefful!")
            SVProgressHUD.dismiss()
            let sucirAlert = CDAlertView(title: "Creat succefful!", message: "Chat with your partner now!", type: .success)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            ownedSionerPEA = ownedSionerPEA - mustcoinPEA
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] = "\(ownedSionerPEA)"
            
            var pinkfont = UIFont.systemFont(ofSize: 12, weight: .medium)
            if self.navigationController?.navigationBar.isHidden == true {
                pinkfont = UIFont.systemFont(ofSize: 12, weight: .bold)
            }
            var handsDreamPEA = self.title ?? ""
            if handsDreamPEA == ""{
                handsDreamPEA = "inspiration"
            }else{
                handsDreamPEA.append("pinkper")
            }
            let pinkAI = PEAPinkAIChatChangeing.init(depthlongPEA:pinkfont,isAiRovertChat: true,browsePEA:handsDreamPEA)
            
            self.navigationController?.pushViewController(pinkAI, animated: true)
        }))
        
        
        
      
        
    }

}
extension  PEAPinkAICreateChangeing :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
   
    
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
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        
        if let  image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
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

           
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

                if counPink >= 10 &&  buidingsPEA.count > 2{
                    self.addePicThreePEA.image = image
                    
                }
                    
              
               
            }
        }
       
       
        
    }
}
