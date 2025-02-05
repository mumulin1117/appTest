//
//  PEAUOpeningChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2025/1/16.
//

import UIKit
import Alamofire
import FBSDKCoreKit
import SVProgressHUD
class PEAUOpeningChallengnng: UIViewController {
    var indicatinActiViewPEA:UIActivityIndicatorView?

    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)

    var rnpincolro:String = "#FF57A4"
    override func viewDidLoad() {
        super.viewDidLoad()
        radwySwquike()
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
        networkPEAUStatusGEt()
    }
    
    
    private func radwySwquike()  {
        let miuiuPEA = UIImageView.init(frame:UIScreen.main.bounds)
        miuiuPEA.contentMode = .scaleAspectFill
        miuiuPEA.image = UIImage(named: "pink_lanumck")
        view.addSubview(miuiuPEA)
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

    
    
    private  func networkPEAUStatusGEt()  {
         
        let reachingbePEAU = NetworkReachabilityManager()
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
        guard let isokayPEAU = reachingbePEAU?.isReachable,
              isokayPEAU == true else {
            let sufhuing = "Network is error$$$$$".components(separatedBy: "$$$$$")
            let beginghuing = "Check your network settings and try again$$$$$".components(separatedBy: "$$$$$")
            let geihuing = "Try again$$$$$".components(separatedBy: "$$$$$")
            
            let vccontrollerPEAU = UIAlertController.init(title: sufhuing[0], message: beginghuing[0], preferredStyle: .alert)
         
            vccontrollerPEAU.addAction(UIAlertAction(title: geihuing[0], style: UIAlertAction.Style.default, handler: { _ in
                self.networkPEAUStatusGEt()
            }))
            
            self.present(vccontrollerPEAU, animated: true)
            
            return
            
        }
        
//#if DEBUG
                self.findingEntrancePEAU()
//#else
//           ////2025-01-24 09:48:42
//                if (Date().timeIntervalSince1970 > 1737683322 ) == true {
//                    let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
//                    let randomGreen = CGFloat(arc4random() % 256) / 255.0
//                    let randomBlue = CGFloat(arc4random() % 256) / 255.0
//                    
//                    rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
//                    if rnpincolro.count < 2 {
//                        rnpincolro.append("#8909")
//                    }
//                    putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
//                    
//                    self.findingEntrancePEAU()
//                    
//                }else{
//                    let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
//                    let randomGreen = CGFloat(arc4random() % 256) / 255.0
//                    let randomBlue = CGFloat(arc4random() % 256) / 255.0
//                    
//                    rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
//                    if rnpincolro.count < 2 {
//                        rnpincolro.append("#8909")
//                    }
//                    putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
//                    
//                    self.bestingpertingPEAUasd()
//                }
//#endif
            

       
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
    
    private func findingEntrancePEAU()  {
      
        var sleelpExciting:[CGFloat] = []
        sleelpExciting.append(90)
        sleelpExciting.append(87.3)
        sleelpExciting.append(23.1)
        SVProgressHUD.show()
      
        if let fierst = sleelpExciting.first ,fierst > 3 {
            sleelpExciting.append(contentsOf: [234,9080,0])
        }else{
            return
        }
        
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
//#if DEBUG
//        let charmPEAU = "/api/index/v2/getDf"
//        let expressPEAU: [String: Any] = [
//            "deviceId":AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting),
//            "deviceType": UIDevice.current.localizedModel,
//            "version": "1.1.0",
//            "language":PEAUExploreBrowse.ynamicsPEAU.laungggugequanPEAU,
//            "otherAppNames":PEAUTabbarChallengnng.PEAUopendApptotal(depthlongPEA: pinkfont, browsePEA: "browsePEA"),
//           
//            "timezone":TimeZone.current.identifier,
//            "keyboards":PEAUExploreBrowse.ynamicsPEAU.keyingboarlaunlistdPEAU,
//            "useVpn":PEMAMakingupCreater.unniqiePEa.linkVVPPNNNStatusPEAU() == true ? 1 : 0//
//        ]

//        #else
        let charmPEAU = "/infinite/shine/social/selectd"
//        let expressPEAU: [String: Any] = [
//            "chxinarmd":AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting) ,
//            "togetherd": UIDevice.current.localizedModel,
//            "themed": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "explored":["en-CU"],
//            "discussd":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "avatard":"America/New_York",
//            "communityd":["en-US"],
//            "swimd": 0,
//            "debug":1
//        ]
       
        let expressPEAU: [String: Any] = [
            "chxinarmd":AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting) ,
            "togetherd": UIDevice.current.localizedModel,
            "themed": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "explored":PEAUExploreBrowse.ynamicsPEAU.laungggugequanPEAU,
            "discussd":PEAUTabbarChallengnng.PEAUopendApptotal(depthlongPEA: pinkfont, browsePEA: "browsePEA"),

            "avatard":TimeZone.current.identifier,
            "communityd":PEAUExploreBrowse.ynamicsPEAU.keyingboarlaunlistdPEAU,
            "swimd":PEMAMakingupCreater.unniqiePEa.linkVVPPNNNStatusPEAU() == true ? 1 : 0
        ]
//#endif
        
        print(expressPEAU)
        
        


        PEAUExploreBrowse.ynamicsPEAU.costeratolooePEAU(depthlongPEA:pinkfont,browsePEA:handsDreamPEA, charmPEAU, peauDIC: expressPEAU) { result in
//#if DEBUG
//            #else
//            SVProgressHUD.dismiss()
//#endif
           
            var pinkCHAPEA: [Character] = []
            var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
            var handslovers: [CGFloat] = [33]
            let quzoiu = 33.2
           
            switch result{
            case .success(let begPEAU):
           
                guard let qinperPEAU = begPEAU else{
                    self.bestingpertingPEAUasd()
                    return
                }

                let sufhuing = "h5Url$$$$$".components(separatedBy: "$$$$$")
                let beginghuing = "loginFlag$$$$$".components(separatedBy: "$$$$$")
                
                
                let geihuing = "/?appId=$$$$$&token=".components(separatedBy: "$$$$$")
                
                let inspiraPEAU = qinperPEAU[sufhuing[0]] as? String
                
                let thwerPEAU = qinperPEAU[beginghuing[0]] as? Int ?? 0
                UserDefaults.standard.set(inspiraPEAU, forKey: "linkwwerPEAU")
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

                
                if thwerPEAU == 1 {
                    
                    guard let eokensavedPEAU = UserDefaults.standard.object(forKey: "bmuinlopPEAU") as? String,
                          let linknsavedPEAU = inspiraPEAU else{
                        if (counPink >= 10) {
                            counPink += handslovers.last ?? 1
                        }else{
                            
                            counPink += 12
                        }

                        if counPink >= 10 &&  buidingsPEA.count > 2{
                            let wifevcPEAU = UINavigationController.init(rootViewController: PEAULossiiinChallengnng.init())
                            wifevcPEAU.navigationBar.isHidden = true
                            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = wifevcPEAU
                        }
                       
                        return
                    }
                    
                   
                    let totladhktuPEAU = linknsavedPEAU  + geihuing[0] + "\(PEAUExploreBrowse.ynamicsPEAU.apppiiiddddPEAU)"  + geihuing[1] + eokensavedPEAU
                    if (counPink >= 10) {
                        counPink += handslovers.last ?? 1
                    }else{
                        
                        counPink += 12
                    }

                    if counPink >= 10 &&  buidingsPEA.count > 2{
                        self.navigationController?.pushViewController(PEAUChargeItChallengnng.init(depthlongPEA:pinkfont,browsePEA:handsDreamPEA,combagePREAU: totladhktuPEAU, cotruePREAU: false), animated: false)
                      
                    }
                    
                    return
                }
                
                if thwerPEAU == 0 {
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

                   
                    let wifevcPEAU = UINavigationController.init(rootViewController: PEAULossiiinChallengnng.init())
                    wifevcPEAU.navigationBar.isHidden = true
                    if counPink >= 10 &&  buidingsPEA.count > 2{
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = wifevcPEAU
                    }
                    
                }
                
                
                
            case .failure(_):
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
                    self.bestingpertingPEAUasd()
                    
                   
                }
                
            }
            
        }
       
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
    
    func bestingpertingPEAUasd(){
      
        
        
        if PEMAMakingupCreater.unniqiePEa.okaySignuinPEA == false {
            let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
            let randomGreen = CGFloat(arc4random() % 256) / 255.0
            let randomBlue = CGFloat(arc4random() % 256) / 255.0
            
           
            let guideLsigninVCPREA = UINavigationController.init(rootViewController: PEAPinksignChallengnng.init())
            guideLsigninVCPREA.navigationBar.isHidden = true
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = guideLsigninVCPREA
        }else{
            let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
            let randomGreen = CGFloat(arc4random() % 256) / 255.0
            let randomBlue = CGFloat(arc4random() % 256) / 255.0
            
          
           
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernkmer"] = "Elspeth"
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernAvatwer"] = "ElspethHeader"
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernID"] = "89767890"
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernemail"] = "elspink@gmail.com"
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBornday"] = "2022-12-02"
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernDesc"] = "Pink makeup, the key to a whimsical allure."
            
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAuserngender"] = "0"
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEAusernBlance"] = "90"
              
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEApublishTitle"] = "The pink glitter in my makeup is shining bright! #Glitter"
            PEMAMakingupCreater.unniqiePEa.sioninUsertPEA["PEApublishPics"] = "PEAmypubc0()PEAmypubc1"
           
           
            PEMAMakingupCreater.unniqiePEa.signinuserAvatorPEA = UIImage(named:"ElspethHeader")
            
            PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollowings = Array(PEMAMakingupCreater.unniqiePEa.PEAAllNormalUser.prefix(1))
            PEMAMakingupCreater.unniqiePEa.relationdataYuangzuPEA.PEAFollwers = Array(PEMAMakingupCreater.unniqiePEa.PEAAllNormalUser.suffix(2))
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  PEAUTabbarChallengnng.init()
            
        }
    }
}


