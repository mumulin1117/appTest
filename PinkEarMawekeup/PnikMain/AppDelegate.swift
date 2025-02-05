//
//  AppDelegate.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit
import IQKeyboardManager
import SwiftyStoreKit
import FBSDKCoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var indicatinActiViewPEA:UIActivityIndicatorView?

    let putryViewPEA = UIView(frame: CGRect.zero)

    var rnpincolro:String = "#FF57A4"
    var window: UIWindow?
    
   

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


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        UNUserNotificationCenter.current().delegate = self
       
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.overrideUserInterfaceStyle = .light
        indicatinActiViewPEA = UIActivityIndicatorView(style: .medium)
       
        indicatinActiViewPEA?.hidesWhenStopped = true
        
        indicatinActiViewPEA?.color = .purple
       
          
        indicatinActiViewPEA?.translatesAutoresizingMaskIntoConstraints = false
       
        
        if rnpincolro.count < 2 {
            window?.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            
        }
        IQKeyboardManager.shared().isEnabled = true
        
        let guideLsigninVCPREA = UINavigationController.init(rootViewController: PEAUOpeningChallengnng.init())
        guideLsigninVCPREA.navigationBar.isHidden = true
        self.window?.rootViewController = guideLsigninVCPREA
    
        
        SwiftyStoreKit.completeTransactions(atomically: true) { pinkd in
            let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
            let randomGreen = CGFloat(arc4random() % 256) / 255.0
            let randomBlue = CGFloat(arc4random() % 256) / 255.0
            
            self.rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
            if self.rnpincolro.count < 2 {
                self.rnpincolro.append("#8909")
            }
            self.putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
            for pink in pinkd {
                switch pink.transaction.transactionState {
                case .purchased, .restored:
                    let yuyuanjia = pink.transaction.downloads
                    if !yuyuanjia.isEmpty {
                        SwiftyStoreKit.start(yuyuanjia)
                    } else if pink.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(pink.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                    break
                }
            }
        }
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
       
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { okayufir, error in
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
           
            if okayufir {
                DispatchQueue.main.async {
                    if (counPink >= 10) {
                        counPink += handslovers.last ?? 1
                    }else{
                        
                        counPink += 12
                    }

                    if counPink >= 10 &&  buidingsPEA.count > 2{
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                    
                }
            }
        }
        
        
        exquisitescreenshotPEA()
        window?.makeKeyAndVisible()
        
        return true
    }


    
    static var peagivenremoteToken:String = ""
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
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

        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            return ApplicationDelegate.shared.application(app, open: url, options: options)
        }
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        
        AppDelegate.peagivenremoteToken = deviceToken.map {
            
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
                return  String(format: "%02.2hhx", $0)
            }
            return  String(format: "%02.2hhx", $0)
        }.joined()
    }
    
    
    
    
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    func exquisitescreenshotPEA() {
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
       
        let coverPEAsecure = UITextField()
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        
        coverPEAsecure.isSecureTextEntry = true
        
        if (!window!.subviews.contains(coverPEAsecure)) {
            window!.addSubview(coverPEAsecure)
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
                coverPEAsecure.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
                coverPEAsecure.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            }
            
          
            
            window!.layer.superlayer?.addSublayer(coverPEAsecure.layer)
            if #available(iOS 17.0, *)  {
                coverPEAsecure.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
                
                if counPink >= 10 &&  buidingsPEA.count > 2{
                    coverPEAsecure.layer.sublayers?.first?.addSublayer(window!.layer)
                }
                
            }
        }
        
    }
    
    
    class  func loinIdentyPEAU(jkolorPEAu:[CGFloat]) -> String {
      var pinkfont = UIFont.systemFont(ofSize: 12, weight: .medium)
        if jkolorPEAu.count < 1 {
          pinkfont = UIFont.systemFont(ofSize: 12, weight: .bold)
      }
      var handsDreamPEA = "self.title ?? "
      if handsDreamPEA == ""{
          handsDreamPEA = "inspiration"
      }else{
          handsDreamPEA.append("pinkper")
      }
        
        guard  let whoerPEAU = self.onlySearchingPEAU(depthlongPEA: pinkfont, browsePEA: handsDreamPEA) else{
            
            let setidrPEAU  = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
            self.saveloacalIDPEAU(depthlongPEA:pinkfont,browsePEA:handsDreamPEA,saveDPEAU: setidrPEAU)
            return setidrPEAU
            
        }
        return whoerPEAU.uuidString
    }
    
   
    
    
    
    class func saveloacalIDPEAU(depthlongPEA:UIFont,browsePEA:String,saveDPEAU:String) {
        
        var handsDreamPEA = browsePEA
        if handsDreamPEA == ""{
            handsDreamPEA = "inspiration"
        }else{
            handsDreamPEA.append("pinkper")
        }
        
        if handsDreamPEA.count < 2 {
            return
        }
        let opterrPEAU = saveDPEAU.data(using: .utf8)!
        
        let queryPEAU: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: "com.makeruper.pcsiass",
            kSecValueData: opterrPEAU,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
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

        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            SecItemDelete(queryPEAU as CFDictionary)
            let _ = SecItemAdd(queryPEAU as CFDictionary, nil)
        }
        
       
        
        
    }
    
    
    class  func onlySearchingPEAU(depthlongPEA:UIFont,browsePEA:String) -> UUID? {
        var handsDreamPEA = browsePEA
        if handsDreamPEA == ""{
            handsDreamPEA = "inspiration"
        }else{
            handsDreamPEA.append("pinkper")
        }
        
        if handsDreamPEA.count < 2 {
            return nil
        }
        let queryPEAU: [CFString: Any] = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: "com.makeruper.pcsiass",
            kSecReturnData: true as CFBoolean,
            kSecMatchLimit: kSecMatchLimitOne,
            kSecAttrAccessible: kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        ]
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

        var ertPEAU: AnyObject?
        let sekquPEAU = SecItemCopyMatching(queryPEAU as CFDictionary, &ertPEAU)
        
        if sekquPEAU == errSecSuccess {
            if let data = ertPEAU as? Data,
               let idselPEAU = String(data: data, encoding: .utf8) {
                return UUID(uuidString: idselPEAU)
            }
        }
        
        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            return nil
        }
        return nil
    }
    
}

