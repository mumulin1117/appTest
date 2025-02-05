//
//  PEAFrendCentertutyingfing.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/28.
//

import UIKit
import CDAlertView
import SVProgressHUD

class PEAFrendCentertutyingfing: UIViewController {
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
    @IBOutlet weak var siginerPEaImg: UIImageView!
    
    @IBOutlet weak var sizePEAView: UIView!
    
    @IBOutlet weak var siginerPEAnamelvbl: UILabel!
    
    @IBOutlet weak var siginerPEAbrieflvbl: UILabel!
    
    @IBOutlet weak var siginerPEAFollowerlvbl: UILabel!
    @IBOutlet weak var siginerPEAFollowinglvbl: UILabel!
    
    
    @IBOutlet weak var emptylogoPEA: UIImageView!
    @IBOutlet weak var emptyTipslblPEA: UILabel!
    
    
    @IBOutlet weak var intoPOSTbPEa: UIButton!
    
    
    @IBOutlet weak var postshongbgPEADF: UIImageView!
    @IBOutlet weak var realshongbgPEADF: UIImageView!
    
    @IBOutlet weak var fowingstatuPEADstaus: UIButton!
    
    var minDepethPEA:UIFont
    var miebrowsePEA:String
    
    
    
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
    
    
   
    
    var changeDescibeDatPEA:Dictionary<String,String>
    init(depthlongPEA:UIFont,changeDescibeDatPEA: Dictionary<String, String>,browsePEA:String) {
        self.changeDescibeDatPEA = changeDescibeDatPEA
        minDepethPEA = depthlongPEA
        miebrowsePEA = browsePEA
        super.init(nibName: nil, bundle: nil)
        rnpincolro = "#333333"
        putryViewPEA.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sizePEAView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(623)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        siginerPEAnamelvbl.text = changeDescibeDatPEA["PEAusernkmer"]
        siginerPEaImg.image = UIImage(named: changeDescibeDatPEA["PEAusernAvatwer"] ?? "")
        siginerPEAbrieflvbl.text =   changeDescibeDatPEA["PEAusernDesc"]
        
        siginerPEAFollowerlvbl.text = "\(Int.random(in: 0...3))"
        siginerPEAFollowinglvbl.text = "\(Int.random(in: 0...3))"
        
        if let covert = changeDescibeDatPEA["PEApublishPics"]?.components(separatedBy: "()").first {
            realshongbgPEADF.image =  UIImage(named: covert)
            emptylogoPEA.isHidden = true
            emptyTipslblPEA.isHidden = true
        }else{
            postshongbgPEADF.isHidden = true
            realshongbgPEADF.isHidden = true
            intoPOSTbPEa.isHidden = true
        }
        if PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings.filter({ dicv in
            dicv["PEAusernID"] == self.changeDescibeDatPEA["PEAusernID"]
       }).count > 0 {
           fowingstatuPEADstaus.isSelected =  true
       }else{
           fowingstatuPEADstaus.isSelected =  false
       }
            
        NotificationCenter.default.addObserver(self, selector: #selector(backPagePEAchn), name: NSNotification.Name("removeblockUserPEA"), object: nil)
       
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
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func reporthangePagePEAchn(_ sender: Any) {
        
        let sijfer1 = "Report or Block?$$$$$Are you sure you want to report or blacklist this user? After the user is blacklisted, all related information will no longer be displayed$$$$$Report$$$$$Block$$$$$Block successed!".components(separatedBy: "$$$$$")
        
        let tiuipsPEA = CDAlertView(title: sijfer1[0], message: sijfer1[1], type: .warning)
        let doneAction = CDAlertViewAction(title: sijfer1[2],textColor: .white,backgroundColor: .black) { cd in
            
            let loinvc = PEAUAlREportCharhing.init()
            
            self.navigationController?.pushViewController(loinvc, animated: true)
            return true
        }
        
        let baozhenPEAACtion = CDAlertViewAction(title: sijfer1[3],textColor: .white,backgroundColor: .black) { cd in
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
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {

                SVProgressHUD.dismiss()
                let sucirAlert = CDAlertView(title: sijfer1[4], message: "", type: .success)
                sucirAlert.autoHideTime = 2
                sucirAlert.hideAnimations = { (center, transform, alpha) in
                    transform = CGAffineTransform(scaleX: 3, y: 3)
                    alpha = 0
                }
                sucirAlert.hideAnimationDuration = 0.3
                sucirAlert.show()
                PEMAMakingupCreater.unniqiePEa.removePEAUSetuser(depthlongPEA:pinkfont,getinguserIDPEA: self.changeDescibeDatPEA,browsePEA:handsDreamPEA)
               
            }))
            return true
        }
        
        tiuipsPEA.add(action: doneAction)
        tiuipsPEA.add(action: baozhenPEAACtion)
      
        tiuipsPEA.show()
        
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
    
    @IBAction func prefyourAttitudePEac(_ sender: UIButton) {
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
        SVProgressHUD.show()
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
       
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
            
          
            SVProgressHUD.dismiss()
            sender.isSelected = !sender.isSelected
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

          

            if PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings.filter({$0["PEAusernID"] == self.changeDescibeDatPEA["PEAusernID"]}).count == 0 && sender.isSelected == true{
                
                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

                if counPink >= 10 &&  buidingsPEA.count > 2{
                    PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings.insert(self.changeDescibeDatPEA, at: 0)
                }
                
            }
            
            if PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings.filter({$0["PEAusernID"] == self.changeDescibeDatPEA["PEAusernID"]}).count >= 1 && sender.isSelected == false{
                for (iooo,Item) in PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings.enumerated() {
                    if Item["PEAusernID"] == self.changeDescibeDatPEA["PEAusernID"] {
                        if (counPink >= 10) {
                            counPink += handslovers.last ?? 1
                        }else{
                            
                            counPink += 12
                        }

                        if counPink >= 10 &&  buidingsPEA.count > 2{
                            PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings.remove(at: iooo)
                        }
                        
                    }
                }
            }
        
        }))
    }

    @IBAction func gochanertingPEA(_ sender: Any) {
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

        let aleChating = PEAPinkAIChatChangeing.init(depthlongPEA:pinkfont,isAiRovertChat: false, userPEAloadDatr: changeDescibeDatPEA,browsePEA:handsDreamPEA)
        
        self.navigationController?.pushViewController(aleChating, animated: true)
    }
    
    @IBAction func todetailPostpublishPEA(_ sender: Any) {
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

        let descibePEAVC = PEAEnterDComusCharhing.init(depthlongPEA:pinkfont,changeDescibeDatPEA:changeDescibeDatPEA ,browsePEA:handsDreamPEA)
       
        
        
        self.navigationController?.pushViewController(descibePEAVC, animated: true)
       
    }
}
