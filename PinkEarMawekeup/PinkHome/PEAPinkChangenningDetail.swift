//
//  PEAPinkChangenningDetail.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit

/// 挑战详情
class PEAPinkChangenningDetail: UIViewController {
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    @IBOutlet weak var changeCoverPEAview: UIImageView!
    
    @IBOutlet weak var changeHeighTitlePEAview: UILabel!
    @IBOutlet weak var changdescribPEAview: UILabel!
    
    @IBOutlet weak var participateHeaderPEA: UIImageView!
    
    @IBOutlet weak var partipatCountPEAView: UILabel!
    
    
   
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
    
    
    
    @IBOutlet weak var emptylogoPEA: UIImageView!
    @IBOutlet weak var emptyTipslblPEA: UILabel!
    
    
    @IBOutlet weak var partcopatBackPEA: UIImageView!
    
    @IBOutlet weak var sizePEAView: UIView!
    
    @IBOutlet weak var intopartdecibPEa: UIButton!
    
    @IBOutlet weak var participatBoolTitlePEAview: UILabel!
    @IBOutlet weak var participatBooldescribPEAview: UILabel!
    
    @IBOutlet weak var participatBookCover: UIImageView!
    
    @IBOutlet weak var botttombgPartipate: UIImageView!
    
    @IBOutlet weak var particpateLaterPEA: UIImageView!
    
    @IBOutlet weak var partycipateTitleusers: UILabel!
    
    var minDepethPEA:UIFont
    var miebrowsePEA:String
 

    
    var userPEAloadDatr:Dictionary<String,String>?
   
    
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
        
        sizePEAView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(800)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        participateHeaderPEA.layer.cornerRadius = 13
        participateHeaderPEA.layer.masksToBounds = true
        participateHeaderPEA.contentMode = .scaleAspectFill
        
        partipatCountPEAView.layer.cornerRadius = 13
        partipatCountPEAView.layer.masksToBounds = true
        
        particpateLaterPEA.layer.cornerRadius = 13
        particpateLaterPEA.layer.masksToBounds = true
        
        
        
        
        changeHeighTitlePEAview.text =  changeDescibeDatPEA["TitleNamePEAMakeup"]
        changdescribPEAview.text =  changeDescibeDatPEA["BriefPEAMakeup"]
        changeCoverPEAview.image = UIImage(named: changeDescibeDatPEA["CoverPEAMakeup"]  ?? "")
       
       
        
        if let partyheaderstr = changeDescibeDatPEA["partyHeaderlPEA"] {
            participateHeaderPEA.image = UIImage(named: partyheaderstr )
            particpateLaterPEA.image = UIImage(named: partyheaderstr )
            emptylogoPEA.isHidden = true
            emptyTipslblPEA.isHidden = true
            
            participatBoolTitlePEAview.text = changeDescibeDatPEA["partyTitlePEA"]
            participatBookCover.image = UIImage(named: changeDescibeDatPEA["partyPicsPEA"]  ?? "")
            participatBooldescribPEAview.text = changeDescibeDatPEA["partyDetailPEA"]
            participatBooldescribPEAview.numberOfLines = 2
            
        }else{
            intopartdecibPEa.isHidden = true
            partipatCountPEAView.isHidden = true
            participateHeaderPEA.isHidden = true
            
            partcopatBackPEA.isHidden = true
            participatBoolTitlePEAview.isHidden = true
            participatBooldescribPEAview.isHidden = true
            participatBookCover.isHidden = true
            particpateLaterPEA.isHidden = true
            partycipateTitleusers.isHidden = true
            botttombgPartipate.isHidden = true
        }
    }
    @IBAction func backPagePEAchn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    
    
    @IBAction func joinchangePagePEAchn(_ sender: Any) {
        let loinvc = PEAPinkPartyinMakeupChangenning.init()
        
        self.navigationController?.pushViewController(loinvc, animated: true)
    }
    
    
    @IBAction func seePartidescribechangePagePEAchn(_ sender: Any) {
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
        
        let loinvc = PEAPinkPartyipateDetail.init(DepethPEA:pinkfont, changeDescibeDatPEA: changeDescibeDatPEA,browsePEA:handsDreamPEA)
        
        self.navigationController?.pushViewController(loinvc, animated: true)
    }
    
    
    @IBAction func reporthangePagePEAchn(_ sender: Any) {
        let loinvc = PEAUAlREportCharhing.init()
        
        self.navigationController?.pushViewController(loinvc, animated: true)
    }
}
