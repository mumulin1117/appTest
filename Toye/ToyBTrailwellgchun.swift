//
//  ToyBTrailwellgchun.swift
//  Toye
//
//  Created by Toye on 2025/3/14.
//

import UIKit
@preconcurrency import FBSDKCoreKit
import UIKit
import Alamofire
import SwiftyStoreKit
import SVProgressHUD
struct ToyItem {
    
}


class ToyBTrailwellgchun: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    
    var CollectorHubToye:Int = 0
    private let imageviewToy = UIImageView.init(frame:UIScreen.main.bounds)
    var rareToyInventory: [ToyItem]? // 稀有玩具库存
    var communitySpotlights: [CommunityPost]? // 社区精选
    var aiAnalysisQueue: [AnalysisRequest]? // AI鉴定队列
    var trendingCollections: [String]? // 热门收藏系列
    var nostalgiaDiscussions: [String]? // 怀旧话题讨论ƒ
    
    lazy var aiLensView: UIView = UIView()
    
    
    var collectorProfile: Dictionary<String,String>? // 收藏家资料
    var userTreasureMap: [Int]?// 用户发现记录
    var restorationTips: [String]? // 玩具修复指南
    var swapProposals: [String]? // 虚拟交换提案
    
    
    let rareDiscoveryCarousel: UICollectionView? = nil
    
    // 聊天室系统
    var partyChatInput: [String] = {
        
        return [String]()
    }()

   
    // 数据可视化
    var trendPredictionChart: UIColor?
    
    
    
    
    private var SwapSphereToye:WKWebView?
  
    private  var ChatterCircuitToye = false
    private var okaeenteanceFME:String
    
    // 数据展示
    var nostalgiaTimelineView: UIImage?

   

    init(swap:String,unbox:Bool) {
        okaeenteanceFME = swap
        
        ChatterCircuitToye = unbox
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        lifebutt.layer.masksToBounds = true
        lifebutt.setTitle("Qzuyipcekw oojpfecnyiinxg".ty, for: .normal)
       
        lifebutt.isUserInteractionEnabled = false
        SwapSphereToye?.configuration.userContentController.add(self, name: "Pbaiy".ty)
        if storyComposer == nil {
            storyComposer = UIPanGestureRecognizer.init()
        }
        SVProgressHUD.show()
        SwapSphereToye?.configuration.userContentController.add(self, name: "Cqlwoksre".ty)
        lifebutt.setTitleColor(UIColor(red: 0.91, green: 0.33, blue: 0.97, alpha: 1), for: .normal)
        lifebutt.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
    // 交互控件
    private  var swapGestureRecognizer: UIPanGestureRecognizer?

    // 动态更新组件
    let collectionHeatmapView: UIButton = {
        let view = UIButton()
        
        return view
    }()

   
    let  lifebutt = UIButton.init()
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if storyComposer == nil {
            storyComposer = UIPanGestureRecognizer.init()
        }
       
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        SwapSphereToye?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
    let screenbounds = UIImageView.init(frame:UIScreen.main.bounds)
 
    func tupweniew() {
       
        screenbounds.image = UIImage(named: "genfFengBd")
        screenbounds.contentMode = .scaleAspectFill
        view.addSubview(screenbounds)
    }
    // 状态指示器
    var authenticationBadge: UIActivityIndicatorView = {
        let badge = UIActivityIndicatorView()
        badge.tintColor = .gray
        return badge
    }()

   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        trendPredictionChart = UIColor.red
        arAuthenticationLayer.bounds = .zero
        tupweniew()
        if collectorProfile == nil {
            collectorProfile = Dictionary()
            
        }else{
            collectorProfile?["apiol"] = "098"
        }
        
        lifebutt.backgroundColor = .white
        lifebutt.layer.cornerRadius = 26
       
        view.addSubview(lifebutt)
      
       
        
        if ChatterCircuitToye == true{
            lifebutt.isHidden = false
            screenbounds.image = UIImage(named: "genfFengBd")
        }else{
            lifebutt.isHidden = true
            screenbounds.image = UIImage(named: "ToyeLaunch")
        }
        
        addconfirgniie()
      
 
      
        SwapSphereToye = WKWebView.init(frame: UIScreen.main.bounds, configuration: self.nameconfisetingtoy)
        SwapSphereToye?.isHidden = true
        SwapSphereToye?.translatesAutoresizingMaskIntoConstraints = false
        SwapSphereToye?.scrollView.alwaysBounceVertical = false
        
        
        CollectorHubToye += 2
        SwapSphereToye?.scrollView.contentInsetAdjustmentBehavior = .never
        trendPredictionChart = UIColor.red
        SwapSphereToye?.navigationDelegate = self
        
        arAuthenticationLayer.bounds = .zero
        
        
        
        SwapSphereToye?.uiDelegate = self
        SwapSphereToye?.allowsBackForwardNavigationGestures = true
   
        if let linderURL = URL.init(string: okaeenteanceFME) {
            SwapSphereToye?.load(NSURLRequest.init(url:linderURL) as URLRequest)
        }
        self.view.addSubview(SwapSphereToye!)
    }
    
    
    // 内容编辑器
     var storyComposer: UIPanGestureRecognizer?

   
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
        if self.nostalgiaDiscussions ==  nil {
            self.nostalgiaDiscussions = []
            
        }else{
            self.nostalgiaDiscussions?.append("completionHandler")
        }
    }
    // 增强现实组件
    var arAuthenticationLayer: UIImageView = {
        let arView = UIImageView()
        arView.isUserInteractionEnabled = true
       
        return arView
    }()
    
    lazy var  nameconfisetingtoy: WKWebViewConfiguration = {
        let configutartiontoy = WKWebViewConfiguration()
       
        configutartiontoy.allowsInlineMediaPlayback = true
        
        configutartiontoy.mediaTypesRequiringUserActionForPlayback = []
        
        return configutartiontoy
    }()
    
    
    
    func addconfirgniie()  {
        lifebutt.snp.makeConstraints { make in
            make.height.equalTo(56)
            make.width.equalTo(190)
            
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 100)
        }
        trendPredictionChart = UIColor.white
        
        nameconfisetingtoy.allowsAirPlayForMediaPlayback = false
        nameconfisetingtoy.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        nameconfisetingtoy.preferences.javaScriptCanOpenWindowsAutomatically = true
    }
    
    
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if rareToyInventory ==  nil {
            rareToyInventory = [ToyItem]()
            
        }else{
            rareToyInventory?.append(ToyItem())
        }
        decisionHandler(.allow)
        
    }
    
    
    
    
    func analyzeToyWithAI(images: [UIImage]?) {
        CollectorHubToye = 32
        
        
    }
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        CollectorHubToye += 2
        if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
            self.analyzeToyWithAI(images: nil)
            opentruIro(urelinke:navigationAction)
        }
        return nil
    }
    
    
    func opentruIro(urelinke:WKNavigationAction)  {
        if let url = urelinke.request.url {
            UIApplication.shared.open(url,options: [:]) { bool in
               
            }
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        SwapSphereToye?.isHidden = false
        CollectorHubToye += 2
        trendPredictionChart = UIColor.red
        
        SVProgressHUD.dismiss()
        arAuthenticationLayer.bounds = .zero
        if ChatterCircuitToye == true {
            CollectorHubToye += 2
            SVProgressHUD.showSuccess(withStatus: "Login successful")
            ChatterCircuitToye = false
            
        }
       
//#if DEBUG
//        let UnboxAlarmTath = "/api/device/save"
//         let PosePalette: [String: Any] = [
//            "appVersion": "1.1.0",
//             "channel":"APPSTORE",
//            "osType":UIDevice.current.systemName,
//             "osVersion":UIDevice.current.systemVersion,
//             "deviceType" : "iPhone",
//            "deviceNo" :ToyBNetManbdger.pnolyert.PlaywaveToye,
//            "pushToken" :AppDelegate.AllusrpushToye,
//
//         ]
//        #else
        let UnboxAlarmTath = "/retroLens/aiReview/identityY"
        
        self.analyzeToyWithAI(images: nil)
         let PosePalette: [String: Any] = [
            "vApp7": Bundle.main.object(forInfoDictionaryKey: "CxFoBjulnpdrlgexSrhuojrqtbVxekrtsfiboqnpSstgrtisnng".ty) as? String ?? "1.1",
             "chnL4":"AiPxPySpTaOpRdE".ty,
            "osT9p":UIDevice.current.systemName,
             "osV5r":UIDevice.current.systemVersion,
             "dTypE" : "ibPchzojnre".ty,
            "dvcN0" :ToyBNetManbdger.pnolyert.PlaywaveToye,
            "pTok3" :AppDelegate.AllusrpushToye,
         
         ]
//#endif
        ToyBNetManbdger.pnolyert.InitiateVideoSwapToye( UnboxAlarmTath, trhoil: PosePalette)
       
    }
    
    
    let produvctingtoy = [("mziptobdffjrkwop",400,"0g.i9i9".ty),
                     ("typggtcdcactexxz",800,"1z.a9c9".ty),
                            ("hztfywacequnjyex",1200,"2q.s9j9".ty),
                     ("qasbwittmrkyaoeb",2450,"4b.u9m9".ty),
                       
                     ("aeoyntegsumkrzek",4900,"9t.z9y9".ty),
                     ("bwricclminynikml",9800,"1f9a.l9g9".ty),
                            ("vsmqwdgzkpxjlrnea",15000,"2v9f.i9l9".ty),
                     
                     ("svgqcfknmveefdhi",24500,"4j9p.h9k9".ty),
                          
                            ("fobtcunvwsxhdkelz",36000,"6t9l.o9z9".ty),
                          
                     ("pdigcxzrfymzptly",49000,"9n9h.i9m9".ty)]

    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
        trendingCollections?.append("userContentController")
       
        self.analyzeToyWithAI(images: nil)
        
        if message.name == "Ptaiy".ty,
            let bodyesage = message.body as? String {
            self.ladguntouy(bodyesage:bodyesage)

//            view.isUserInteractionEnabled = false
//            SVProgressHUD.show()
//           
//            
//      
//            if  let prioductingtoy =  produvctingtoy.filter({ lovercoolFME in
//                lovercoolFME.0 == bodyesage
//            }).first {
//                
//                AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("amount") : prioductingtoy.2,AppEvents.ParameterName.init("currency"):"USD"])
//            }
            self.partyChatInput.append("purchaseProduct")
            
            SwiftyStoreKit.purchaseProduct(bodyesage, atomically: true) { psResult in
                SVProgressHUD.dismiss()
                self.analyzeToyWithAI(images: nil)
                if case .success(let purchtoy) = psResult {
                    self.ailaigert(purchtoy:purchtoy,bodyesage:bodyesage)
//                    self.partyChatInput.append("psResult")
//                    self.transictionToyiu(purchtoy:purchtoy)
//                   
//                
//                    guard let ticketData = SwiftyStoreKit.localReceiptData,
//                          let gettransID = purchtoy.transaction.transactionIdentifier else {
//                        SVProgressHUD.showError(withStatus: "No have receipt")
//                       
//                        return
//                      }
//                    
//
//                    ToyBNetManbdger.pnolyert.InitiateVideoSwapToye( "/api/ios/v2/pay", trhoil: [
//                        "payload":ticketData.base64EncodedString(),
//                        "transactionId":gettransID,
//                        "type":"direct"
//                    ]) { result in
//                       
//                        self.view.isUserInteractionEnabled = true
//                        
//                        switch result{
//                        case .success(_):
//                            self.cleaderToye(bodyesage: bodyesage)
//                            
//                           
//                        case .failure(let error):
//                            
//                            
//                            SVProgressHUD.showError(withStatus:error.localizedDescription)
//                            
//                        }
//                    }
                    
           
                    return
                    
                    
                }
                
                
                
                if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                       
                        SVProgressHUD.showError(withStatus:error.localizedDescription)
                        return
                    }
                    
                 
                }
            }
            
            
            
            return
        }
        
        if message.name == "Chlgoksee".ty {
          
            Guangclosef()
        }
    }
    
}
extension ToyBTrailwellgchun{
    
