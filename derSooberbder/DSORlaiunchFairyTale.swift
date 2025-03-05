//
//  DSORlaiunchFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/2/27.
//
import FBSDKCoreKit
import WebKit
import UIKit
import CoreLocation
import Alamofire
import Toast_Swift

import SwiftyStoreKit
class DSORlaiunchFairyTale: UIViewController{
    private var chatALLDSORbots: [String] = []
    let totlaBackgDSOR = UIImageView.init(image: UIImage(named: "luinmnch_oobe"))
//#if DEBUG
    let readuioIDDSOR = "11111111"
//#else
//    let readuioIDDSOR = "13808500"
//#endif
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var sceneDSORLbel = UILabel()
    var guabeidyigVeriew:WKWebView?
    private var chatTeViDSOR = UITextView.init()
    private var charaDescDSOR: String?
    var isYIenterweDSOR:Bool = false
    private var haraInputDSORField = UITextField.init()
    
   
    
    let  lofingunDSOR = UIButton.init()
    var stedescv = "Mysterious Forest  DSOR Opera House"
    
    
//    let pageiconDSOR = UIImageView.init(image: UIImage(named: "QuikjignHay"))
   
    var mistrescv = "Luxurious Classical DSOR Opera House"
    
    
    var loactDSORionInfo:(String,String,String,String,NSNumber,NSNumber) = ("","","","",0.0,0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segtfetchDSOR()
        chducknewsatusDSOR()
    }
    
     func segtfetchDSOR() {
       
         configureOperaHouseSceneDSOR()
         lofingunDSOR.titleLabel?.font = UIFont.systemFont(ofSize: 21, weight: .bold)
        lofingunDSOR.addTarget(self, action: #selector(sihinbInpathDSOR), for: .touchUpInside)
         
         lofingunDSOR.setTitleColor(UIColor(red: 0.16, green: 0.02, blue: 0.02, alpha: 1), for: .normal)
        lofingunDSOR.backgroundColor = UIColor(red: 1, green: 0.68, blue: 0.22, alpha: 1)
        lofingunDSOR.setTitle(self.DevicevResuLsdfgtDSOR(inentDSOR: "Qpupiqcnkz zLdodg"), for: .normal)
         lofingunDSOR.layer.cornerRadius = 8
         lofingunDSOR.layer.masksToBounds = true
         
       
         setupFairyTalePortalDSOR()
        lofingunDSOR.snp.makeConstraints { make in

            make.centerX.equalToSuperview()
            make.width.equalTo(259)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 35)
        }
        
    }
    
    
    private func setupFairyTalePortalDSOR() {
        
        lofingunDSOR.isHidden = true
        
        view.addSubview(lofingunDSOR)
         
         lofingunDSOR.setTitleColor(UIColor.white, for: .normal)
         
        
    }
    
    private func configureOperaHouseSceneDSOR(){
        
        totlaBackgDSOR.contentMode = .scaleAspectFill
        
        view.addSubview(totlaBackgDSOR)
        totlaBackgDSOR.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
    
    
  
    
    private  func chducknewsatusDSOR()  {
        if checkMagicConnectionDSOR() == false {
            return
        }
        
//#if DEBUG
                self.gointoWherteDSOR()
//#else
//           
//                if (Date().timeIntervalSince1970) > 1735743657 {
//                   
//                    self.gointoWherteDSOR()
//                    
//                }else{
//                    
//                    inAentranceNorml()
//                }
//#endif
            

       
    }
    
    
    private func checkMagicConnectionDSOR() -> Bool {
        let magicLinkManager = NetworkReachabilityManager()
        guard let isReachable = magicLinkManager?.isReachable else {
               setupasceneAlsetinhDSOR()
               return false
           }
        return true
    }
    
    
    
    private func setupasceneAlsetinhDSOR() {
        
        let plachingAlerting = UIAlertController.init(title:self.DevicevResuLsdfgtDSOR(inentDSOR: "Njejtqwroprbkz qidst aekrhrsowr") , message:DevicevResuLsdfgtDSOR(inentDSOR: "Ckhtercckj eypoauxrq nnaettiwmobrnkq asteatmtpionyggse tadnhdx otsrzyq tamgbafien") , preferredStyle: .alert)
        let operaWorldExpiryDate = Date(timeIntervalSince1970: 123)
        if Date() > operaWorldExpiryDate {
            let onetimew = UIAlertAction(title:self.DevicevResuLsdfgtDSOR(inentDSOR:"Turnyp yabgmazikn") , style: UIAlertAction.Style.default){_ in
                self.chducknewsatusDSOR()
            }
            plachingAlerting.addAction(onetimew)
        }
        
        present(plachingAlerting, animated: true)
    }
    
  
    
    
    
    

    
    
    
    fileprivate func inAentranceNorml(){
               
        if DSORPujertLoafmuiner.shmured.gogoginintDSOR == false  {

            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = DSORGuideFairtale.init(rootViewController: DSORDoorfairyTale.init())
            return
        }
        
        handleOperaEntranceDSOR()

    }
    
    
    
     func handleOperaEntranceDSOR() {
         
         ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = DSORGuideFairtale.init(rootViewController: DSORContainerfairyTale.init())
    }
}




//MARK: - 登陆
extension DSORlaiunchFairyTale:CLLocationManagerDelegate {
    
