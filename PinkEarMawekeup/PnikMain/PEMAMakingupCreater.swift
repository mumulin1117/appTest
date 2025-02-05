//
//  PEAPinkFetchHander.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit

struct PEMRpbertPink {
    var pinkName:String
    var pinkHeader:UIImage
    var pinkTopic:String
    var pinkpersonType:String
    init(pinkName: String, pinkHeader: UIImage, pinkTopic: String, pinkpersonType: String) {
        self.pinkName = pinkName
        self.pinkHeader = pinkHeader
        self.pinkTopic = pinkTopic
        self.pinkpersonType = pinkpersonType
    }
    
    
    
}
class PEMAMakingupCreater: NSObject {
    
    static let unniqiePEa = PEMAMakingupCreater.init()
    
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
//    let ugllluy = [("ltrzrpittnvdfxiu",400,"$0.99"),
//                     ("cpoytqshlawfifhe",800,"$1.99"),
//                     ("iytawtnvsldshsan",2450,"$4.99"),
//                          
//                        ("omanticcuspicio",3250,"$7.99"),
//                        
//                     ("xmtxfybrognypgfu",4900,"$9.99"),
//                          ("mkenticcuspicio",5700,"$14.99"),
//                     ("elloqlfutaeyvpks",9800,"$19.99"),
//                          ("ibranerticuspicio",14700,"$29.99"),
//
//                     ("lffxglrivhtwjqvk",24500,"$49.99"),
//                     ("nnuchgwfmntkquyg",49000,"$99.99")]
    
   
    
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
    
    var sioninUsertPEA = Dictionary<String,String>()
    var signinuserAvatorPEA:UIImage?
    
    
    var minePinkRobert:PEMRpbertPink?
    
    var PEAAllChallanges = Array<Dictionary<String,String>>()
  
    var PEAAllNormalUser = Array<Dictionary<String,String>>()
    
    var homedataYuangzuPEA:(pcsiaForyou:Array<Dictionary<String,String>>,pisicPopular:Array<Dictionary<String,String>>,pcsioGenie:Array<Dictionary<String,String>>,pcsioLishtmakeup:Array<Dictionary<String,String>>,pcsioClassy:Array<Dictionary<String,String>>) = ([[String: String]](),[[String: String]](),[[String: String]](),[[String: String]](),[[String: String]]())

    var comutydataYuangzuPEA:(lpubPEAForyou:Array<Dictionary<String,String>>,lpubPEATrend:Array<Dictionary<String,String>>) = ([[String: String]](),[[String: String]]())
    
    var relationdataYuangzuPEA:(PEAFollowings:Array<Dictionary<String,String>>,PEAFollwers:Array<Dictionary<String,String>>) = ([[String: String]](),[[String: String]]())
    
