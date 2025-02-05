//
//  PEAUPcsiaHemrChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit
import SVProgressHUD
import CDAlertView
class PEAUPcsiaHemrChallengnng: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var foryouTyupClickPEA: UIButton!
    @IBOutlet weak var pouplarTyupClickPEA: UIButton!
    @IBOutlet weak var genieTyupClickPEA: UIButton!
    @IBOutlet weak var lightmakTyupClickPEA: UIButton!
    @IBOutlet weak var classicyTyupClickPEA: UIButton!
    
    @IBOutlet weak var aishingPEA: UIButton!
    
    @IBOutlet weak var homeChangeViewPEA: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if PEMAMakingupCreater.unniqiePEa.minePinkRobert != nil {
            aishingPEA.setBackgroundImage(UIImage.init(named: "peaEnterAi"), for: .normal)
        }else{
            aishingPEA.setBackgroundImage(UIImage.init(named: "homeAIPEAbg"), for: .normal)
        }
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
    
    
   
    
    
    var peahomePickTag:Int = 1000
    
    var pickresultPEa:Array<Dictionary<String,String>>{
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
        if peahomePickTag == 1000  && handsDreamPEA.count > 1{
            return PEMAMakingupCreater.unniqiePEa.homedataYuangzuPEA.pcsiaForyou
            
        }else  if peahomePickTag == 1001  && handsDreamPEA.count > 1{
            return PEMAMakingupCreater.unniqiePEa.homedataYuangzuPEA.pisicPopular
        }else  if peahomePickTag == 1002   && handsDreamPEA.count > 1{
            return PEMAMakingupCreater.unniqiePEa.homedataYuangzuPEA.pcsioGenie
        }else  if peahomePickTag == 1003   && handsDreamPEA.count > 1{
            return PEMAMakingupCreater.unniqiePEa.homedataYuangzuPEA.pcsioLishtmakeup
        }else  if peahomePickTag == 1004  && handsDreamPEA.count > 1 {
            return PEMAMakingupCreater.unniqiePEa.homedataYuangzuPEA.pcsioClassy
        }else{
            if pinkfont.fontName == "" {
                return PEMAMakingupCreater.unniqiePEa.homedataYuangzuPEA.pcsiaForyou
            }
            return PEMAMakingupCreater.unniqiePEa.homedataYuangzuPEA.pcsiaForyou
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeChangeViewPEA.backgroundColor = .clear
        homeChangeViewPEA.isPagingEnabled = true
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        homeChangeViewPEA.contentInsetAdjustmentBehavior = .never
        
        let pesdNIB = UINib(nibName: "PEAPinkHomweCell", bundle: nil)
               
        homeChangeViewPEA.register(pesdNIB, forCellWithReuseIdentifier: "PEAPinkHomweCellID")
        homeChangeViewPEA.showsHorizontalScrollIndicator = false
        homeChangeViewPEA.delegate = self
        
        homeChangeViewPEA.dataSource = self
    }

    @IBAction func realiesrChangePEA(_ sender: Any) {
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
            self.navigationController?.pushViewController(PEAPinkPuishMakeupChangenning.init(), animated: true)
        }

       
    }
    
    @IBAction func changeHomeMakingupStyleTouchPEA(_ sender: UIButton) {
        foryouTyupClickPEA.isSelected = false
        pouplarTyupClickPEA.isSelected = false
        genieTyupClickPEA.isSelected = false
        lightmakTyupClickPEA.isSelected = false
        classicyTyupClickPEA.isSelected = false
        
        
        sender.isSelected = true
        peahomePickTag = sender.tag
        
        carefregetingPEA()
        
    }
    
    
    @IBAction func AiAvatoretNowingjumpPEA(_ sender: UIButton) {
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        

        if PEMAMakingupCreater.unniqiePEa.minePinkRobert == nil {
            self.navigationController?.pushViewController(PEAPinkAICreateChangeing.init(), animated: true)
        }else{
            
            var ownedSionerPEA =  Int(PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] ?? "0") ?? 0
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

          
            let mustcoinPEA = 15
            
            if ownedSionerPEA <  mustcoinPEA{
                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

               
                let tiuipsPEA = CDAlertView(title: "Insufficient Blance", message: "Creating a personal chatbot requires a one-time cost of 300 coins. The first chat is free, and each subsequent chat costs 15 coins", type: .warning)
                let doneAction = CDAlertViewAction(title: "Recharge",textColor: .white,backgroundColor: .black) { cd in
                    if counPink >= 10 &&  buidingsPEA.count > 2{
                        self.navigationController?.pushViewController(PEAUSpendoCharhing.init(), animated: true)
                    }
                   
                    return true
                }
                
                tiuipsPEA.add(action: doneAction)
                let nevermindAction = CDAlertViewAction(title: "Cancel")
                tiuipsPEA.add(action: nevermindAction)
                tiuipsPEA.show()
                
                return
            }
            
            ownedSionerPEA = ownedSionerPEA - mustcoinPEA
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] = "\(ownedSionerPEA)"
            
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
            
            let pinkAI = PEAPinkAIChatChangeing.init(depthlongPEA:pinkfont,isAiRovertChat: true,browsePEA:handsDreamPEA)
            
            self.navigationController?.pushViewController(pinkAI, animated: true)
            
            
        }
       
        
    }
    
    @objc func carefregetingPEA() {
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

     

        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            SVProgressHUD.dismiss()
            if (counPink >= 10) {
                counPink += handslovers.last ?? 1
            }else{
                
                counPink += 12
            }

            if counPink >= 10 &&  buidingsPEA.count > 2{
                self.homeChangeViewPEA.reloadData()
            }
           
        }
        
     }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.pickresultPEa.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let peacCellDATA = pickresultPEa[indexPath.row]
       
        
        let peacCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PEAPinkHomweCellID", for: indexPath) as! PEAPinkHomweCell
        peacCell.changeHeighTitlePEAview.text =  peacCellDATA["TitleNamePEAMakeup"]
        peacCell.changdescribPEAview.text =  peacCellDATA["BriefPEAMakeup"]
        peacCell.changeCoverPEAview.image = UIImage(named: peacCellDATA["CoverPEAMakeup"]  ?? "")
       
        if let partyheaderstr = peacCellDATA["partyHeaderlPEA"] {
            peacCell.participateHeaderPEA.image = UIImage(named: partyheaderstr )
            peacCell.partipatCountPEAView.isHidden = false
            peacCell.participateHeaderPEA.isHidden = false
        }else{
            peacCell.partipatCountPEAView.isHidden = true
            peacCell.participateHeaderPEA.isHidden = true
        }
        
        
        
        peacCell.reportNwerBert.addTarget(self, action: #selector(reporthangePagePEAchn), for: .touchUpInside)
       
       
        return peacCell
    }
    
   @objc func reporthangePagePEAchn(_ sender: Any) {
        let loinvc = PEAUAlREportCharhing.init()
       let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
       let randomGreen = CGFloat(arc4random() % 256) / 255.0
       let randomBlue = CGFloat(arc4random() % 256) / 255.0
       
       rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
       if rnpincolro.count < 2 {
           rnpincolro.append("#8909")
       }
        self.navigationController?.pushViewController(loinvc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
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
        
        let descibePEAVC = PEAPinkChangenningDetail.init(DepethPEA:pinkfont,changeDescibeDatPEA: pickresultPEa[indexPath.row],browsePEA:handsDreamPEA)
        self.navigationController?.pushViewController(descibePEAVC, animated: true)
       
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: collectionView.frame.width - 25, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 12
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
