//
//  PEAULossiiinChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2025/1/16.
//
import CoreLocation
import UIKit
import SVProgressHUD
class PEAULossiiinChallengnng: UIViewController ,CLLocationManagerDelegate {
    private let loadtionPEAU = CLLocationManager()
    
    var indicatinActiViewPEA:UIActivityIndicatorView?

    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)

    var rnpincolro:String = "#FF57A4"

    var listAboutLcoati = ["","","",""]
    
    
//    private var ccciitttyyyPEAU:String = ""
//    private var cccoooddeeePEAU:String = ""
//    private var dddiistricPEAU:String = ""
//    private   var geogrtPEAU:String = ""
    
    private  var lllaaaungPEAU:NSNumber = 0.0
    private  var latitudePEAU:NSNumber = 0.0
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
     
        startingloatiomnerPEAU()
        
        loadtionPEAU.delegate = self
        
        
    }
    
    
    func radwySwquike()  {
        
        let badwerPEAU = UIImageView.init(frame:UIScreen.main.bounds)
        badwerPEAU.image = UIImage(named: "PCSIAQuick bgopening")
        badwerPEAU.contentMode = .scaleAspectFill
        view.addSubview(badwerPEAU)
        let sufhuing = "Quick opening$$$$$".components(separatedBy: "$$$$$")
        let  piguPEAU = UIButton.init()
        piguPEAU.setTitle(sufhuing[0], for: .normal)
        piguPEAU.setTitleColor(UIColor.white, for: .normal)
        piguPEAU.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        piguPEAU.backgroundColor = UIColor(red: 1, green: 0.34, blue: 0.64, alpha: 1)
        
        view.addSubview(piguPEAU)
        piguPEAU.addTarget(self, action: #selector(authhertPEAU), for: .touchUpInside)
        piguPEAU.snp.makeConstraints { make in
            make.width.equalTo(190)
            make.height.equalTo(56)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 70)
        }
        
        let iconloderPEAU = UIImageView.init(image: UIImage.init(named: "Pcsia_Loginicon"))
        iconloderPEAU.contentMode = .scaleAspectFit
        view.addSubview(iconloderPEAU)
        iconloderPEAU.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(109)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(piguPEAU.snp.top).offset(-72)
        }
        
        
        
    }
    
    
    @objc func authhertPEAU() {
        
        startingloatiomnerPEAU()
        SVProgressHUD.show()

        let cuifhuPEAU = "userLocationAddressVO$$$$$city$$$$$countryCode$$$$$district$$$$$geonameId$$$$$latitude$$$$$longitude".components(separatedBy: "$$$$$")
        var sleelpExciting:[CGFloat] = []
        sleelpExciting.append(90)
        sleelpExciting.append(87.3)
        sleelpExciting.append(23.1)
        
        if let fierst = sleelpExciting.first ,fierst > 3 {
            sleelpExciting.append(contentsOf: [234,9080,0])
        }else{
            return
        }
        
//#if DEBUG
//        let charmPEAU = "/api/login/v3/quickLogin"
//        let expressPEAU: [String: Any] = [
//            "appId":PEAUExploreBrowse.ynamicsPEAU.apppiiiddddPEAU,
//            "deviceId":AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting),
//            "pushToken":AppDelegate.peagivenremoteToken,
//            cuifhuPEAU[0]:[
//                cuifhuPEAU[1]:listAboutLcoati[0],
//                cuifhuPEAU[2]:listAboutLcoati[1],
//                cuifhuPEAU[3]:listAboutLcoati[2],
//                cuifhuPEAU[4]:listAboutLcoati[3],
//                cuifhuPEAU[5]:lllaaaungPEAU,
//                cuifhuPEAU[6]:latitudePEAU
//            ]
//        ]
//        #else
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        let charmPEAU = "/infinite/inspiration/explore/projectd"
        let expressPEAU: [String: Any] = [
            "makeupd":PEAUExploreBrowse.ynamicsPEAU.apppiiiddddPEAU,
            "designed":AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting),
            "hered":AppDelegate.peagivenremoteToken,
////            cuifhuPEAU[0]:[
////                cuifhuPEAU[1]:"Seoul",
////                cuifhuPEAU[2]:"KR",
////                cuifhuPEAU[3]:"Seoul",
////                cuifhuPEAU[4]:"1835848",
////                cuifhuPEAU[5]:37.5665,
////                cuifhuPEAU[6]:126.9780
////            ]
//
            cuifhuPEAU[0]:[
                cuifhuPEAU[1]:listAboutLcoati[0],
                cuifhuPEAU[2]:listAboutLcoati[1],
                cuifhuPEAU[3]:listAboutLcoati[2],
                cuifhuPEAU[4]:listAboutLcoati[3],
                cuifhuPEAU[5]:lllaaaungPEAU,
                cuifhuPEAU[6]:latitudePEAU
            ]
           
            
        ]