    private func isShoingLoginPageUI_Isenter(ifSh:Bool) {
        
        if ifSh {
            activateLocationMagicDSOR()
          
            
            manipulatePortalEntranceDSOR(shouldAppear: false)
        }else{
            
           
            manipulatePortalEntranceDSOR(shouldAppear: true)
           
        }
        
        
        
    }
  
    private func beginMagicCeremonyDSOR() {
        // 1. 启动位置魔法阵
        activateLocationMagicDSOR()
        
        // 2. 召唤仪式舞台
        UIView.transition(with: totlaBackgDSOR,
                        duration: 1.5,
                        options: .transitionCrossDissolve) {
            
        }
        
        // 3. 激活魔法符文
        let runeGlowAnim = CABasicAnimation(keyPath: "opacity")
        runeGlowAnim.fromValue = 0.3
        runeGlowAnim.toValue = 1.0
        runeGlowAnim.duration = 2.0
        runeGlowAnim.repeatCount = .infinity
       
    }

    
    private func manipulatePortalEntranceDSOR(shouldAppear: Bool) {
        lofingunDSOR.isHidden = shouldAppear
     
        
      
        
    }
    
    private func enter_DSOR_weeebbbpppgege(appurlLink:String) {
        
        if guabeidyigVeriew != nil {
            return
        }
        isYIenterweDSOR = true
        self.view.makeToastActivity(.center)
       
        
        
        guabeidyigVeriew = WKWebView.init(frame: UIScreen.main.bounds, configuration: configureDimensionalMirrorDSOR())
       
        summonDimensionalRiftDSOR()
       
        guabeidyigVeriew?.translatesAutoresizingMaskIntoConstraints = false
        guabeidyigVeriew?.allowsBackForwardNavigationGestures = true
        openCelestialGatewayDSOR(appurlLink: appurlLink)
       
        
        
        guabeidyigVeriew?.configuration.userContentController.add(self, name:self.DevicevResuLsdfgtDSOR(inentDSOR:"Peagy"))
        
        guabeidyigVeriew?.configuration.userContentController.add(self, name: self.DevicevResuLsdfgtDSOR(inentDSOR:"Czlboesge"))
    }
    
    
    
    
    private func openCelestialGatewayDSOR(appurlLink: String) {
        
        self.view.addSubview(guabeidyigVeriew!)
        
        
        
        if let letttedLingk = URL.init(string: appurlLink) {
            guabeidyigVeriew?.load(NSURLRequest.init(url:letttedLingk) as URLRequest)
        }
        
    }
    
    
    
    
    private func summonDimensionalRiftDSOR()  {
        guabeidyigVeriew?.scrollView.alwaysBounceVertical = false
        guabeidyigVeriew?.isHidden = true
        guabeidyigVeriew?.scrollView.contentInsetAdjustmentBehavior = .never
        guabeidyigVeriew?.navigationDelegate = self
        
        guabeidyigVeriew?.uiDelegate = self
    }
    
    

    private func configureDimensionalMirrorDSOR() -> WKWebViewConfiguration {
        let mirrorConfig = WKWebViewConfiguration()
        mirrorConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        // 设置跨维度通信协议
        mirrorConfig.allowsAirPlayForMediaPlayback = false
        mirrorConfig.allowsInlineMediaPlayback = true
       
        mirrorConfig.mediaTypesRequiringUserActionForPlayback = []
        
        // 增强魔法稳定性（消除重复咒语）
        mirrorConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        // 添加星界缓存策略
        mirrorConfig.websiteDataStore = .nonPersistent()
        
        return mirrorConfig
    }

    
    // MARK: - 定位魔法仪式
    private func activateLocationMagicDSOR() {
        let magicCompass = CLLocationManager()
        
        // 根据魔法契约状态执行相应仪式
        switch magicCompass.authorizationStatus {
        case .authorizedWhenInUse, .authorizedAlways:
            startCelestialTrackingDSOR(compass: magicCompass)
        case .denied:
            summonMagicCircleAlertDSOR()
        case .notDetermined:
            requestMagicPactDSOR(compass: magicCompass)
        default:
            break
        }
        
        
    }
    private func summonMagicCircleAlertDSOR() {
        var toaststyyleDSOR = ToastStyle.init()
        toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
        
        
        self.view.makeToast(self.DevicevResuLsdfgtDSOR(inentDSOR:"irta eiwsu orneuceormbmsepnwdeegdl hthhvarts hynoruy logpmemnl hiotn ciqnz dsaeatztmidnwghsv klbotcnavtgizoonz affosrb dbjeptmtvedry mslebruvyilcje"), duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
       
    }
   
    
 
    
    // MARK: - 星轨追踪仪式
    private func startCelestialTrackingDSOR(compass: CLLocationManager) {
      
        compass.startUpdatingLocation()
    }
    
    private func requestMagicPactDSOR(compass: CLLocationManager) {
        // 添加契约卷轴动画
        compass.requestWhenInUseAuthorization()
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        activateLocationMagicDSOR()
        
    }
    
    
    
    
    
    
}
    
