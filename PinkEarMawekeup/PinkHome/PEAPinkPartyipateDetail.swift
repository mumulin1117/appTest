//
//  PEAPinkPartyipateDetail.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit

/// 参与详情
class PEAPinkPartyipateDetail: UIViewController {

    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    @IBOutlet weak var participatBoolTitlePEAview: UILabel!
    @IBOutlet weak var participatBooldescribPEAview: UILabel!
    
    @IBOutlet weak var participatBookCover: UIImageView!
    
    @IBOutlet weak var participateHeaderPEA: UIImageView!
    
    @IBOutlet weak var particpateNmmePEA: UILabel!
    
    @IBOutlet weak var statusPEA: UIButton!
    
    var minDepethPEA:UIFont
    var miebrowsePEA:String
 

    
    var userPEAloadDatr:Dictionary<String,String>?
   
    
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
    
    
    var changeDescibeDatPEA:Dictionary<String,String>
    init(DepethPEA:UIFont,changeDescibeDatPEA: Dictionary<String, String>,browsePEA:String) {
        self.changeDescibeDatPEA = changeDescibeDatPEA
        self.minDepethPEA = DepethPEA
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
        participateHeaderPEA.layer.cornerRadius = 20
        participateHeaderPEA.layer.masksToBounds = true
        participateHeaderPEA.contentMode = .scaleAspectFill
        
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        if let partyheaderstr = changeDescibeDatPEA["partyHeaderlPEA"] {
            participateHeaderPEA.image = UIImage(named: partyheaderstr )
            particpateNmmePEA.text = changeDescibeDatPEA["partyUsernamerlPEA"]
            
            participatBoolTitlePEAview.text = changeDescibeDatPEA["partyTitlePEA"]
            participatBookCover.image = UIImage(named: changeDescibeDatPEA["partyPicsPEA"]  ?? "")
            participatBooldescribPEAview.text = changeDescibeDatPEA["partyDetailPEA"]
            participatBooldescribPEAview.numberOfLines = 0
            
        }
        
    }

  
    
    @IBAction func reporthangePagePEAchn(_ sender: Any) {
        let loinvc = PEAUAlREportCharhing.init()
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
            self.navigationController?.pushViewController(loinvc, animated: true)
        }

        
    }

    
    @IBAction func speackStatusPagePEAchn(_ sender: UIButton) {
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
            sender.isSelected = !sender.isSelected
            
        }

       
        
    }
    
    
    @IBAction func backPagePEAchn(_ sender: Any) {
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
            self.navigationController?.popViewController(animated: true)
        }

        
    }
}
