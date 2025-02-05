//
//  PEAPinkPuishMakeupChangenning.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit
import SVProgressHUD
import CDAlertView
/// 发起挑战
class PEAPinkPuishMakeupChangenning: UIViewController {

    @IBOutlet weak var sizeViewPEA: UIView!
    
    
    @IBOutlet weak var addedCoverViewPEA: UIImageView!
    @IBOutlet weak var addedCoverButtonPEA: UIButton!
    
    
    @IBOutlet weak var sizePEAView: UIView!
    @IBOutlet weak var enterViewForNamePEA: UITextField!
    
    @IBOutlet weak var enterViewForRequerdPEA: UITextField!
    
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
        addedCoverButtonPEA.addTarget(self, action: #selector(begserOpenAlbumPEA), for: .touchUpInside)
    }
    @IBAction func backPagePEAchn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBAction func torealistChangePEA(_ sender: Any) {
        if addedCoverViewPEA.image == nil {
            let sucirAlert = CDAlertView(title: "Please select  one makeup image to initiate a challenge!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
            
            return
        }
        if enterViewForNamePEA.text == nil || enterViewForNamePEA.text?.count == 0 {
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
        
        
        if enterViewForRequerdPEA.text == nil || enterViewForRequerdPEA.text?.count == 0 {
            let sucirAlert = CDAlertView(title: "Please briefly describe your challenge requirements!", message: "", type:.warning)
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
//               SVProgressHUD.showSuccess(withStatus: "Upload successful, your challenge will be displayed after review!")
               let sucirAlert = CDAlertView(title: "Upload successful!", message: "your challenge will be displayed after review!", type: .success)
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
    
    
    
    @IBAction func toPickTypelistChangePEA(_ sender: UIButton) {
        
        let typeONePEA = view.viewWithTag(10) as? UIButton
        let typeTWoPEA = view.viewWithTag(11) as? UIButton
        let typethreePEA = view.viewWithTag(12) as? UIButton
        typeONePEA?.isSelected = false
        typeTWoPEA?.isSelected = false
        typethreePEA?.isSelected = false
        
        sender.isSelected =  true
        
    }

}


extension  PEAPinkPuishMakeupChangenning :UINavigationControllerDelegate, UIImagePickerControllerDelegate{
   
    
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
                    self.addedCoverViewPEA.image = image
                }
                    
                
                
               
            }
        }
       
       
        
    }
}
