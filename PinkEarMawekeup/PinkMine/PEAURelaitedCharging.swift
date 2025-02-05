//
//  PEAURelaitedCharging.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/30.
//

import UIKit

class PEAURelaitedCharging: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    @IBOutlet weak var manghuiViePEA: UICollectionView!
    
    @IBOutlet weak var fowerfdingPEAd: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.manghuiViePEA.reloadData()
    }
    
    var minDepethPEA:UIFont
    var miebrowsePEA:String
    init(depthlongPEA:UIFont, peahomePickTag: Int,browsePEA:String) {
        minDepethPEA = depthlongPEA
        miebrowsePEA = browsePEA
        self.peahomePickTag = peahomePickTag
        super.init(nibName: nil, bundle: nil)
        rnpincolro = "#333333"
        putryViewPEA.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
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
    
    
  
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBAction func backPagePEAchn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    var peahomePickTag:Int = 1000
    
    var pickresultPEa:Array<Dictionary<String,String>>{
        if peahomePickTag == 1000 {
            return PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings
            
        }else {
            return PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollwers
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        manghuiViePEA.backgroundColor = .clear
        manghuiViePEA.isPagingEnabled = true
       
        manghuiViePEA.contentInsetAdjustmentBehavior = .never
        
        let pesdNIB = UINib(nibName: "PEAURelaitedell", bundle: nil)
               
        manghuiViePEA.register(pesdNIB, forCellWithReuseIdentifier: "PEAURelaitedellID")
        manghuiViePEA.showsVerticalScrollIndicator = false
        manghuiViePEA.delegate = self
        
        manghuiViePEA.dataSource = self
        
        if peahomePickTag == 1000 {
            fowerfdingPEAd.text = "Followings"
        }else{
            fowerfdingPEAd.text = "Followers"
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
    
  
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.pickresultPEa.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let peacCellDATA = pickresultPEa[indexPath.row]
       
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

      
        let peacCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PEAURelaitedellID", for: indexPath) as! PEAURelaitedell
        peacCell.realHeaderfPink.image =  UIImage(named: peacCellDATA["PEAusernAvatwer"] ?? "")
       
        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            peacCell.realNamePink.text = peacCellDATA["PEAusernkmer"]
        }
      
        peacCell.realdescribePEAlbl.text =  peacCellDATA["PEAusernDesc"]
        return peacCell
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
        
        let descibePEAVC = PEAFrendCentertutyingfing.init(depthlongPEA:pinkfont,changeDescibeDatPEA: pickresultPEa[indexPath.row],browsePEA:handsDreamPEA)
        self.navigationController?.pushViewController(descibePEAVC, animated: true)
       
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: collectionView.frame.width - 24 , height: 88)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
}