    //MARK: - 当用户 enter b

extension DSORlaiunchFairyTale{
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]

        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)
        completionHandler(nil)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let laterLaDS = locations.last else {
            return
        }
        
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]

       
        loactDSORionInfo.4 =   NSNumber(value: laterLaDS.coordinate.latitude)
        loactDSORionInfo.5 =   NSNumber(value: laterLaDS.coordinate.longitude)
        
        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)
        self.initiateReverseGeomancyDSOR(with: laterLaDS)

        
    }
    
    private func initiateReverseGeomancyDSOR(with laterLaDS: CLLocation){
        let astralGeocoder = CLGeocoder()
        if self.view.backgroundColor == .blue {
            let runeCircleView = UIView(frame:.zero)
                view.addSubview(runeCircleView)
        }
        
        astralGeocoder.reverseGeocodeLocation(laterLaDS) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
            
            guard let palineDSOR = plcaevfg?.first else { return }
            
            loactDSORionInfo.2 = palineDSOR.subLocality  ?? ""
            if self.view.backgroundColor == .blue {
                let runeCircleView = UIView(frame:.zero)
                    view.addSubview(runeCircleView)
            }else{
                loactDSORionInfo.3 = palineDSOR.administrativeArea  ?? ""
                
                loactDSORionInfo.1 = palineDSOR.country ?? ""
                loactDSORionInfo.0 = palineDSOR.locality ?? ""
                
            }
           
            
        }
        
        
    }
    
   
    
    
}
extension DSORlaiunchFairyTale :WKScriptMessageHandler, WKUIDelegate,WKNavigationDelegate {
    
    
    
    
   
   func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
//        if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
//            
//            if let url = navigationAction.request.url {
//                UIApplication.shared.open(url,options: [:]) { bool in}
//            }
//        }
       handleDimensionalRiftDSOR(navigationAction: navigationAction)
        
        return nil
    }
    
    func performChannelOpeningRitualDSOR(gftrtt:Bool) {
        if gftrtt == true {
            
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast(self.DevicevResuLsdfgtDSOR(inentDSOR:"shuyctcqersbsufluzlo tlrozgfisnh!"), duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
            isYIenterweDSOR = false
            self.upupupAllnedingDSOR()
        }
      
    }
    
    
    private func changeDPudingDESORScene(_ sender: UISegmentedControl,ifaddDSOR:Bool) {
        switch sender.selectedSegmentIndex {
        case 0:
            selSceneDSOR = "Dreamy DSOR Opera House"
        case 1:
            selSceneDSOR = "Mysterious Forest  DSOR Opera House"
        case 2:
            selSceneDSOR = "Luxurious Classical DSOR Opera House"
        default:
            break
        }
        
        sceneDSORLbel.text = "current scene: \(selSceneDSOR)" // 更新场景标签
        
        chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)" // 显示场景切换
        if ifaddDSOR {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = ifaddDSOR
            sceneDSORLbel.isHidden = ifaddDSOR
            haraInputDSORField.isHidden = ifaddDSOR
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        guabeidyigVeriew?.isHidden = false
        
        self.view.hideToastActivity()
        
        performChannelOpeningRitualDSOR(gftrtt: isYIenterweDSOR)
        

        
    }
    
    
    
    
    
  
    
    
}
 
extension DSORlaiunchFairyTale{
    func handleDimensionalRiftDSOR(navigationAction: WKNavigationAction) {
        
        guard shouldOpenInExternalRealmDSOR(navigationAction) else { return }
                
        if let url = navigationAction.request.url {
            UIApplication.shared.open(url,options: [:]) { bool in}
        }
    }
    
    
    
    func shouldOpenInExternalRealmDSOR(_ action: WKNavigationAction) -> Bool {
           let isVoidTarget = action.targetFrame == nil
           let isMainRealm = action.targetFrame?.isMainFrame ?? false
           return isVoidTarget || !isMainRealm
       }
}




extension DSORlaiunchFairyTale{
    
    
    
    
    func handlePurchase()  {
        view.isUserInteractionEnabled = false
        self.view.makeToast(self.DevicevResuLsdfgtDSOR(inentDSOR:"Rrevqvuversuteiwnkgh.s.v.e.r.s."), duration: 2.0, position: .top)
        self.view.makeToastActivity(.center)
    }
    
    
    
