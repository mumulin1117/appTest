//
//  LiSSpMeBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpMeBootomrbucue:  LissipSecondFrbucue,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var ChokenSSIP: UIButton!
   
    
    @IBOutlet weak var fancereCountSIpp: UILabel!
    
    @IBOutlet weak var fowerereCountSIpp: UILabel!
   
    @IBOutlet weak var whonameSIPP: UILabel!
    
    
    @IBOutlet weak var owetherINfSIPP: UICollectionView!
    
    @IBOutlet weak var delertSIPP: UIButton!
    
    
    @IBOutlet weak var loagerrtSIPP: UIButton!
    
    
    @IBOutlet weak var ownedSIpp: UIImageView!
    
   
    @IBOutlet weak var thinhXOCinbg: UIView!
    
    static  var FolsdwemeSSIP = [[String: String]]()
    
    static var facrewemeSSIP = [[String: String]]()
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    let minSetinggoSipp = [("Wsatlxloeat".oranApolWothCharrterString(),"walSSIPlet"),("Mwyi aparwonfciflde".oranApolWothCharrterString(),"SSIPProfile"),("Ubsuezry gAegkrfeqepmveenrt".oranApolWothCharrterString(),"walSSIPlet"),("Plrkilvkaicxyz xPgonloivcty".oranApolWothCharrterString(),"walSSIPlet")]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ownedSIpp.image = LipSigggneSnmingertips.logPucserdataSSIP
        ssuipCreaNet()
        enImageSSIPOViol.isHidden = true
        fowerereCountSIpp.text = "\(LiSSpMeBootomrbucue.FolsdwemeSSIP.count)"
    
    }
    private func ssuipCreaNet() {
        whonameSIPP.text = LipSigggneSnmingertips.logUoserdataSSIP["ssipNadme"]
        
        fancereCountSIpp.text = "\(LiSSpMeBootomrbucue.facrewemeSSIP.count)"
        
    }
    
   
    @IBAction func fanceToSIPP(_ sender: UIButton) {
        let akoij = LiSSpPersionlistPostfrbucue.init()
        akoij.tatSSipype = 0
        self.navigationController?.pushViewController(akoij, animated: true)
    }
    
    @IBAction func followedToSIPP(_ sender: UIButton) {
        let akoij = LiSSpPersionlistPostfrbucue.init()
        akoij.tatSSipype = 1
        self.navigationController?.pushViewController(akoij, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        
        
        delertSIPP.addTarget(self, action: #selector(shanAlRemoveAccount), for: .touchUpInside)
        loagerrtSIPP.addTarget(self, action: #selector(quiteAlRemoveAccount), for: .touchUpInside)
        
        
        
        thinhXOCinbg.maskLippaRoundCorner(rMakLSSIpadius: 18)
       
        loagerrtSIPP.maskLippaRoundCorner(rMakLSSIpadius: 21)
        delertSIPP.maskLippaRoundCorner(rMakLSSIpadius: 21)
        
        owetherINfSIPP.register(LiSSpMininfoCell.self, forCellWithReuseIdentifier: "LiSSpMininfoCellID")
        owetherINfSIPP.delegate = self
        owetherINfSIPP.dataSource = self
        
        ownedSIpp.maskLippaRoundCorner(rMakLSSIpadius: 38)
    }
    
   
   @objc func shanAlRemoveAccount() {
        
       let ssipoAlera = UIAlertController(title: "Dweilyentueq cAwcecbozuvnst".oranApolWothCharrterString(), message: "Akfbtyenrw udnemlsewtgignvgn wtkhdep vabcaciojupnptr,l qaglqly eiinzfwoprkmhautrixoina urdenlladtremde vtbom rtshuen iapcbcvoouknatv rwpirlbls vbkeg lrmevmqohvmecdw!".oranApolWothCharrterString(), preferredStyle:.alert)
       let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
       labeSiop.text = self.title

       labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
       if enImageSSIPOViol.isHidden  {
           enImageSSIPOViol.addSubview(labeSiop)
       }

       labeSiop.textColor = view.backgroundColor
       ssipoAlera.addAction(UIAlertAction(title: "Sdulrne".oranApolWothCharrterString(), style: .default, handler: { ddtion in
           AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Dcevlzeptjeuixnkgp.a.z.".oranApolWothCharrterString(), loaingShowView: self.view)
           
           self.performBlockAfterDelayINSSIP(secondsSSIP: 1.0) {
               ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
               //删除存储的账号相关列表的该数据
               var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
               
               allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
               let useiIDING = LipSigggneSnmingertips.logUoserdataSSIP["ssipAccID"]
               for (ing,itemt) in allUserDataSSIP.enumerated() {
                   if itemt["ssipAccID"] == useiIDING {
                       allUserDataSSIP.remove(at: ing)
                   }
               }
               UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
               
               self.quiteAlRemoveAccount()
               AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
           }
       }))
       
       ssipoAlera.addAction(UIAlertAction(title: "Cmabnvcjeel".oranApolWothCharrterString(), style: .default))
       self.present(ssipoAlera, animated: true)
   }
    
    
    @objc func quiteAlRemoveAccount() {
        
        ssuitreatNet()
        LipSigggneSnmingertips.logUoserdataSSIP.removeAll()
        LipSigggneSnmingertips.logPucserdataSSIP = nil
       
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
    
    }
    private func ssuitreatNet() {
        UserDefaults.standard.set(nil, forKey: "siingeduserIDString")
        LiSSpMeBootomrbucue.FolsdwemeSSIP.removeAll()
        LiSSpMeBootomrbucue.facrewemeSSIP.removeAll()
      
        LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.removeAll()
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: UIScreen.main.bounds.size.width - 76, height: 58)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        13
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        minSetinggoSipp.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpMininfoCellID", for: indexPath) as! LiSSpMininfoCell
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        
        if SistertSSIp.count > 0 {
            cokiactivecell.otherAuicSIPPA.text = minSetinggoSipp[indexPath.row].0
        }
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        
        cokiactivecell.otherkuioSIPPA.image = UIImage(named: minSetinggoSipp[indexPath.row].1)
        SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
        return cokiactivecell
        
        
        
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(LiSSpWallwnetBucue.init(), animated: true)
        case 1:
            self.navigationController?.pushViewController(LiSSpPesoncenstfrbucue.init(), animated: true)
            
       
        case 2:
            let priSSIPLabe = UILabel.init()
            priSSIPLabe.text = "Lippa Privacy Policy"
            
            self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: priSSIPLabe), animated: true)
           
        case 3:
            let priSSIPLabe = UILabel.init()
            priSSIPLabe.text = "Lippa User Terms"
            
            self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: priSSIPLabe), animated: true)
        default:
            break
        }
    }
    
    
}




class LiSSpMininfoCell: UICollectionViewCell {
    let otherAuicSIPPA = UILabel.init()
    let otherkuioSIPPA = UIImageView.init()
    let otherqoSIPPA = UIImageView.init()
   
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        otherqoSIPPA.image = UIImage.init(named: "ssipNertback")
        ssuitreatNet() 
        contentView.backgroundColor = UIColor(red: 0.84, green: 0.88, blue: 0.13, alpha: 1)
        contentView.maskLippaRoundCorner(rMakLSSIpadius: 16)
        otherkuioSIPPA.snp.makeConstraints { make in
            make.width.height.equalTo(28)
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(12)
            
        }
        
        otherAuicSIPPA.snp.makeConstraints { make in
            make.left.equalTo(otherkuioSIPPA.snp.right).offset(12)
            make.centerY.equalToSuperview()
        
            
        }
        otherqoSIPPA.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.trailing.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
            
        }
    }
    private func ssuitreatNet() {
        contentView.addSubview(otherAuicSIPPA)
        contentView.addSubview(otherkuioSIPPA)
        contentView.addSubview(otherqoSIPPA)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