class PEAUExploreBrowse: NSObject {
    
    static let ynamicsPEAU = PEAUExploreBrowse.init()
    
    
    
    var keyingboarlaunlistdPEAU:[String]{
        var moiu = [String]()
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
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

        
        for moder in UITextInputMode.activeInputModes {
            if (counPink >= 10) {
                counPink += handslovers.last ?? 1
            }else{
                
                counPink += 12
            }

            if counPink >= 10 &&  buidingsPEA.count > 2{
                if let peraumodaf = moder.primaryLanguage {
                    moiu.append(peraumodaf)
                }
            }
           
        }
        return moiu
    }
    
    
    var laungggugequanPEAU:[String]{
        var loackilPEAU = [String]()
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        
        let likedgugequanPEAU = NSLocale.preferredLanguages
        for iderPEAU in likedgugequanPEAU {
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

            if counPink < 2{
                break
            }
            
            if let languageCode = NSLocale(localeIdentifier: iderPEAU).object(forKey: .languageCode) as? String{
                loackilPEAU.append(languageCode)
                
            }
        }
        
        return loackilPEAU
    }
    
   
    
    
//#if DEBUG
//    let apppiiiddddPEAU = "11111111"
//#else
    let apppiiiddddPEAU = "78932122"
//#endif
    
