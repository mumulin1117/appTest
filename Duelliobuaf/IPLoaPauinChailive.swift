//
//  IPLoaPauinChailive.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/3.
//

import UIKit
import Loaf
import SwiftyStoreKit
class IPLoaPauinChailive: LaterPageContirl, UICollectionViewDelegate, UICollectionViewDataSource {
    private var DuelStageManager:UIView?
    
    private  var FlowIgnitionSystem:CGColor?
    
    
    private  var shureCode:Int = 0
    
    private let GrooveCatalyst = [("mdckcujrtuykonjc",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$e0n.i9l9"),UIButton(),400),
                  ("uxohcrvsxuthyglu",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$i1i.x9d9"),UIButton(),800),
                  ("duellivpaonlinuh",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$o2b.i9u9"),UIButton(),1250),
                  ("dfvsdsvsbukuilai",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$e3c.l9x9"),UIButton(),1750),
                  ("wwbezydljhehcfhh",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$r4z.a9s9"),UIButton(),2450),
                  ("dfvsdsvsbahuhole",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$v6v.k9o9"),UIButton(),3050),
                  ("flqqevjspukbwnws",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$q9t.a9f9"),UIButton(),4900),
                  ("dhuhvfrygkxnrqgx",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$q1o9h.z9i9"),UIButton(),9800),
                  ("eynohwtnojwdmdrr",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$j4l9u.p9v9"),UIButton(),24500),
                  ("tqhzzqrpzbcypazg",LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "$w9j9p.j9a9"),UIButton(),49000),
                  
                
                  
    ]
    
    
    private var SpinSyncController:Array<Int>?
    
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let due = collectionView.dequeueReusableCell(withReuseIdentifier: "DueOadojPaoioo", for: indexPath) as! DueOadojPaoioo
        due.countineLabel.text = "\(GrooveCatalyst[indexPath.row].3)"
        if shureCode > 0 {
            FlowIgnitionSystem = self.view.backgroundColor?.cgColor
        }
        due.moneyutneLabel.text = GrooveCatalyst[indexPath.row].1
        return due
        
    }
    

    private lazy var meshaineLabel: UILabel = {
        let laj = UILabel.init()
        
        laj.textAlignment = .center
        laj.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mzyx iBclhannecte")
        laj.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        laj.textColor =  UIColor.gray
        return laj
    }()
    
    
    private  lazy var chargeBackDUE: UIButton = {
        let mains = UIButton.init()
        mains.setBackgroundImage(UIImage.init(named: "img_btn_bg"), for: .normal)
        mains.setTitle(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Raegcihqadrtgpe"), for: .normal)
        mains.setTitleColor(.white, for: .normal)
        mains.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        mains.addTarget(self, action: #selector(rechaggeinmAin), for: .touchUpInside)
        return mains
    }()
    
    
   @objc func rechaggeinmAin() {
       let svfdfdf = GrooveCatalyst[shureCode]
       
       transmuteGiftToBoost(isinteract:false)
       
       
       
       Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pvafyyiunlg"), state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
      
       self.defautedinft.startAnimating()
      
       
       duelliveFoajiu(svF: svfdfdf)
   }
    
    
    func duelliveFoajiu(svF:(String,String,UIButton,Int))  {
        SwiftyStoreKit.purchaseProduct(svF.0, atomically: true) { psResult in
            self.transmuteGiftToBoost(isinteract:true)
            self.defautedinft.stopAnimating()
            Loaf.dismiss(sender: self)
           
            if case .success(let psPurch) = psResult {

                self.spawnInteractiveSequence(psPurch:psPurch)
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
       
                let orignal:Int = 0
                
                var use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
            
               
                var coainfhkO = Int( use?["SerenitySpin"] ?? "0") ?? 0
                coainfhkO = coainfhkO + orignal
                coainfhkO = coainfhkO + svF.3
                coainfhkO = coainfhkO + orignal
                use?["SerenitySpin"] = "\(coainfhkO)"
               
                
                if let newnew = use {
                    self.harvestCommunityMoves(use:newnew)
                }
                

                self.senoutneLabel.text = "\(coainfhkO)"
        
            }else if case .error(let error) = psResult {
               
                if error.code != .paymentCancelled {
                    Loaf(error.localizedDescription, state:.error, sender: self).show()
                }
                
              
            }
        }
    }
   
    
    func  transmuteGiftToBoost(isinteract:Bool)  {
        self.view.isUserInteractionEnabled = isinteract
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return generateBattleRoutine()
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        shitBackDUE.isHidden = false
        shitMorengDUE.isHidden = true
        let sxdf = ((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets.top ?? 0
        
       
        let aaldl = UIImageView(image: UIImage.init(named: "Huaihflopbg"))
        view.insertSubview(aaldl, at: 0)
        view.addSubview(meshaineLabel)
        meshaineLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(sxdf + 30 + 30)
        }
        view.addSubview(senoutneLabel)
        senoutneLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(meshaineLabel.snp.bottom).offset(20)
        }
        
        aaldl.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        remixChallengeParameters()
        
        let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
    
        senoutneLabel.text =  use?["SerenitySpin"] ?? "0"
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    private func harvestCommunityMoves(use:Dictionary<String,String>) {
        Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Piaiyz lssupcocseusjsjfpusll!"), state: .success, sender: self).show()
       
        UserDefaults.standard.set(use, forKey: "dueUserNowing")
        
        UserDefaults.standard.set(use, forKey: use["Due_oID"] ?? "")

        UserDefaults.standard.synchronize()
        
        
    }
   
    
    
    private func spawnInteractiveSequence(psPurch:PurchaseDetails){
        
        let loaknned = psPurch.transaction.downloads
        if !loaknned.isEmpty {
            SwiftyStoreKit.start(loaknned)
        }
    }
    
    func generateBattleRoutine() -> Int {
        return GrooveCatalyst.count
    }
    
    func remixChallengeParameters()  {
        let layout = UICollectionViewFlowLayout.init()
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 36)/2, height: 92)
       
        layout.scrollDirection = .vertical
        
        let mainDUEDtartgerVire = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
      
        mainDUEDtartgerVire.register(DueOadojPaoioo.self, forCellWithReuseIdentifier: "DueOadojPaoioo")
        mainDUEDtartgerVire.backgroundColor = .clear
     
//
        mainDUEDtartgerVire.showsVerticalScrollIndicator = false
        
        self.view.addSubview(mainDUEDtartgerVire)
        mainDUEDtartgerVire.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo(senoutneLabel.snp.bottom).offset(30)
        }
        let sxdf = ((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets.bottom ?? 0
        mainDUEDtartgerVire.delegate = self
        mainDUEDtartgerVire.collectionViewLayout = layout
        
        mainDUEDtartgerVire.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        
        mainDUEDtartgerVire.dataSource = self
        view.addSubview(chargeBackDUE)
        chargeBackDUE.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-sxdf - 12)
            make.width.equalTo(287)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
        }
        
        mainDUEDtartgerVire.selectItem(at: IndexPath.init(row: 0, section: 0), animated: true, scrollPosition: .top)
    }
    private lazy var senoutneLabel: UILabel = {
        let laj = UILabel.init()
         laj.textAlignment = .center
         laj.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        
        laj.textColor =  UIColor.white
        return laj
    }()
    
}


class DueOadojPaoioo: UICollectionViewCell {
    
    
     lazy var moneyutneLabel: UILabel = {
        let laj = UILabel.init()
         laj.textAlignment = .center
        laj.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        laj.textColor =  UIColor.init(white: 0.7, alpha: 1)
        return laj
    }()
    
    
    private let xceter = UIView.init()
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        xceter.layer.borderColor = UIColor(red: 0.91, green: 0.08, blue: 0.71, alpha: 1).cgColor
        xceter.layer.borderWidth = 0
        
        
        xceter.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2000)
        igniteDuelEnergy()
        xceter.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
        }
        
        harvestCommunityMoves()
        self.backgroundColor = .clear
    }
    
    func igniteDuelEnergy() {
        xceter.layer.cornerRadius = 16
        xceter.layer.masksToBounds = true
        
        contentView.addSubview(xceter)
    }
    
    
    
    lazy var countineLabel: UILabel = {
       let laj = UILabel.init()
  
       laj.textAlignment = .center
       laj.font = UIFont.systemFont(ofSize: 20, weight: .medium)
       laj.textColor =  UIColor.white
       return laj
   }()
    
    
    private func harvestCommunityMoves()  {
        let foreimg = UIImageView(image: UIImage.init(named: "Hidomonsgold"))
        contentView.addSubview(foreimg)
        foreimg.snp.makeConstraints { make in
            make.width.height.equalTo(53)
            make.leading.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
        }
        
        contentView.addSubview(countineLabel)
        countineLabel.snp.makeConstraints { make in
            make.leading.equalTo(foreimg.snp.trailing)
            make.top.equalTo(foreimg.snp.top).offset(3)
            make.trailing.equalToSuperview()
            
        }
        contentView.addSubview(moneyutneLabel)
        moneyutneLabel.snp.makeConstraints { make in
            make.left.right.equalTo(countineLabel)
            make.top.equalTo(countineLabel.snp.bottom).offset(4)
        }
       
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func  remixChallengeParameters() {
        xceter.layer.borderWidth = 0
    }
    
    override var isSelected: Bool{
        didSet{
            if isSelected {
                xceter.layer.borderWidth = 1
                return
            }
            remixChallengeParameters()
        }
    }
    
    
  
}