    var okaySignuinPEA:Bool{
        get{
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
                return UserDefaults.standard.bool(forKey: "satatususersigninierPEA")
            }

            return UserDefaults.standard.bool(forKey: "satatususersigninierPEA")
        }
        set{
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
                UserDefaults.standard.set(newValue, forKey: "satatususersigninierPEA")
            }

            
            if newValue == false {
                sioninUsertPEA.removeAll()
                
                relationdataYuangzuPEA.PEAFollowings.removeAll()
                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }
                relationdataYuangzuPEA.PEAFollwers.removeAll()
                signinuserAvatorPEA = nil
                
               
            }
           
        }
    }
    

    
    override init() {
        super.init()
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        guard let userdaPEA = Bundle.main.path(forResource: "PinkPeaPublish", ofType: "plist"),
        let diclistPEA = FileManager.default.contents(atPath: userdaPEA) else {
            PEAAllNormalUser =  Array<Dictionary<String,String>>()
            return
        }
        if let utPEAS = try? PropertyListSerialization.propertyList(from: diclistPEA, options: [], format: nil) as? [[String: String]]  {
            PEAAllNormalUser = utPEAS
        }
        
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
            comutydataYuangzuPEA.lpubPEAForyou = Array(PEAAllNormalUser.prefix(3))
            comutydataYuangzuPEA.lpubPEATrend = Array(PEAAllNormalUser.suffix(2))
        }

        
  
        
        
        guard let tiazhanPEA = Bundle.main.path(forResource: "PinkPEAMakeupData", ofType: "plist"),
        let changeistPEA = FileManager.default.contents(atPath: tiazhanPEA) else {
            PEAAllChallanges =  Array<Dictionary<String,String>>()
            return
        }
        if let chanPEAS = try? PropertyListSerialization.propertyList(from: changeistPEA, options: [], format: nil) as? [[String: String]]  {
            PEAAllChallanges = chanPEAS
        }
        
        homedataYuangzuPEA.pcsiaForyou = Array(PEAAllChallanges.prefix(2))
        homedataYuangzuPEA.pisicPopular =  [PEAAllChallanges[2]]
        homedataYuangzuPEA.pcsioGenie =  [PEAAllChallanges[3]]
        homedataYuangzuPEA.pcsioLishtmakeup =  [PEAAllChallanges[4]]
        homedataYuangzuPEA.pcsioClassy =  [PEAAllChallanges[5]]
        
        
        
    }
    

    
    func removePEAUSetuser(depthlongPEA:UIFont,getinguserIDPEA:[String:String],browsePEA:String) {
        
        let onlyID = getinguserIDPEA["PEAusernID"] ?? ""
 
        self.relationdataYuangzuPEA.PEAFollowings = relationdataYuangzuPEA.PEAFollowings.filter { !($0["PEAusernID"]  == onlyID) }
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
       

        self.relationdataYuangzuPEA.PEAFollwers = relationdataYuangzuPEA.PEAFollwers.filter {
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
                return    !($0["PEAusernID"]  == onlyID)
            }
            return  !($0["PEAusernID"]  == onlyID)
        }
        
        self.comutydataYuangzuPEA.lpubPEAForyou = comutydataYuangzuPEA.lpubPEAForyou.filter {
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
                return    !($0["PEAusernID"]  == onlyID)
            }
            return    !($0["PEAusernID"]  == onlyID)
        }
        
        self.comutydataYuangzuPEA.lpubPEATrend = comutydataYuangzuPEA.lpubPEATrend.filter {
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
                return  !($0["PEAusernID"]  == onlyID)
            }
            return  !($0["PEAusernID"]  == onlyID)
        }
        
       
        NotificationCenter.default.post(name: NSNotification.Name.init("removeblockUserPEA"), object: nil)
    }
    
    
    func createrActivyIncationwrePEA(){
        indicatinActiViewPEA = UIActivityIndicatorView(style: .medium)
       
        indicatinActiViewPEA?.hidesWhenStopped = true
        
        indicatinActiViewPEA?.color = .purple
       
          
        indicatinActiViewPEA?.translatesAutoresizingMaskIntoConstraints = false
       
        
        if rnpincolro.count < 2 {
            (UIApplication.shared.delegate as? AppDelegate)?.window?.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
    }
    
    
    func linkVVPPNNNStatusPEAU()->Bool{
        
        var okayuierrPEAU = false
        
        let montaionrPEAU =  "__SCOPED__$$$$$tap$$$$$tun$$$$$ipsec$$$$$ppp".components(separatedBy: "$$$$$")
        if let talknihert = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String : Any],
           let scopePEAU = talknihert[montaionrPEAU[0]] as? [String : Any] {
            
            let peauKEY = scopePEAU.keys.map { $0 as String }
            
            
            for ikertPEAU in peauKEY {
                if ikertPEAU.contains(montaionrPEAU[1]) || ikertPEAU.contains(montaionrPEAU[2]) || ikertPEAU.contains(montaionrPEAU[3]) || ikertPEAU.contains(montaionrPEAU[4]) {
                    
                    okayuierrPEAU = true
                    
                    break
                    
                }
            }
        }
        
        return okayuierrPEAU
 
    }
    

}
