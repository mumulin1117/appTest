//
//  PEAPinkPartyinMakeupChangenning.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit
import SVProgressHUD
import CDAlertView
/// 参加挑战
class PEAPinkPartyinMakeupChangenning: UIViewController {
    
    @IBOutlet weak var addePicOnePEA: UIImageView!
    @IBOutlet weak var addePicTwoPEA: UIImageView!
    @IBOutlet weak var addePicThreePEA: UIImageView!
    
    var allAdedImgCount:Int = 0
    @IBOutlet weak var sizePEAView: UIView!
    
    @IBOutlet weak var addePicButtonPEA: UIButton!
    
    @IBOutlet weak var makeupnametexfPEA: UITextField!
    @IBOutlet weak var copywrietexfPEA: UITextField!
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


    
    @objc func begserOpenAlbumPEA()  {
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        
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
    
    
    @IBAction func backPagePEAchn(_ sender: Any) {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        self.navigationController?.popViewController(animated: true)
    }

    
    @IBAction func torealistChangePEA(_ sender: Any) {
        if addePicOnePEA.image == UIImage(named: "iconPinkholder_pic") {
            let sucirAlert = CDAlertView(title: "Please select at least one makeup image to participate in the challenge!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
            return
        }
        
        
        if makeupnametexfPEA.text == nil || makeupnametexfPEA.text?.count == 0 {
            let sucirAlert = CDAlertView(title: "Please give your participation a resounding name!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
           
            return
        }
        
        
        if copywrietexfPEA.text == nil || copywrietexfPEA.text?.count == 0 {
            let sucirAlert = CDAlertView(title: "Please briefly describe your content!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
           
            return
        }
        
        SVProgressHUD.show()
           DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.5, execute: DispatchWorkItem(block: {
//               SVProgressHUD.showSuccess(withStatus: "Submitted successfully,we will review and process your report as soon as possible!")
              
               let sucirAlert = CDAlertView(title: "Submitted successfully!", message: "we will review and process your report as soon as possible!", type: .success)
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


extension  PEAPinkPartyinMakeupChangenning :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
   
    
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


        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            
            DispatchQueue.main.async {
                
                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

                if counPink >= 10 &&  buidingsPEA.count > 2{
                    picker.dismiss(animated: true)
                }
                
              let ration =  self.allAdedImgCount%3
                    
                if ration == 0  {
                    self.addePicOnePEA.image = image
                    self.allAdedImgCount += 1
                }else if ration == 1{
                    self.addePicTwoPEA.image = image
                    self.allAdedImgCount += 1
                }else if ration == 2{
                    self.addePicThreePEA.image = image
                    self.allAdedImgCount += 1
                }
                
               
            }
        }
       
       
        
    }
}
