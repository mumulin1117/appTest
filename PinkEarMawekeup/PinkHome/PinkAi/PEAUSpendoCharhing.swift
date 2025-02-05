//
//  PEAUSpendoCharhing.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit
import CDAlertView
class PEAUSpendoCharhing: UIViewController {
    @IBOutlet weak var blanceCountlavrlPREA: UILabel!
    
    
    @IBOutlet weak var sizePEAView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        sizePEAView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(964)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        blanceCountlavrlPREA.text = PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] ?? "0"
     
    }
    
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
    
    
    @IBAction func backPagePEAchn(_ sender: Any) {
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        self.navigationController?.popViewController(animated: true)
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
    
    
  
    
    @IBAction func purcheingPEAtousercing(_ sender: UIButton) {
        
        self.view.isUserInteractionEnabled = false
        SVProgressHUD.show(withStatus: " Payment in progress  ...")
        let indexpatro = sender.tag - 20
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
        let ugllluy = [("ltrzrpittnvdfxiu",400),
                         ("cpoytqshlawfifhe",800),
                         ("iytawtnvsldshsan",2450),
                              
                            ("omanticcuspicio",3250),
                            
                         ("xmtxfybrognypgfu",4900),
                              ("mkenticcuspicio",5700),
                         ("elloqlfutaeyvpks",9800),
                              ("ibranerticuspicio",14700),

                         ("lffxglrivhtwjqvk",24500),
                         ("nnuchgwfmntkquyg",49000)]
        
        let choiceddata = ugllluy[indexpatro]
        
        SwiftyStoreKit.purchaseProduct(choiceddata.0, atomically: true) { peaResult in
            SVProgressHUD.dismiss()
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

           
            self.view.isUserInteractionEnabled = true
            
            if case .success(let psPurch) = peaResult {
               
                
                let peardownloads = psPurch.transaction.downloads
                if !peardownloads.isEmpty {
                    SwiftyStoreKit.start(peardownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

            

                var coushdes =  Int( PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] ?? "0") ?? 0
                
                    
                coushdes = coushdes + choiceddata.1
                if counPink >= 10 &&  buidingsPEA.count > 2{
                    PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] = "\(coushdes)"
                   
                }
                
                self.blanceCountlavrlPREA.text = "\(coushdes)"

                let sucirAlert = CDAlertView(title: "pay success !!!", message: "", type: .success)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
            }else if case .error(let error) = peaResult {
                
               
                if error.code == .paymentCancelled {
                    return
                }
                
                let sucirAlert = CDAlertView(title: "Request error", message: error.localizedDescription, type: .error)
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
}
