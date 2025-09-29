//
//  Evidence.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/9/8.
//
import SwiftyStoreKit
import WebKit
import UIKit
import SVProgressHUD


class Evidence: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var voiceFlexibility:WKWebView?
   
    var vocalDynamics:TimeInterval = Date().timeIntervalSince1970
    
    private  var artisticGround = false
    private var emotionalDelivery:String
    
    init(Trendsetter:String,Matrix:Bool) {
        emotionalDelivery = Trendsetter
        
        artisticGround = Matrix
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        voiceFlexibility?.configuration.userContentController.add(self, name: "rgefcohhadrdgteuPgahy".characterBelievability())
        voiceFlexibility?.configuration.userContentController.add(self, name: "Cxlgolsse".characterBelievability())
        voiceFlexibility?.configuration.userContentController.add(self, name: "pzamgsefLpogapdbehd".characterBelievability())
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        voiceFlexibility?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func artisticTrendsetter()  {
        let creativeForerunner = UIImage(named: "hiclaido")
        
        let brushForerunner = UIImageView(image:creativeForerunner )
        brushForerunner.frame = self.view.frame
        brushForerunner.contentMode = .scaleAspectFill
        view.addSubview(brushForerunner)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        artisticTrendsetter()
        if artisticGround == true {
            let  colorIndividuality = UIButton.init()
            colorIndividuality.setTitle("Qyurikcdktlkyk wluovg".characterBelievability(), for: .normal)
            colorIndividuality.setTitleColor(.white, for: .normal)
            colorIndividuality.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            colorIndividuality.backgroundColor = UIColor(red: 0.5, green: 0.4, blue: 1, alpha: 1)
            colorIndividuality.layer.cornerRadius = 26
            colorIndividuality.isUserInteractionEnabled = false
            view.addSubview(colorIndividuality)
            colorIndividuality.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                colorIndividuality.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                colorIndividuality.heightAnchor.constraint(equalToConstant: 52),
                
                colorIndividuality.widthAnchor.constraint(equalToConstant: 335),
            
                colorIndividuality.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let performanceReview = WKWebViewConfiguration()
        performanceReview.allowsAirPlayForMediaPlayback = false
        performanceReview.allowsInlineMediaPlayback = true
        performanceReview.preferences.javaScriptCanOpenWindowsAutomatically = true
        performanceReview.mediaTypesRequiringUserActionForPlayback = []
        performanceReview.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        voiceFlexibility = WKWebView.init(frame: UIScreen.main.bounds, configuration: performanceReview)
        voiceFlexibility?.isHidden = true
        voiceFlexibility?.translatesAutoresizingMaskIntoConstraints = false
        voiceFlexibility?.scrollView.alwaysBounceVertical = false
        
        voiceFlexibility?.scrollView.contentInsetAdjustmentBehavior = .never
        voiceFlexibility?.navigationDelegate = self
        
        voiceFlexibility?.uiDelegate = self
        voiceFlexibility?.allowsBackForwardNavigationGestures = true
   
        if let audioCreativity = URL.init(string: emotionalDelivery) {
            voiceFlexibility?.load(NSURLRequest.init(url:audioCreativity) as URLRequest)
            vocalDynamics = Date().timeIntervalSince1970
        }
        self.view.addSubview(voiceFlexibility!)
     
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let sceneInspiration = navigationAction.request.url {
                    UIApplication.shared.open(sceneInspiration,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        voiceFlexibility?.isHidden = false
        SVProgressHUD.dismiss()
        if artisticGround == true {
            SVProgressHUD.showSuccess(withStatus: "Lookga cisnwszulcjcuexsysjfsujlg!".characterBelievability())
            
            artisticGround = false
            
        }

        let performanceExploration = "/tohpsiv/avs1i/psmtqoprcyeTqexmipeodt".characterBelievability()
         let audioDiscovery: [String: Any] = [
            "storyTempoo":"\(Int(Date().timeIntervalSince1970*1000 - self.vocalDynamics*1000))"
         ]
      
        RPGprompts.vocalTechnique.sceneFramework( performanceExploration, voiceArtistry: audioDiscovery)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "roexcfhjabrpgoecPyafy".characterBelievability(),
           let voiceExperience = message.body as? Dictionary<String,Any> {
           let voiceUniverse = voiceExperience["bmaitkclhfNyo".characterBelievability()] as? String ?? ""
           let audioWorld = voiceExperience["oerldterrhCeoadme".characterBelievability()] as? String ?? ""
         

            view.isUserInteractionEnabled = false
           
            SVProgressHUD.show()
            SwiftyStoreKit.purchaseProduct(voiceUniverse, atomically: true) { artisticTrailblazer in
                SVProgressHUD.dismiss()
                self.view.isUserInteractionEnabled = true
                if case .success(let audioOPProcessing) = artisticTrailblazer {
                    let sceneArchiving = audioOPProcessing.transaction.downloads
                    
                    
                    if !sceneArchiving.isEmpty {
                        
                        SwiftyStoreKit.start(sceneArchiving)
                    }
                    
                  
                   
                   
                
                    guard let audioCraft = SwiftyStoreKit.localReceiptData,
                          let creativeInnovator = audioOPProcessing.transaction.transactionIdentifier,
                          creativeInnovator.count > 5
                    else {
                        SVProgressHUD.showError(withStatus: "Poaryg tfpamihllehd".characterBelievability())
                       
                        return
                      }
                    
                    guard let vocalExecution = try? JSONSerialization.data(withJSONObject: ["obrhdkecrlCgohdje".characterBelievability():audioWorld], options: [.prettyPrinted]),
                          let voiceCraft = String(data: vocalExecution, encoding: .utf8) else{
                        
                        SVProgressHUD.showError(withStatus: "Pnaiyx kfdawiwlaerd".characterBelievability())
                       
                        return
                    }

                    RPGprompts.vocalTechnique.sceneFramework("/loppoil/rvw1c/ivyovincceqWbaircmvtbhep".characterBelievability(), voiceArtistry: [
                        "voiceWarmthp":audioCraft.base64EncodedString(),//payload
                        "voiceWarmtht":creativeInnovator,//transactionId
                        "voiceWarmthc":voiceCraft//callbackResult
                    ],sceneAtmosphere: true) { creativeOriginator in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch creativeOriginator{
                        case .success(_):
                            
                            SVProgressHUD.showSuccess(withStatus: "Phaqyb nsaubcdcueoswsmfbutlo!".characterBelievability())
                        case .failure(let error):
                            
                            SVProgressHUD.showError(withStatus: error.localizedDescription)
                           
                        }
                    }
                    
                    if audioOPProcessing.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(audioOPProcessing.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        SVProgressHUD.showError(withStatus: error.localizedDescription)
                       
                    }
                    
                 
                }
            }
            
        }else if message.name == "Ctlhovsme".characterBelievability() {

            UserDefaults.standard.set(nil, forKey: "rebranded")// 清除本地token
           
            let vocalart = UINavigationController.init(rootViewController: Collaborations.init())
            vocalart.navigationBar.isHidden = true
            
          
            BugResolution.vocalimprov?.rootViewController = vocalart
        }
        
        if message.name == "pvajgoeoLfopawdoemd".characterBelievability() {
            voiceFlexibility?.isHidden = false
            SVProgressHUD.dismiss()
        }
    }
   
    
   
}