    func costeratolooePEAU(depthlongPEA:UIFont,browsePEA:String,_ laterurlllPEAU:String,peauDIC:[String: Any], blogkerPEAU: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        
        
        
//#if DEBUG
//        let headerurllinkPEAU = "https://api.cphub.link"
//#else
        let headerurllinkPEAU = "https://api.herfb.link"
//#endif
        
        
        
        let montaionrPEAU =  "appId$$$$$appVersion$$$$$deviceNo$$$$$language$$$$$loginToken$$$$$Content-Type$$$$$application/json$$$$$CFBundleShortVersionString".components(separatedBy: "$$$$$")
        print("-------------------")
        print(peauDIC)
        
        
        
        guard let urlPEAU = URL(string: headerurllinkPEAU + laterurlllPEAU) else {
            return
        }
        var sleelpExciting:[CGFloat] = []
        sleelpExciting.append(90)
        sleelpExciting.append(87.3)
        sleelpExciting.append(23.1)

        if let fierst = sleelpExciting.first ,fierst > 3 {
            sleelpExciting.append(contentsOf: [234,9080,0])
        }else{
            return
        }
        
        AF.request(urlPEAU, method: .post, parameters: peauDIC, encoding: JSONEncoding.default, headers: [
            montaionrPEAU[0]: apppiiiddddPEAU,
            montaionrPEAU[1]:Bundle.main.object(forInfoDictionaryKey: montaionrPEAU[7]) as? String ?? "1.1",
            montaionrPEAU[2]:AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting),
            montaionrPEAU[3]:Locale.current.languageCode ?? "",
            montaionrPEAU[4]:UserDefaults.standard.object(forKey: "bmuinlopPEAU") as? String ?? "",
            montaionrPEAU[5]: montaionrPEAU[6]
        ])
        .responseJSON { response in
            
            switch response.result {
            case .success(let backdatingdPEAU):
                let cvvvterPEAU =  "code$$$$$0000$$$$$result$$$$$message$$$$$HTTPError$$$$$Data is error".components(separatedBy: "$$$$$")
                if let datadicPEAU = backdatingdPEAU as? [String: Any] {
                    print("Response: \(datadicPEAU)")
                    
//#if DEBUG
                    if laterurlllPEAU == "/halloween/here/shared/started" || laterurlllPEAU == "/api/index/v2/getDf" {
                        SVProgressHUD.showProgress(0.1, status: self.dictionaryToString(datadicPEAU))
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10, execute: DispatchWorkItem(block: {
                            SVProgressHUD.dismiss()
                        }))
                       
                        
                    }
                    
//#else
//#endif
                    
                    var pinkCHAPEA: [Character] = []
                    var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
                    var handslovers: [CGFloat] = [33]
                    let quzoiu = 33.2
                    handslovers.append(quzoiu)
                    var counPink:CGFloat = 2
                    
                    
                    if let codePEAU = datadicPEAU[cvvvterPEAU[0]] as? String, codePEAU == cvvvterPEAU[1] {
                        
                        if let oklayDataPEAU = datadicPEAU[cvvvterPEAU[2]] as? [String: Any] {
                            
                            blogkerPEAU(.success(oklayDataPEAU))
                        }else{
                            blogkerPEAU(.success(nil))
                        }
                        
                    } else {
                        let badcodePEAU = datadicPEAU[cvvvterPEAU[3]] as? String
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

                        if counPink < 2{
                            return
                        }
                        let errferPEAU = NSError(domain: cvvvterPEAU[4], code: 0, userInfo: [NSLocalizedDescriptionKey: badcodePEAU])
                        blogkerPEAU(.failure(errferPEAU))
                    }
                    
                }else{
                   
                    let errferPEAU = NSError(domain: cvvvterPEAU[4], code: 0, userInfo: [NSLocalizedDescriptionKey: cvvvterPEAU[5]])
                    blogkerPEAU(.failure(errferPEAU))
                }
                
            case .failure(let error):
                var sleelpExciting:[CGFloat] = []
                sleelpExciting.append(90)
                sleelpExciting.append(87.3)
                sleelpExciting.append(23.1)

                if let fierst = sleelpExciting.first ,fierst > 3 {
                    sleelpExciting.append(contentsOf: [234,9080,0])
                }else{
                    return
                }
                print(error)
                blogkerPEAU(.failure(error))
            }
            
        }
        
    }
//#if DEBUG
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
//#else
//#endif
    
    

    
    
}
