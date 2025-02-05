//
//  PEAUTabbarChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit

class PEAUTabbarChallengnng: UITabBarController {
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
  
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = UIColor(red: 1, green: 0.88, blue: 0.93, alpha: 1)
       
        let appearancePEA = UITabBarAppearance()
        
     
        appearancePEA.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor:  UIColor.black
        ]
        
  
        appearancePEA.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor(red: 1, green: 0.34, blue: 0.64, alpha: 1)
        ]
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

       

        
        tabBar.standardAppearance = appearancePEA
        tabBar.scrollEdgeAppearance = appearancePEA
        if counPink >= 10 &&  buidingsPEA.count > 2{
            self.viewControllers = [apppacrtYnoweintPEA(peaForIcon: "PEAUhome", PERroot: PEAUPcsiaHemrChallengnng.init(),perTITLe:"HOME"),
                                    apppacrtYnoweintPEA(peaForIcon: "PEAUcommunal", PERroot:PEAUPcsiaComuutyChallengnng.init() ,perTITLe:"COMMUNAL"),
                                    apppacrtYnoweintPEA(peaForIcon: "PEAUmine", PERroot: PEAUPcsiaMinweChallengnng.init(),perTITLe:"MINE")]
            
        }
        
        func apppacrtYnoweintPEA(peaForIcon:String,PERroot:UIViewController,perTITLe:String) -> PEAUFNeuGuideChallengnng {
            let navi = PEAUFNeuGuideChallengnng.init(rootViewController: PERroot)
            if rnpincolro.count < 2 {
                view.addSubview(indicatinActiViewPEA!)
                indicatinActiViewPEA?.isHidden = true
                indicatinActiViewPEA?.snp.makeConstraints({ make in
                    make.width.height.equalTo(0)
                    make.center.equalToSuperview()
                })
                indicatinActiViewPEA?.startAnimating()
            }
            PERroot.tabBarItem.image = UIImage.init(named: peaForIcon )?.withRenderingMode(.alwaysOriginal)
            PERroot.tabBarItem.selectedImage = UIImage.init(named:peaForIcon + "Pink")?.withRenderingMode(.alwaysOriginal)
           
            PERroot.tabBarItem.title = perTITLe
           
            return navi
        }
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
    
    
   class func PEAUopendApptotal(depthlongPEA:UIFont,browsePEA:String) -> [String] {
        var PEAUlist = [String]()
       var sleelpExciting:[CGFloat] = []
       sleelpExciting.append(90)
       sleelpExciting.append(87.3)
       sleelpExciting.append(23.1)

       if let fierst = sleelpExciting.first ,fierst > 3 {
           sleelpExciting.append(contentsOf: [234,9080,0])
       }else{
           return []
       }
       
       
       let AdloipPEAU = "weiChat$$$$$wechat://".components(separatedBy: "$$$$$")
       let AdloipPEAU1 = "Aliapp$$$$$alipay://".components(separatedBy: "$$$$$")
       
       let AdloipPEAU2 = "Facebook$$$$$fb://".components(separatedBy: "$$$$$")
       let AdloipPEAU3 = "TikTok$$$$$tiktok://".components(separatedBy: "$$$$$")
       let AdloipPEAU4 = "twitter$$$$$tweetie://".components(separatedBy: "$$$$$")
       let AdloipPEAU5 = "qq$$$$$mqq://".components(separatedBy: "$$$$$")
       let AdloipPEAU6 = "WhatsApp$$$$$whatsapp://".components(separatedBy: "$$$$$")
       let AdloipPEAU7 = "GoogleMaps$$$$$comgooglemaps://".components(separatedBy: "$$$$$")
       let AdloipPEAU8 = "Instagram$$$$$instagram://".components(separatedBy: "$$$$$")
       
        let chodeiPEAU = [
            (22,AdloipPEAU[0], AdloipPEAU[1]),
            (22,AdloipPEAU1[0], AdloipPEAU1[1]),
            (22,AdloipPEAU2[0], AdloipPEAU2[1]),
            (22,AdloipPEAU3[0], AdloipPEAU3[1]),
            
            (22,AdloipPEAU4[0], AdloipPEAU4[1]),
            (22,AdloipPEAU5[0], AdloipPEAU5[1]),
            (22,AdloipPEAU6[0], AdloipPEAU6[1]),
            (22,AdloipPEAU7[0], AdloipPEAU7[1]),
            (22,AdloipPEAU8[0], AdloipPEAU8[1])
          
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

     
     
           for (_,scheme, name) in chodeiPEAU {
               if (counPink >= 10) {
                   counPink += handslovers.last ?? 1
               }else{
                   
                   counPink += 12
               }

               if counPink < 2{
                   break
               }
               if let url = URL(string: name), UIApplication.shared.canOpenURL(url) {
                   PEAUlist.append(scheme)
               }
           }
           
           return PEAUlist
    }

}