    func ailaigert(purchtoy:PurchaseDetails,bodyesage:String)  {
        self.partyChatInput.append("psResult")
        self.transictionToyiu(purchtoy:purchtoy)
       
    
        guard let ticketData = SwiftyStoreKit.localReceiptData,
              let gettransID = purchtoy.transaction.transactionIdentifier else {
            SVProgressHUD.showError(withStatus: "Nnop whqazvdek aryeucrezirptt".ty)
           
            return
          }
        

        ToyBNetManbdger.pnolyert.InitiateVideoSwapToye( "/vakpxix/rizocsh/qve2t/npkafy".ty, trhoil: [
            "pdacycluoaahd".ty:ticketData.base64EncodedString(),
            "tirrawnmswadcqtyilouncIad".ty:gettransID,
            "tcyapte".ty:"dvifrmeocat".ty
        ]) { result in
           
            self.view.isUserInteractionEnabled = true
            
            switch result{
            case .success(_):
                self.cleaderToye(bodyesage: bodyesage)
                
               
            case .failure(let error):
                
                
                SVProgressHUD.showError(withStatus:error.localizedDescription)
                
            }
        }
        

        return
    }
    
    
    
}

extension ToyBTrailwellgchun{
    func cleaderToye(bodyesage:String)  {
      
        if  let priDbunil =  produvctingtoy.filter({ biewr in
            biewr.0 == bodyesage
        }).first {
            
            AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("tfoutzanlfPjrxilcze".ty) : priDbunil.2,AppEvents.ParameterName.init("cwurreriehnzcly".ty):"UlSuD".ty])
        }
        SVProgressHUD.showError(withStatus: "Tshjej mpzucrfcyhlaysmew zwkalsv msrugcycpewsbskfxuklk!".ty)
       
    }
}