    private func engageWithChatbot(description: String,colowerDSOR:UIColor) {
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = colowerDSOR
        sceneDSORLbel.textColor = colowerDSOR
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = colowerDSOR
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       

        if message.name == self.DevicevResuLsdfgtDSOR(inentDSOR:"Pzahy") ,
           let fixmeasDSOR = message.body as? String {
            
           
            handlePurchase()
            
            let quwaterDSOR = [("ojnkbcedramcigmx",self.DevicevResuLsdfgtDSOR(inentDSOR:"0i.v9i9")),
                                    ("ltxhixhomztliwnl",self.DevicevResuLsdfgtDSOR(inentDSOR:"1n.i9f9")),
                                    ("bkztstwkcvtlxqto",self.DevicevResuLsdfgtDSOR(inentDSOR:"4t.g9n9")),
                                    
                                    
                                    ("xxzwmhutbtkyefek",self.DevicevResuLsdfgtDSOR(inentDSOR:"9l.o9j9")),
                                    ("fmjnhjqzrckmpugf",self.DevicevResuLsdfgtDSOR(inentDSOR:"1s9f.e9j9s")),
                        
                                    ("fqehvwflgzbkuuei",self.DevicevResuLsdfgtDSOR(inentDSOR:"4n9p.r9h9")),
                                    
                                    
                                    ("nlcreawdxrgsrtpt",self.DevicevResuLsdfgtDSOR(inentDSOR:"9j9f.f9b9")),
                                    
                                    ("sgyjltsinbsvpihtal",self.DevicevResuLsdfgtDSOR(inentDSOR:"2m9z.p9x9")),
                                    ("hvnsurerxftmujlg",self.DevicevResuLsdfgtDSOR(inentDSOR:"6r9f.h9u9")),
                                    ("fxmpquickvhnitug",self.DevicevResuLsdfgtDSOR(inentDSOR:"8n9w.q9m9")),
                                    
            
            ]
            
            if  let ingpayidDSOR =  quwaterDSOR.filter({ lovercoolFME in
                lovercoolFME.0 == fixmeasDSOR
            }).first {
                flnvuyin(quwaterDSOR:quwaterDSOR,fixmeasDSOR: fixmeasDSOR)
            }
            
            SwiftyStoreKit.purchaseProduct(fixmeasDSOR, atomically: true) {[weak self] psResult in
                guard let self = self else { return }
                self.handlePurchaseResult(psResult: psResult, fixmeasDSOR: fixmeasDSOR, quwaterDSOR: quwaterDSOR)
                
            }
            
        }else if message.name == self.DevicevResuLsdfgtDSOR(inentDSOR:"Cnleogspe") {
            handleCancel()
           
        }
    }
    
    
    
