//
//  PEAPinksignChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit
import SVProgressHUD
import CDAlertView
class PEAPinksignChallengnng: UIViewController {
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
    
    
    static var ifAdgreetermPEA:Bool = false
    static var iftertmSeePEAc:Bool = false
    
    
    @IBOutlet weak var charginEmailPEa: UITextField!
    @IBOutlet weak var charginPaswlPEa: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if PEAPinksignChallengnng.ifAdgreetermPEA == false && PEAPinksignChallengnng.iftertmSeePEAc == false{
            
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
            
            let peaac = UINavigationController.init(rootViewController: PEAELUAChallengnng.init(depthlongPEA:pinkfont,oacholePEA: 0,browsePEA:handsDreamPEA))
            peaac.navigationBar.isHidden = true
            peaac.modalPresentationStyle = .currentContext
            self.present(peaac, animated: true)
           
            PEAPinksignChallengnng.iftertmSeePEAc = true
        }
        
         
        PEAELUAStaus.isSelected = PEAPinksignChallengnng.ifAdgreetermPEA
    }
    
    
    @IBOutlet weak var PEAELUAStaus: UIButton!
    
  


    @IBAction func jumpPEAToElua(_ sender: UIButton) {
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
        
        let pinkvc = UINavigationController.init(rootViewController: PEAELUAChallengnng.init(depthlongPEA:pinkfont,oacholePEA: 0,browsePEA:handsDreamPEA))
        pinkvc.navigationBar.isHidden = true
        pinkvc.modalPresentationStyle = .currentContext
        self.present(pinkvc, animated: true)
       
        PEAPinksignChallengnng.iftertmSeePEAc = true
    }
    
    @IBAction func jumPEAToSignin(_ sender: UIButton) {
        
        if PEAELUAStaus.isSelected == false{
            let sucirAlert = CDAlertView(title: "Read and agree to the terms of use and privacy at first!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
           
            return
        }
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

       

        guard let pinkenaiContent = charginEmailPEa.text,
        let pinkpswcontent = charginPaswlPEa.text,
        pinkenaiContent.count != 0,
        pinkpswcontent.count != 0 else {
            let sucirAlert = CDAlertView(title: "Please enter your email and password!", message: "", type:.warning)
            sucirAlert.autoHideTime = 2
            sucirAlert.hideAnimations = { (center, transform, alpha) in
                transform = CGAffineTransform(scaleX: 3, y: 3)
                alpha = 0
            }
            sucirAlert.hideAnimationDuration = 0.3
            sucirAlert.show()
           
            return
        }
        
        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

    
        if  counPink >= 10 && pinkenaiContent == "elspink@gmail.com" &&  buidingsPEA.count > 2{
            SVProgressHUD.show(withStatus: "log in...")
          
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                
                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

                if counPink >= 10 &&  buidingsPEA.count > 2{
                    PEMAMakingupCreater.unniqiePEa.okaySignuinPEA = true
                    
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernkmer"] = "Elspeth"
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernAvatwer"] = "ElspethHeader"
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernID"] = "89767890"
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernemail"] = "elspink@gmail.com"
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBornday"] = "2022-12-02"
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernDesc"] = "Pink makeup, the key to a whimsical allure."
                    
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAuserngender"] = "0"
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] = "300"
                      
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEApublishTitle"] = "The pink glitter in my makeup is shining bright! #Glitter"
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEApublishPics"] = "PEAmypubc0()PEAmypubc1"
                   
                   
                    PEMAMakingupCreater.unniqiePEa.signinuserAvatorPEA = UIImage(named:"ElspethHeader")
                    
                    PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings = Array(PEMAMakingupCreater.unniqiePEa.PEAAllNormalUser.prefix(1))
                    PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollwers = Array(PEMAMakingupCreater.unniqiePEa.PEAAllNormalUser.suffix(2))
                }
              
               
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUTabbarChallengnng.init()
                
                SVProgressHUD.dismiss()
                let sucirAlert = CDAlertView(title: "Welcome,back!", message: "log in successful!", type: .success)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
                

            }
            

        }else{
            let firePEA = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$$$$$$".components(separatedBy: "$$$$$$")
            if (counPink >= 10) {
                counPink += handslovers.last ?? 1
            }else{
                
                counPink += 12
            }
        
            let selecPEMA = NSPredicate(format:"SELF MATCHES %@", firePEA[0]).evaluate(with: pinkenaiContent)
            
            
            if selecPEMA == false {
               
                let sucirAlert = CDAlertView(title: "The email format is incorrect!!", message: "", type:.warning)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
            }else{
               
                SVProgressHUD.show(withStatus: "Register and log in...")
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
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

                   
                    PEMAMakingupCreater.unniqiePEa.okaySignuinPEA = true
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] = "0"
                   
                    if counPink >= 10 &&  buidingsPEA.count > 2{
                        PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernemail"] = pinkenaiContent
                        PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBornday"] = "NULL"
                 
                       
                        PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernDesc"] = "NULL"
                    }
                    
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernID"] = "\(Int.random(in: 52645...978341))"
                    if buidingsPEA.count > 1 {
                        PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernkmer"] = "NULL"
                        PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAuserngender"] = "1"
                        
                    }
                  
                    PEMAMakingupCreater.unniqiePEa.signinuserAvatorPEA = UIImage(named:"nilpeaheader")
                    
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUTabbarChallengnng.init()
                   

                    SVProgressHUD.dismiss()
                    let sucirAlert = CDAlertView(title: "login successfully!", message: "Congratulations on your successful login!", type: .success)
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
        
    }
    
    @IBAction func touchPEAStatusElau(_ sender: UIButton) {
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
        PEAELUAStaus.isSelected = !PEAELUAStaus.isSelected
        PEAPinksignChallengnng.ifAdgreetermPEA = sender.isSelected
    }
}