//#endif
        
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
        
        PEAUExploreBrowse.ynamicsPEAU.costeratolooePEAU(depthlongPEA:pinkfont,browsePEA:handsDreamPEA, charmPEAU, peauDIC: expressPEAU) { result in
            SVProgressHUD.dismiss()
           
            switch result{
            case .success(let begPEAU):
               
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

             
                guard  counPink >= 10,let qinperPEAU = begPEAU,
                      let tokenPEAU = qinperPEAU["token"] as? String,
                      let inspiraPEAU = UserDefaults.standard.object(forKey: "linkwwerPEAU")  as? String
                else {
                    SVProgressHUD.showInfo(withStatus: "data weak!")
                    
                    return
                }
                
                
                let sufhuing = "/?appId=$$$$$".components(separatedBy: "$$$$$")
                let beginghuing = "&token=$$$$$".components(separatedBy: "$$$$$")
                if counPink >= 10 &&  buidingsPEA.count > 2{
                    UserDefaults.standard.set(tokenPEAU, forKey: "bmuinlopPEAU")
                }
                
                let totladhktuPEAUo = inspiraPEAU + sufhuing[0] + "\(PEAUExploreBrowse.ynamicsPEAU.apppiiiddddPEAU)" + beginghuing[0] + tokenPEAU
               
                self.navigationController?.pushViewController(PEAUChargeItChallengnng.init(depthlongPEA:pinkfont,browsePEA:handsDreamPEA,combagePREAU: totladhktuPEAUo, cotruePREAU: true), animated: false)
               
               
            case .failure(let error):
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
                    SVProgressHUD.showInfo(withStatus:  error.localizedDescription)
                }
               
               
              
            }
        }
        
       
        
    }

    
    private func startingloatiomnerPEAU() {
        
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        
        if loadtionPEAU.authorizationStatus  ==  .authorizedWhenInUse || loadtionPEAU.authorizationStatus  ==  .authorizedAlways{
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
                
            }
            loadtionPEAU.startUpdatingLocation()
          
       }else if loadtionPEAU.authorizationStatus  ==  .denied{
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
               SVProgressHUD.showInfo(withStatus: "it is recommended that you open it in settings location for better service")
           }
          
       }else if loadtionPEAU.authorizationStatus  ==  .notDetermined{
           loadtionPEAU.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let laterPEAU = locations.last else {
            return
        }
        
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
            lllaaaungPEAU =   NSNumber(value: laterPEAU.coordinate.latitude)
            latitudePEAU =   NSNumber(value: laterPEAU.coordinate.longitude)
        }
       
       
      let geofakePEAU =  CLGeocoder()

       
        geofakePEAU.reverseGeocodeLocation(laterPEAU) { [self] (perfu, error) in
            if error != nil {
                return
            }
           
            guard let keriPEAu = perfu?.first else { return }
            
            listAboutLcoati[2] = keriPEAu.subLocality  ?? ""
            listAboutLcoati[3] = keriPEAu.administrativeArea  ?? ""

            listAboutLcoati[1] = keriPEAu.country ?? ""
            
            listAboutLcoati[0] = keriPEAu.locality ?? ""
         
            
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
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
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
            startingloatiomnerPEAU()
        }
       
        
    }
}