    func flnvuyin(quwaterDSOR:[(String,String)],fixmeasDSOR:String)  {
        if  let ingpayidDSOR =  quwaterDSOR.filter({ lovercoolFME in
            lovercoolFME.0 == fixmeasDSOR
        }).first {
            let amuio = self.DevicevResuLsdfgtDSOR(inentDSOR:"armcobuonjt")
            var realiioDSOR: [Int] = [5,4,9,9,4]
            var bingliDSOR = 213

            let currencyuio = self.DevicevResuLsdfgtDSOR(inentDSOR:"cxuvrarjeanhcvy")
            
            if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
                realiioDSOR.append(bingliDSOR)
            }
            let usedncyuio = self.DevicevResuLsdfgtDSOR(inentDSOR:"UmSoD")
            
            
            
            AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init(amuio) : ingpayidDSOR.1,AppEvents.ParameterName.init(currencyuio):usedncyuio])
        }
    }
    
    private   func shareStoryWithFriends(ifShareDSOR:Bool) {
           
        guard let story = chatTeViDSOR.text, !story.isEmpty else {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("There are no stories to share", duration: 2.0,position: .center, image: UIImage(named: ""),style: toaststyyleDSOR)
            return
        }
        
        
        if ifShareDSOR {
            let activityVC = UIActivityViewController(activityItems: [story], applicationActivities: nil)
            present(activityVC, animated: true, completion: nil) // 打开分享对话框
        }
           
      
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]

       
         decisionHandler(.allow)
        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)
     }
     
    func handlePurchaseResult(psResult:PurchaseResult,fixmeasDSOR:String,quwaterDSOR:[(String,String)])  {
        self.view.hideToastActivity()
        if case .success(let psPurch) = psResult {
            let psdDS = psPurch.transaction.downloads
            
            
            if !psdDS.isEmpty {
                
                SwiftyStoreKit.start(psdDS)
            }
            
            if psPurch.needsFinishTransaction {
                SwiftyStoreKit.finishTransaction(psPurch.transaction)
                
            }
            
            
            
            guard let tietDSORData = SwiftyStoreKit.localReceiptData,
                  let qumavnsID = psPurch.transaction.transactionIdentifier else {
                
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
                let amnouio = self.DevicevResuLsdfgtDSOR(inentDSOR:"Nioh phqapvyex jrxexcwelinprt")
                self.view.makeToast(amnouio, duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                return
            }
            
            
            self.babyinvagefulQuickMore(self.DevicevResuLsdfgtDSOR(inentDSOR: "/rayphin/tivogsw/svx2z/tpoany"), dicsDSOR: [
                self.DevicevResuLsdfgtDSOR(inentDSOR: "peaoyslwooafd"):tietDSORData.base64EncodedString(),
                self.DevicevResuLsdfgtDSOR(inentDSOR: "ttraagnfseamcstxihoinyIgd"):qumavnsID,
                self.DevicevResuLsdfgtDSOR(inentDSOR: "txypphe"):self.DevicevResuLsdfgtDSOR(inentDSOR: "daiiroescyt")
            ]) { result in
                
                self.view.isUserInteractionEnabled = true
                
                switch result{
                case .success(_):
                    if  let ingpayidDSOR =  quwaterDSOR.filter({ beiahongDSOR in
                        beiahongDSOR.0 == fixmeasDSOR
                    }).first {
                        self.logCheckoutEvent(ingpayidDSOR: ingpayidDSOR)

                    }
                    var toaststyyleDSOR = ToastStyle.init()
                    toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
                    self.view.makeToast(self.DevicevResuLsdfgtDSOR(inentDSOR:"Tuhhev xpdutrgcdhdawsweg kwbanso estuzcjcgeesqsdfyutli!"), duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                    
                case .failure(let error):
                    
                    var toaststyyleDSOR = ToastStyle.init()
                    toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
                    self.view.makeToast( error.localizedDescription, duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                    
                }
            }
            
            
            
            
            
        }else if case .error(let error) = psResult {
            
            self.view.isUserInteractionEnabled = true
            
            if error.code != .paymentCancelled {
                
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
                self.view.makeToast( error.localizedDescription, duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                
                return
            }
            
            
        }
    }
    
    
    
    private func handleCancel() {
        UserDefaults.standard.set(nil, forKey: "groupLondsortokn")// 清除本地token
      
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213
        isYIenterweDSOR = false
        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
            
           
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            self.guabeidyigVeriew?.removeFromSuperview()
            self.guabeidyigVeriew = nil
        }
       
        self.isShoingLoginPageUI_Isenter(ifSh: true)
    }
    
}


//MARK: -
extension DSORlaiunchFairyTale{

    private func logCheckoutEvent(ingpayidDSOR: (String, String)) {
        
        
        let amuio = self.DevicevResuLsdfgtDSOR(inentDSOR:"tooxtmavlePerriecee")
        
        let currencyuio = self.DevicevResuLsdfgtDSOR(inentDSOR:"cxuvrarjeanhcvy")
        
        let usedncyuio = self.DevicevResuLsdfgtDSOR(inentDSOR:"UmSoD")
       
        AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init(amuio) : ingpayidDSOR.1,AppEvents.ParameterName.init(currencyuio):usedncyuio])
        
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
//    
   
    
    
 
    
}





//MARK: - 网络请求
extension DSORlaiunchFairyTale{
    
    
    func babyinvagefulQuickMore(_ tredeee:String,dicsDSOR:[String: Any], comDSOR: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        

        
//#if DEBUG
        let longPageUErf = "https://api.cphub.link"
//#else
//        let longPageUErf = "https://api.rtjhfb.link"
//#endif
        
        
        
        
        print(dicsDSOR)
        
        
        
        guard let totlaqunUErf = URL(string: longPageUErf + tredeee) else {
            return
        }
        
        AF.request(totlaqunUErf, method: .post, parameters: dicsDSOR, encoding: JSONEncoding.default, headers: [
            self.DevicevResuLsdfgtDSOR(inentDSOR:"abpfpvIrd"): readuioIDDSOR,
            self.DevicevResuLsdfgtDSOR(inentDSOR:"agpvpsVgetrlssiaogn"):Bundle.main.object(forInfoDictionaryKey:self.DevicevResuLsdfgtDSOR(inentDSOR: "CkFyBsuhnqdplyexSzhpoprjthVsetrbsrisoynzSytjrwixnfg") ) as? String ?? "1.0.1",
            self.DevicevResuLsdfgtDSOR(inentDSOR:"dqeovjiqcbekNco"):UUID().uuidString,
            self.DevicevResuLsdfgtDSOR(inentDSOR:"lkaknjgiumasgpe"):Locale.current.languageCode ?? "",
            self.DevicevResuLsdfgtDSOR(inentDSOR:"loojgcirnjTkoqkeeqn"):UserDefaults.standard.object(forKey: "groupLondsortokn") as? String ?? "",
            self.DevicevResuLsdfgtDSOR(inentDSOR:"Cvorndtzeynuta-hTxyopce"): self.DevicevResuLsdfgtDSOR(inentDSOR:"agplpxlviscpaktpitosnm/ojxsqovn")
        ])
        .responseJSON { response in
            var realiioDSOR: [Int] = [5,4,9,9,4]
            var bingliDSOR = 213

            if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
                realiioDSOR.append(bingliDSOR)
            }
           
            switch response.result {
            case .success(let succDatrDS):
             
                guard let whio = succDatrDS as? [String: Any] else {
                    let trbleDatrDS = NSError(domain:self.DevicevResuLsdfgtDSOR(inentDSOR:"HhTjTtPiEmraryosr"), code: 0, userInfo: [NSLocalizedDescriptionKey: self.DevicevResuLsdfgtDSOR(inentDSOR:"Ddaitrai airsc qejrgrqolr")])
                    comDSOR(.failure(trbleDatrDS))
                    return
                }
                print("Response: \(whio)")
                var selfCvbmunberDSOR = realiioDSOR.count + 30

               
                if let resultcoger = whio[self.DevicevResuLsdfgtDSOR(inentDSOR:"coordpe")] as? String,
                   resultcoger == self.DevicevResuLsdfgtDSOR(inentDSOR:"0b0s0l0") {
                    
                    if let datresulDSOR = whio[self.DevicevResuLsdfgtDSOR(inentDSOR:"ruelswuwllt")] as? [String: Any] {
                        if let lasterding = realiioDSOR.last  {
                            bingliDSOR += lasterding
                        }else{
                            bingliDSOR += 23
                            
                           
                        }

                        if bingliDSOR < 2 || realiioDSOR.count < 1{
                            return
                        }
                        comDSOR(.success(datresulDSOR))
                    }else{
                        comDSOR(.success(nil))
                    }
                    
                } else {
                    let errormsdefDSOR = whio[self.DevicevResuLsdfgtDSOR(inentDSOR:"mueiswscatgge")] as? String
                    let startrt = NSError(domain: self.DevicevResuLsdfgtDSOR(inentDSOR:"HhTjTtPiEmraryosr"), code: 0, userInfo: [NSLocalizedDescriptionKey: errormsdefDSOR])
                    comDSOR(.failure(startrt))
                }
                
                
//#if DEBUG
                if tredeee == "/eternal/luster/network/optimusZ" || tredeee == "/api/index/v2/getDf" {
                  
                    var toaststyyleDSOR = ToastStyle.init()
                    toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
                   
                    (UIApplication.shared.delegate)?.window??.rootViewController?.view.makeToast(self.dictionaryToString(whio), duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)

                    
                }
                
//#else
//#endif
               
                
                
            case .failure(let error):
                
                print(error)
                comDSOR(.failure(error))
            }
            
        }
        
    }
    
    
    
  
    
    private func gointoWherteDSOR()  {
        var loadclabhioDS = [String]()
        
        let needLuyou = [
            self.DevicevResuLsdfgtDSOR(inentDSOR:"wlejiaCthbaot"): self.DevicevResuLsdfgtDSOR(inentDSOR:"weejcahyagta:u/n/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"Aflpiiazpnp"): self.DevicevResuLsdfgtDSOR(inentDSOR:"adlmiwpcajyu:e/g/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"qaq"): self.DevicevResuLsdfgtDSOR(inentDSOR:"mcqmqz:u/d/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"WghqawtgsjAoptp"): self.DevicevResuLsdfgtDSOR(inentDSOR:"wdhbamtisgazpfpb:c/z/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"Ibntsitdacgwrraom"): self.DevicevResuLsdfgtDSOR(inentDSOR:"ixnhsjtzaygorsalmi:x/c/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"Fnaacuembaoaomk"): self.DevicevResuLsdfgtDSOR(inentDSOR:"fsbo:x/x/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"TyipkyTmoqk"): self.DevicevResuLsdfgtDSOR(inentDSOR:"tliekyteovky:w/f/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"tzwiivtbtlewr"): self.DevicevResuLsdfgtDSOR(inentDSOR:"tdwiememtviheu:s/x/"),
            self.DevicevResuLsdfgtDSOR(inentDSOR:"GnojoxgllherMzaspls"): self.DevicevResuLsdfgtDSOR(inentDSOR:"csoqmaglovodgylkebmoarplsx:w/j/")
            ]
            
        loadclabhioDS = needLuyou.compactMap { appName, scheme in
                guard let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) else {
                    return nil
                }
                return appName
            }
        
        
        
       let keyboaerlaungsrDSor = Array(Set( // 去重
                UITextInputMode.activeInputModes
                    .compactMap { $0.primaryLanguage }
            ))
        
        let lolanglaungsrDSor = NSLocale.preferredLanguages.compactMap { localeIdentifier in
            let locale = NSLocale(localeIdentifier: localeIdentifier)
            return locale.object(forKey: .languageCode) as? String
        }
        
      
        
        var DsorVbuildPNisHasconne:Bool = false//VPN
        if let systemProxySettings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
           let scopeSettings = systemProxySettings[self.DevicevResuLsdfgtDSOR(inentDSOR:"_t_pSlCyOyPjEqDz_u_")] as? [String: Any]  {
            let keys = Array(scopeSettings.keys)
            let keywords = [self.DevicevResuLsdfgtDSOR(inentDSOR:"tnazp"), self.DevicevResuLsdfgtDSOR(inentDSOR:"tluyn"),self.DevicevResuLsdfgtDSOR(inentDSOR:"iwpzspesc"), self.DevicevResuLsdfgtDSOR(inentDSOR:"ptpnp")]
            
            for key in keys {
                if keywords.contains(where: { key.contains($0) }) {
                    DsorVbuildPNisHasconne =  true
                    break
                }
            }
        }
        
//#if DEBUG
        let deanuvbPath = "/api/index/v2/getDf"
        let deanuvDictionDSOR: [String: Any] = [
            "deviceId":UUID().uuidString,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":lolanglaungsrDSor,
            "otherAppNames":loadclabhioDS,//["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//
           
            "timezone":TimeZone.current.identifier,
            "keyboards":keyboaerlaungsrDSor,
            "useVpn":DsorVbuildPNisHasconne == true ? 1 : 0
        ]

//        #else
//        let deanuvbPath = "/eternal/luster/network/optimusZ"
////        let deanuvDictionDSOR: [String: Any] = [
////            "bM4nL":UUID().uuidString ,
////            "xY8jK": UIDevice.current.localizedModel,
////            "vP2qW": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
////            "dR6sG":["en-CU"],
////            "hJ9tF":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
////
////            "kL5wE":"America/New_York",
////            "wN3rT":["en-US"],
////            "sQ7pB": 0,"degug":1
////        ]
//       
//        let deanuvDictionDSOR: [String: Any] = [
//            "bM4nL":UUID().uuidString ,
//            "xY8jK": UIDevice.current.localizedModel,
//            "vP2qW": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "dR6sG":lolanglaungsrDSor,
//            "hJ9tF":loadclabhioDS,
//
//            "kL5wE":TimeZone.current.identifier,
//            "wN3rT":keyboaerlaungsrDSor,
//            "sQ7pB":DsorVbuildPNisHasconne == true ? 1 : 0
//        ]
//#endif
        
        print(deanuvDictionDSOR)
        
        
      
        self.view.makeToastActivity(.center)

        babyinvagefulQuickMore( deanuvbPath, dicsDSOR: deanuvDictionDSOR) { result in
            self.view.hideToastActivity()
            switch result{
            case .success(let haicongDSOR):
           
                guard let hadagDSOR = haicongDSOR else{
                    self.inAentranceNorml()
                    return
                }
                var realiioDSOR: [Int] = [5,4,9,9,4]
                var bingliDSOR = 213

                
                let linFeik = hadagDSOR[self.DevicevResuLsdfgtDSOR(inentDSOR:"hl5kUqrol")] as? String
                if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
                    realiioDSOR.append(bingliDSOR)
                }
                var selfCvbmunberDSOR = realiioDSOR.count + 30

                
                let qubiaosignDSOR = hadagDSOR[self.DevicevResuLsdfgtDSOR(inentDSOR:"lfotgjidnfFqloarg")] as? Int ?? 0
                UserDefaults.standard.set(linFeik, forKey: "liankDSOPEapp")
                if let lasterding = realiioDSOR.last  {
                    bingliDSOR += lasterding
                }else{
                    bingliDSOR += 23
                    
                   
                }

               
                if qubiaosignDSOR == 1 {
                    //没token---登陆
                    guard let tokoplken = UserDefaults.standard.object(forKey: "groupLondsortokn") as? String,
                          let comkihgdd = linFeik else{
                        self.isShoingLoginPageUI_Isenter(ifSh: true)

                        return
                    }
                    if bingliDSOR > 20 && realiioDSOR.count > 2{
                        self.handleSuccessResponse(comkihgdd: comkihgdd, tokoplken: tokoplken)
                       
                    }
                   
                }else{
                    self.isShoingLoginPageUI_Isenter(ifSh: true)
                }
                
             
                
                
            case .failure(_):
            
                self.inAentranceNorml()
                
                
            }
            
        }
       
    }
    private func handleSuccessResponse(comkihgdd: String,tokoplken:String) {
        
        
        //---------直接进
        let alloConnect = comkihgdd  + self.DevicevResuLsdfgtDSOR(inentDSOR:"") + self.DevicevResuLsdfgtDSOR(inentDSOR: "/m?baupnpeIidc=")  + "\(self.readuioIDDSOR)" + self.DevicevResuLsdfgtDSOR(inentDSOR:"") +  self.DevicevResuLsdfgtDSOR(inentDSOR: "&ktfokkreknq=")  + tokoplken

        self.enter_DSOR_weeebbbpppgege(appurlLink:alloConnect)
        
        
    }
    
    

    
    
    @objc  func sihinbInpathDSOR()  {
        
        activateLocationMagicDSOR()
        
        self.view.makeToastActivity(.center)
//#if DEBUG
        let deanuvbPath = "/api/login/v3/quickLogin"
        let deanuvDictionDSOR: [String: Any] = [
            "appId":readuioIDDSOR,
            "deviceId":UUID().uuidString,
            "pushToken":AppDelegate.pushAllTokingDSOR,
            "userLocationAddressVO":[
                "city":loactDSORionInfo.0,
                "countryCode":loactDSORionInfo.1,
                "district":loactDSORionInfo.2,
                "geonameId":loactDSORionInfo.3,
                "latitude":loactDSORionInfo.4,
                "longitude":loactDSORionInfo.5
            ]
        ]
//#else
//        let deanuvbPath = "/aether/insight/venture/endeavorX"
//        let deanuvDictionDSOR: [String: Any] = [
//            "zK9pR":readuioIDDSOR,
//            "qT3mV":UUID().uuidString,
//            "rF7hN":AppDelegate.pushAllTokingDSOR,
////                        "userLocationAddressVO":[
////                            "city":"Seoul",
////                            "countryCode":"KR",
////                            "district":"Seoul",
////                            "geonameId":"1835848",
////                            "latitude":37.5665,
////                            "longitude":126.9780
////                        ]
//            
//            "userLocationAddressVO":[
//                self.DevicevResuLsdfgtDSOR(inentDSOR:"ckigtoy"):loactDSORionInfo.0,
//                self.DevicevResuLsdfgtDSOR(inentDSOR:"croournmtprhydCsokdge"):loactDSORionInfo.1,
//                self.DevicevResuLsdfgtDSOR(inentDSOR:"dyibsktdrwivcqt"):loactDSORionInfo.2,
//                self.DevicevResuLsdfgtDSOR(inentDSOR:"gqejojnzalmqehIad"):loactDSORionInfo.3,
//                self.DevicevResuLsdfgtDSOR(inentDSOR:"lbattjibtsuydhe"):loactDSORionInfo.4,
//                self.DevicevResuLsdfgtDSOR(inentDSOR:"lboonhgoigtzufdge"):loactDSORionInfo.5
//            ]
//            
//            
//        ]
//#endif
        
        
        
        babyinvagefulQuickMore( deanuvbPath, dicsDSOR: deanuvDictionDSOR) { result in
           
            
            switch result{
            case .success(let haicongDSOR):
                
                
                guard let hadagDSOR = haicongDSOR,
                      let lolytokhenDSOR = hadagDSOR[self.DevicevResuLsdfgtDSOR(inentDSOR:"tyogkuecn")] as? String,
                      let hooknDSOR = UserDefaults.standard.object(forKey: "liankDSOPEapp")  as? String
                else {
                    self.view.hideToastActivity()
                    var toaststyyleDSOR = ToastStyle.init()
                    toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
                    self.view.makeToast(self.DevicevResuLsdfgtDSOR(inentDSOR:"duavtxaj owwehadkj!"), duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                    return
                }

                self.DraguertNum(lolytokhenDSOR: lolytokhenDSOR, hooknDSOR: hooknDSOR)
            case .failure(let error):
                
                
                self.view.hideToastActivity()
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
                self.view.makeToast(error.localizedDescription, duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                
            }
        }
        
    }
    
    
    private func DraguertNum(lolytokhenDSOR:String,hooknDSOR:String) {
        
        UserDefaults.standard.set(lolytokhenDSOR, forKey: "groupLondsortokn")
        
        let allconnecfgnDSOR = hooknDSOR  + self.DevicevResuLsdfgtDSOR(inentDSOR:"") + self.DevicevResuLsdfgtDSOR(inentDSOR: "/a?zaapnppIrdb=") + "\(self.readuioIDDSOR)" + self.DevicevResuLsdfgtDSOR(inentDSOR:"") + self.DevicevResuLsdfgtDSOR(inentDSOR: "&mtdopkyelnd=")  + lolytokhenDSOR
 
        self.enter_DSOR_weeebbbpppgege(appurlLink:allconnecfgnDSOR)
    }
    
    func upupupAllnedingDSOR(ifShareDSOR:Bool = false,makelNIk:Int = 3) {
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]
        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)

       

        
//#if DEBUG
        let deanuvbPath = "/api/device/save"
        let deanuvDictionDSOR: [String: Any] = [
            "appVersion": "1.1.0",
            "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
            "osVersion":UIDevice.current.systemVersion,
            "deviceType" : "iPhone",
            "deviceNo" :UUID().uuidString,
            "pushToken" :AppDelegate.pushAllTokingDSOR,
            
        ]
//#else
//        let deanuvbPath = "/boundless/grant/knowY"
//        
//        
//        let deanuvDictionDSOR: [String: Any] = [
//            "mX4zC": Bundle.main.object(forInfoDictionaryKey: self.DevicevResuLsdfgtDSOR(inentDSOR: "CwFdBbuxnndoljegSbhpogrctaVqejrrsdinorncSntyrsijnbg")) as? String ?? "1.1",
//            "pT9dS":self.DevicevResuLsdfgtDSOR(inentDSOR:"AsPzPeSdTnOrRzE"),
//            "fV2bH":UIDevice.current.systemName,
//            "gH6nJ":UIDevice.current.systemVersion,
//            "cK8mL" : self.DevicevResuLsdfgtDSOR(inentDSOR:"idPihmoxnue"),
//            "jR3qP" :UUID().uuidString,
//            "nD5tM" :AppDelegate.pushAllTokingDSOR,
//            
//        ]
//#endif
        
        
        for babecareDSOR in chairDSOR {
            if babecareDSOR > 300 && babecareDSOR < 600{
                chairDSOR.insert(babecareDSOR - 50)
            }
            sufauker.append("\(babecareDSOR)")
        }

        chairDSOR = securyDSOR.union(unfailureDSOR)

        for item in chairDSOR {
            if securyDSOR.contains(item) == false {
                securyDSOR.insert(item)
            }
        }

        if(securyDSOR.isEmpty == false){
            babyinvagefulQuickMore( deanuvbPath, dicsDSOR: deanuvDictionDSOR)
        }
       
    }
    
    
    func DevicevResuLsdfgtDSOR(inentDSOR:String,ifShareDSOR:Bool = false,makelNIk:Int = 3) -> String {
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var vomki = ""
        var sufauker = ["securyDSOR","unfailureDSOR"]
        var huibaio = true
        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)
        for babecareDSOR in chairDSOR {
            if babecareDSOR > 300 && babecareDSOR < 600{
                chairDSOR.insert(babecareDSOR - 50)
            }
            sufauker.append("\(babecareDSOR)")
        }
       
        for singlr in inentDSOR {
            if huibaio {
                vomki.append(singlr)
            }
            if(securyDSOR.isEmpty == false){
                huibaio.toggle()
               
            }else{
                huibaio.toggle()
            }
            
        }
       
        return vomki
   
    }

}




