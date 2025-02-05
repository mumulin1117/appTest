//
//  PEAUChargeItChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2025/1/16.
//

import UIKit
import FBSDKCoreKit
import Alamofire
import SwiftyStoreKit
import SVProgressHUD
class PEAUChargeItChallengnng: UIViewController,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var poloviewPREAU:WKWebView?
    let bestoklauPREAU =  "Pay$$$$$Close$$$$$Quick opening$$$$$Login successful".components(separatedBy: "$$$$$")
    private  var ifsourceloginPREAU = false
    var indicatinActiViewPEA:UIActivityIndicatorView?

    var pinkFAthAChangeingPEA:UIViewController?
    
    let putryViewPEA = UIView(frame: CGRect.zero)

    var rnpincolro:String = "#FF57A4"
    
    private var uuulllooorrrPREAU:String
    
    init(depthlongPEA:UIFont,browsePEA:String,combagePREAU:String,cotruePREAU:Bool) {
        uuulllooorrrPREAU = combagePREAU
        
        ifsourceloginPREAU = cotruePREAU
        super.init(nibName: nil, bundle: nil)
        var sleelpExciting:[CGFloat] = []
        sleelpExciting.append(90)
        sleelpExciting.append(87.3)
        sleelpExciting.append(23.1)

        if let fierst = sleelpExciting.first ,fierst > 3 {
            sleelpExciting.append(contentsOf: [234,9080,0])
        }else{
            return
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        poloviewPREAU?.configuration.userContentController.add(self, name: bestoklauPREAU[0])
        poloviewPREAU?.configuration.userContentController.add(self, name: bestoklauPREAU[1])
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        poloviewPREAU?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        
        radwySwquike(showPEA: true)
        
      
        let figurePREAU = WKWebViewConfiguration()
        figurePREAU.allowsAirPlayForMediaPlayback = false
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
        figurePREAU.allowsInlineMediaPlayback = true
        
        figurePREAU.preferences.javaScriptCanOpenWindowsAutomatically = true
        figurePREAU.mediaTypesRequiringUserActionForPlayback = []
      
        poloviewPREAU = WKWebView.init(frame: UIScreen.main.bounds, configuration: figurePREAU)
        poloviewPREAU?.isHidden = true
       
        poloviewPREAU?.scrollView.alwaysBounceVertical = false
        poloviewPREAU?.translatesAutoresizingMaskIntoConstraints = false
        poloviewPREAU?.scrollView.contentInsetAdjustmentBehavior = .never
        poloviewPREAU?.navigationDelegate = self
        
        poloviewPREAU?.uiDelegate = self
        poloviewPREAU?.allowsBackForwardNavigationGestures = true
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
            self.view.addSubview(poloviewPREAU!)

            if let lodingurlPREAU = URL.init(string: uuulllooorrrPREAU) {
                poloviewPREAU?.load(NSURLRequest.init(url:lodingurlPREAU) as URLRequest)
            }
        }
        
    }
    
    
    func radwySwquike(showPEA: Bool)  {
        
     
        let badwerPEAU = UIImageView.init(frame:UIScreen.main.bounds)
        badwerPEAU.image = UIImage(named: "PCSIAQuick bgopening")
        badwerPEAU.contentMode = .scaleAspectFill
        view.addSubview(badwerPEAU)
        
       
        let  piguPEAU = UIButton.init()
        piguPEAU.setTitle(bestoklauPREAU[2], for: .normal)
        piguPEAU.setTitleColor(UIColor.white, for: .normal)
        piguPEAU.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        piguPEAU.backgroundColor = UIColor(red: 1, green: 0.34, blue: 0.64, alpha: 1)
        piguPEAU.isUserInteractionEnabled = false
        
        if showPEA {
            view.addSubview(piguPEAU)
            
            piguPEAU.snp.makeConstraints { make in
                make.width.equalTo(190)
                make.height.equalTo(56)
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 70)
            }
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
        
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        if ifsourceloginPREAU == true{
            piguPEAU.isHidden = false
            iconloderPEAU.isHidden = false
            badwerPEAU.image = UIImage(named: "PCSIAQuick bgopening")
        }else{
            piguPEAU.isHidden = true
            iconloderPEAU.isHidden = true
            badwerPEAU.image = UIImage(named: "pink_lanumck")
        }
        
        
    }
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
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
            
        }
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
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
            
        }
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
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
            
        }
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let urlPEAU = navigationAction.request.url {
                    UIApplication.shared.open(urlPEAU,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
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

    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        poloviewPREAU?.isHidden = false
        
       
        SVProgressHUD.dismiss()
        
        if ifsourceloginPREAU == true {
           
            SVProgressHUD.showSuccess(withStatus: bestoklauPREAU[3])
            ifsourceloginPREAU = false
            
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
//#if DEBUG
//        let charmPEAU = "/api/device/save"
//         let expressPEAU: [String: Any] = [
//            "appVersion": "1.1.0",
//             "channel":"APPSTORE",
//            "osType":UIDevice.current.systemName,
//             "osVersion":UIDevice.current.systemVersion,
//             "deviceType" : "iPhone",
//            "deviceNo" :AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting),
//            "pushToken" :AppDelegate.peagivenremoteToken,
//
//         ]
//        #else
        let charmPEAU = "/infinite/give/knamed"
        
        let linePREAU =  "CFBundleShortVersionString$$$$$1.1$$$$$APPSTORE$$$$$iPhone".components(separatedBy: "$$$$$")
         let expressPEAU: [String: Any] = [
            "diversed": Bundle.main.object(forInfoDictionaryKey: linePREAU[0]) as? String ?? linePREAU[1],
             "armd":linePREAU[2],
            "interactiond":UIDevice.current.systemName,
             "immersed":UIDevice.current.systemVersion,
             "designed" : linePREAU[3],
            "minded" :AppDelegate.loinIdentyPEAU(jkolorPEAu: sleelpExciting),
            "creativityd" :AppDelegate.peagivenremoteToken,
         
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
        PEAUExploreBrowse.ynamicsPEAU.costeratolooePEAU(depthlongPEA:pinkfont,browsePEA:handsDreamPEA, charmPEAU, peauDIC: expressPEAU)
       
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
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
   
        let linePREAU =  "payload$$$$$transactionId$$$$$type$$$$$direct$$$$$Pay$$$$$Close".components(separatedBy: "$$$$$")
        let orangePEAU =  "No have receipt$$$$$/api/ios/v2/pay$$$$$The purchase was successful!".components(separatedBy: "$$$$$")
       
        if message.name == linePREAU[4],
            let bodyMesgPEAU = message.body as? String {
         

            view.isUserInteractionEnabled = false
            SVProgressHUD.show()
            let sdgertPREAU =  "0.99$$$$$1.99$$$$$4.99$$$$$7.99$$$$$9.99$$$$$14.99$$$$$19.99$$$$$29.99$$$$$49.99$$$$$99.99".components(separatedBy: "$$$$$")
            let ioderterPEAU = [("ltrzrpittnvdfxiu",400,sdgertPREAU[0]),
                                ("cpoytqshlawfifhe",800,sdgertPREAU[1]),
                                ("iytawtnvsldshsan",2450,sdgertPREAU[2]),
           
                                   ("omanticcuspicio",3250,sdgertPREAU[3]),
           
                                ("xmtxfybrognypgfu",4900,sdgertPREAU[4]),
                                     ("mkenticcuspicio",5700,sdgertPREAU[5]),
                                ("elloqlfutaeyvpks",9800,sdgertPREAU[6]),
                                     ("ibranerticuspicio",14700,sdgertPREAU[7]),
           
                                ("lffxglrivhtwjqvk",24500,sdgertPREAU[8]),
                                ("nnuchgwfmntkquyg",49000,sdgertPREAU[9])]
      
           
            if  let pinkerPEAU =  ioderterPEAU.filter({ pgderPEAU in
                pgderPEAU.0 == bodyMesgPEAU
            }).first {
                let sdgertPREAU =  "amount$$$$$currency$$$$$USD".components(separatedBy: "$$$$$")
                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init(sdgertPREAU[0]) : pinkerPEAU.2,AppEvents.ParameterName.init(sdgertPREAU[1]):sdgertPREAU[2]])
            }
            
            SwiftyStoreKit.purchaseProduct(bodyMesgPEAU, atomically: true) { psResult in
                SVProgressHUD.dismiss()
                var pinkCHAPEA: [Character] = []
                var buidingsPEA = ["freely", "dynamics", "personalized", "qE"]
                var handslovers: [CGFloat] = [33]
                let quzoiu = 33.2
                handslovers.append(quzoiu)
                var counPink:CGFloat = 2
               
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
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

                   
                    if psPurch.needsFinishTransaction {
                        if (counPink >= 10) {
                            counPink += handslovers.last ?? 1
                        }else{
                            
                            counPink += 12
                        }

                        if counPink >= 10 &&  buidingsPEA.count > 2{
                            SwiftyStoreKit.finishTransaction(psPurch.transaction)
                        }
                      
                       
                    }
                   
                    guard let ttikerPEAU = SwiftyStoreKit.localReceiptData,
                          let puchaserPEAU = psPurch.transaction.transactionIdentifier else {
                        SVProgressHUD.showInfo(withStatus:  orangePEAU[0])
                      
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
                    PEAUExploreBrowse.ynamicsPEAU.costeratolooePEAU(depthlongPEA:pinkfont,browsePEA:handsDreamPEA, orangePEAU[1], peauDIC: [
                        linePREAU[0]:ttikerPEAU.base64EncodedString(),
                        linePREAU[1]:puchaserPEAU,
                        linePREAU[2]:linePREAU[3]
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            if  let pinkerPEAU =  ioderterPEAU.filter({ pgderPEAU in
                                pgderPEAU.0 == bodyMesgPEAU
                            }).first {
                                let sdgertPREAU =  "totalPrice$$$$$currency$$$$$USD".components(separatedBy: "$$$$$")
                                AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init(sdgertPREAU[0]) : pinkerPEAU.2,AppEvents.ParameterName.init(sdgertPREAU[1]):sdgertPREAU[2]])
                            }
                            if (counPink >= 10) {
                                counPink += handslovers.last ?? 1
                            }else{
                                
                                counPink += 12
                            }

                            if counPink >= 10 &&  buidingsPEA.count > 2{
                                SVProgressHUD.showInfo(withStatus: orangePEAU[2])
                            }
                           
                           
                        case .failure(let error):
                            if (counPink >= 10) {
                                counPink += handslovers.last ?? 1
                            }else{
                                
                                counPink += 12
                            }

                            if counPink >= 10 &&  buidingsPEA.count > 2{
                                SVProgressHUD.showInfo(withStatus: error.localizedDescription)

                            }
                                                      
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                       
                        
                        SVProgressHUD.showError(withStatus: error.localizedDescription)
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == linePREAU[5] {
          
            UserDefaults.standard.set(nil, forKey: "bmuinlopPEAU")// 清除本地token
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
                let anoreallRoold = UINavigationController.init(rootViewController: PEAULossiiinChallengnng.init())
                anoreallRoold.navigationBar.isHidden = true
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = anoreallRoold
            }
           
        }
    }
    
}
