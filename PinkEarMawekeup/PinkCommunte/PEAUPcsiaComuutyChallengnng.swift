//
//  PEAUPcsiaComuutyChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit
import SVProgressHUD

class PEAUPcsiaComuutyChallengnng: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var foryouTyupClickPEA: UIButton!
    @IBOutlet weak var trendTyupClickPEA: UIButton!
    
    @IBOutlet weak var homeChangeViewPEA: UICollectionView!
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
        if peahomePickTag == 1000 && handsDreamPEA.count > 1{
            return PEMAMakingupCreater.unniqiePEa.comutydataYuangzuPEA.lpubPEAForyou
            
        }else  if peahomePickTag == 1001  && handsDreamPEA.count > 1{
            return PEMAMakingupCreater.unniqiePEa.comutydataYuangzuPEA.lpubPEATrend
        }else{
            if pinkfont.fontName == "" {
                return PEMAMakingupCreater.unniqiePEa.comutydataYuangzuPEA.lpubPEAForyou
            }
            return PEMAMakingupCreater.unniqiePEa.comutydataYuangzuPEA.lpubPEAForyou
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
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(carefregetingPEA), name: NSNotification.Name("removeblockUserPEA"), object: nil)
        homeChangeViewPEA.backgroundColor = .clear
        homeChangeViewPEA.isPagingEnabled = true
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        homeChangeViewPEA.contentInsetAdjustmentBehavior = .never
        
        let pesdNIB = UINib(nibName: "PEAPinkComuCell", bundle: nil)
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

      
     
        homeChangeViewPEA.delegate = self
        if counPink >= 10 &&  buidingsPEA.count > 2{
            homeChangeViewPEA.register(pesdNIB, forCellWithReuseIdentifier: "PEAPinkComuCellID")
            homeChangeViewPEA.showsHorizontalScrollIndicator = false
        }

        homeChangeViewPEA.dataSource = self
    }


    @IBAction func realiesrChangePEA(_ sender: Any) {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        self.navigationController?.pushViewController(PEAPubcomutyingfing.init(), animated: true)
    }
    
    
    @IBAction func measglistsrChanePEA(_ sender: Any) {
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        self.navigationController?.pushViewController(PEAPMeasglinstutyingfing.init(), animated: true)
    }
    
    @IBAction func changeHomeMakingupStyleTouchPEA(_ sender: UIButton) {
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
        foryouTyupClickPEA.isSelected = false
        trendTyupClickPEA.isSelected = false
        
        if sender == foryouTyupClickPEA {
            foryouTyupClickPEA.isSelected = true
            trendTyupClickPEA.isSelected = false
            
            foryouTyupClickPEA.backgroundColor = .black
            trendTyupClickPEA.backgroundColor = .clear
        }else{
            foryouTyupClickPEA.isSelected = false
            trendTyupClickPEA.isSelected = true
            
            foryouTyupClickPEA.backgroundColor = .clear
            trendTyupClickPEA.backgroundColor = .black
        }
       
        peahomePickTag = sender.tag
        
        carefregetingPEA()
        
    }
    
    @objc func carefregetingPEA() {
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
       
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            SVProgressHUD.dismiss()
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
                self.homeChangeViewPEA.reloadData()
            }
           
        }
        
     }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
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
            return self.pickresultPEa.count
        }

        return self.pickresultPEa.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let peacCellDATA = pickresultPEa[indexPath.row]
       
        
        let peacCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PEAPinkComuCellID", for: indexPath) as! PEAPinkComuCell
        peacCell.realHeaderfPink.image =  UIImage(named: peacCellDATA["PEAusernAvatwer"] ?? "")
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

      
        if let covert = peacCellDATA["PEApublishPics"]?.components(separatedBy: "()").first {
            peacCell.realPhotoPink.image =  UIImage(named: covert)
        }
        if counPink >= 10 &&  buidingsPEA.count > 2{
            peacCell.realNamePink.text = peacCellDATA["PEAusernkmer"]
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
        
        let descibePEAVC = PEAEnterDComusCharhing.init(depthlongPEA:pinkfont,changeDescibeDatPEA: pickresultPEa[indexPath.row],browsePEA:handsDreamPEA)
        self.navigationController?.pushViewController(descibePEAVC, animated: true)
       
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: collectionView.frame.width - 24 , height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
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
