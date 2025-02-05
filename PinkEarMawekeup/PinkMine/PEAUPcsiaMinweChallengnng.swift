//
//  PEAUPcsiaMinweChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit

class PEAUPcsiaMinweChallengnng: UIViewController {

    @IBOutlet weak var sizePEAView: UIView!
    @IBOutlet weak var siginerPEaImg: UIImageView!
    
    
    @IBOutlet weak var siginerPEAnamelvbl: UILabel!
    
    @IBOutlet weak var siginerPEAbrieflvbl: UILabel!
    
    @IBOutlet weak var siginerPEAFollowerlvbl: UILabel!
    @IBOutlet weak var siginerPEAFollowinglvbl: UILabel!
    
    
    @IBOutlet weak var siginToFollowerlvbl: UIButton!
    @IBOutlet weak var siginToFollowinglvbl: UIButton!
    
    @IBOutlet weak var blanceCountlavrlPREA: UILabel!
    
    @IBOutlet weak var emptylogoPEA: UIImageView!
    @IBOutlet weak var emptyTipslblPEA: UILabel!
    
    
    @IBOutlet weak var intoPOSTbPEa: UIButton!
    
    
    @IBOutlet weak var postshongbgPEADF: UIImageView!
    @IBOutlet weak var realshongbgPEADF: UIImageView!
    
    
    
    
    @IBAction func jumopEdtieVCPEA(_ sender: Any) {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        self.navigationController?.pushViewController(PEAEdierInfsCharhing.init(), animated: true)
    }
    
    @IBAction func jumositweringVCPEA(_ sender: Any) {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        self.navigationController?.pushViewController(PEAUASertingCharhing.init(), animated: true)
    }
    
    
    @IBAction func jumoFollowerVCPEA(_ sender: Any) {
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
        self.navigationController?.pushViewController(PEAURelaitedCharging.init(depthlongPEA:pinkfont,peahomePickTag: 1001,browsePEA:handsDreamPEA), animated: true)
    }
    
    @IBAction func jumoFolloweingVCPEA(_ sender: Any) {
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
        self.navigationController?.pushViewController(PEAURelaitedCharging.init(depthlongPEA:pinkfont,peahomePickTag: 1000,browsePEA:handsDreamPEA), animated: true)
       
    }
    
    
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
    
    
   
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        blanceCountlavrlPREA.text = PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] ?? "0"
        
        siginerPEAFollowinglvbl.text = "\(PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings.count)"
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        siginerPEAFollowerlvbl.text = "\(  PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollwers.count)"
        
        siginerPEAnamelvbl.text = PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernkmer"]
        siginerPEaImg.image = PEMAMakingupCreater.unniqiePEa.signinuserAvatorPEA
        siginerPEAbrieflvbl.text =   PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernDesc"]
        sizePEAView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(623)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        if let covert = PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEApublishPics"]?.components(separatedBy: "()").first {
            realshongbgPEADF.image =  UIImage(named: covert)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        siginerPEaImg.layer.cornerRadius = 32
        siginerPEaImg.layer.masksToBounds = true
        
        if  PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernID"] != "89767890" {
            postshongbgPEADF.isHidden = true
            realshongbgPEADF.isHidden = true
            intoPOSTbPEa.isHidden = true
        }else{
            emptylogoPEA.isHidden = true
            emptyTipslblPEA.isHidden = true
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
    
    
   
    @IBAction func showingBlancePayPEaing(_ sender: Any) {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        self.navigationController?.pushViewController(PEAUSpendoCharhing.init(), animated: true)
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
        let descibePEAVC = PEAEnterDComusCharhing.init(depthlongPEA:pinkfont,changeDescibeDatPEA: PEMAMakingupCreater.unniqiePEa.sioninUsertPEA,browsePEA:handsDreamPEA)
       
        
        
        self.navigationController?.pushViewController(descibePEAVC, animated: true)
       
    }
    
}
