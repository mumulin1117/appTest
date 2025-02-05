//
//  PEAPubcomutyingfing.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/28.
//

import UIKit
import SVProgressHUD
import CDAlertView

class PEAPubcomutyingfing: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var sizePEAView: UIView!
    @IBOutlet weak var addePicOnePEA: UIImageView!
    @IBOutlet weak var addePicTwoPEA: UIImageView!
    @IBOutlet weak var addePicThreePEA: UIImageView!
    
    var allAdedImgCount:Int = 0
    
    @IBOutlet weak var addePicButtonPEA: UIButton!
    
 
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
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        sizePEAView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(700)
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

       
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let albumPickerPEA = UIImagePickerController()
            albumPickerPEA.delegate = self
            if (counPink >= 10) {
                counPink += handslovers.last ?? 1
            }else{
                
                counPink += 12
            }

            if counPink >= 10 &&  buidingsPEA.count > 2{
                albumPickerPEA.allowsEditing = false
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
    
    
  
    @IBAction func backPagePEAchn(_ sender: Any) {
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
        self.navigationController?.popViewController(animated: true)
    }

    
    @IBAction func torealistChangePEA(_ sender: Any) {
        if addePicOnePEA.image == UIImage(named: "iconPinkholder_pic") {
            let sucirAlert = CDAlertView(title: "Please select at least one image to publish!", message: "", type:.warning)
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
//               SVProgressHUD.showSuccess(withStatus: "Submitted successfully,Your post will be displayed after review!")
               SVProgressHUD.dismiss()
               let sucirAlert = CDAlertView(title: "Submitted successfully!", message: "Your post will be displayed after review!", type: .success)
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
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        
        if let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
              let ration =  self.allAdedImgCount%3
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

               
                if ration == 0  {
                    self.addePicOnePEA.image = image
                    self.allAdedImgCount += 1
                }else if ration == 1{
                    if counPink >= 10 &&  buidingsPEA.count > 2{
                        self.addePicTwoPEA.image = image
                        self.allAdedImgCount += 1
                    }
                    
                }else if ration == 2{
                    self.addePicThreePEA.image = image
                    self.allAdedImgCount += 1
                }
                
               
            }
        }
       
       
        
    }

}