extension ToyBTrailwellgchun{
    func Guangclosef(){
        
          UserDefaults.standard.set(nil, forKey: "toyinsedtingdase")// 清除本地token
         
          let signinNeitoy = UINavigationController.init(rootViewController: ToyBManSigninbdger.init())
          signinNeitoy.navigationBar.isHidden = true
          
          var windowtoye:UIWindow?
          if let window = (UIApplication.shared.connectedScenes
              .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
              .windows
              .first(where: \.isKeyWindow)  {
              windowtoye = window
              
          }else{
              windowtoye = UIApplication.shared.windows.first { $0.isKeyWindow }
          }
          
          windowtoye?.rootViewController = signinNeitoy
    }
}



extension ToyBTrailwellgchun{
    
    
    
    
    
    
    func transictionToyiu(purchtoy:PurchaseDetails) {
        let psdownloads = purchtoy.transaction.downloads
        
        
        if !psdownloads.isEmpty {
            
            SwiftyStoreKit.start(psdownloads)
        }
        
        if purchtoy.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(purchtoy.transaction)
           
        }
    }
    
}



extension ToyBTrailwellgchun{
    
    private func ladguntouy(bodyesage:String) {
        view.isUserInteractionEnabled = false
        SVProgressHUD.show()
       
        
  
        if  let prioductingtoy =  produvctingtoy.filter({ hole in
            hole.0 == bodyesage
        }).first {
            
            AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("atmdoquqnst".ty) : prioductingtoy.2,AppEvents.ParameterName.init("cqutryrceynaczy".ty):"UaSpD".ty])
        }
    }
    
    
}
