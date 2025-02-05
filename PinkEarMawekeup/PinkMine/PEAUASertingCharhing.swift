//
//  PEAUASertingCharhing.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit
import SVProgressHUD
import CDAlertView
class PEAUASertingCharhing: UIViewController {
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
    
    
   
   

    @IBAction func backPagePEAchn(_ sender: UIButton) {
        if sender.tag == 23 {
            self.navigationController?.popViewController(animated: true)
            return
        }
        
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        if sender.tag == 24 {
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
            self.navigationController?.pushViewController(PEAELUAChallengnng.init(depthlongPEA:pinkfont,oacholePEA: 1,browsePEA:handsDreamPEA), animated: true)
            return
        }
        
        if sender.tag == 25 {
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
            self.navigationController?.pushViewController(PEAELUAChallengnng.init(depthlongPEA:pinkfont,oacholePEA: 2,browsePEA:handsDreamPEA), animated: true)
            return
        }
        
        if sender.tag == 26 {
            SVProgressHUD.show(withStatus: "Cleaning in progress....")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {

                SVProgressHUD.dismiss()
                let sucirAlert = CDAlertView(title: "Cache cleaning completed!", message: "", type: .success)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
            }
            return
        }
        
        
        if sender.tag == 27 {
            self.navigationController?.pushViewController(PEAUAAbouytusCharhing(), animated: true)
            return
        }
        
        if sender.tag == 28 {
            PEMAMakingupCreater.unniqiePEa.okaySignuinPEA = false
            let guideLsigninVCPREA = UINavigationController.init(rootViewController: PEAPinksignChallengnng.init())
            guideLsigninVCPREA.navigationBar.isHidden = true
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = guideLsigninVCPREA
            return
        }
        
        if sender.tag == 29 {
            let sijfer = "Delete Account?$$$$$After delete, all of your information related to the account will be cleared!".components(separatedBy: "$$$$$")
            let sijfer1 = "Sure$$$$$The account has been deleted$$$$$Cancel".components(separatedBy: "$$$$$")
            let alert = CDAlertView(title: sijfer[0], message: sijfer[1], type: .warning)
            let doneAction = CDAlertViewAction(title: sijfer1[0],textColor: .white,backgroundColor: .black) { cd in
                SVProgressHUD.show()
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                   
                  
                    SVProgressHUD.showSuccess(withStatus: sijfer1[1])
                    
                    
                    let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
                    let randomGreen = CGFloat(arc4random() % 256) / 255.0
                    let randomBlue = CGFloat(arc4random() % 256) / 255.0
                    
                    self.rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
                    if self.rnpincolro.count < 2 {
                        self.rnpincolro.append("#8909")
                    }
                    self.putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
                    let guideLsigninVCPREA = UINavigationController.init(rootViewController: PEAPinksignChallengnng.init())
                    guideLsigninVCPREA.navigationBar.isHidden = true
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = guideLsigninVCPREA
                }))
                return true
            }
            
            alert.add(action: doneAction)
            let nevermindAction = CDAlertViewAction(title: sijfer1[2])
            alert.add(action: nevermindAction)
            alert.show()
            return
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
    
}
