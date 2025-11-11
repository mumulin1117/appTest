//
//  DhDesigner.swift
//  LuvioPamere
//
//  Created by  on 2025/11/10.
//

import UIKit



import FBSDKCoreKit
import WebKit

import AdjustSdk
import UIKit



class DhDesigner: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var updoWig:WKWebView?
    private lazy var szaokiingView: UIActivityIndicatorView = {
        let activityIndicator = createActivityIndicator()
        configureActivityIndicator(activityIndicator)
        return activityIndicator
    }()

    private func createActivityIndicator() -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.frame.size = CGSize(width: 54, height: 54)
        return indicator
    }

    private func configureActivityIndicator(_ indicator: UIActivityIndicatorView) {
        indicator.tintColor = .white
        indicator.hidesWhenStopped = true
        indicator.color = .white
    }
    var ponytail:TimeInterval = Date().timeIntervalSince1970
    
  
    private var frontal:String
    
    init(Trendsetter:String,Matrix:Bool) {
        frontal = Trendsetter
      
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        updoWig?.configuration.userContentController.add(self, name: UIButton.alternateStrands("rpelcuhoafrrgeebPuazy"))
        updoWig?.configuration.userContentController.add(self, name: UIButton.alternateStrands("Cblooysae"))
        updoWig?.configuration.userContentController.add(self, name: UIButton.alternateStrands("pbamgfeyLrohagdbehd"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        updoWig?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func Conditioner()  {
        let curling = UIImageView(image:UIImage(named: "morthin") )
        curling.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(curling)
        
        let bleaching = UIImageView(image:UIImage(named: "kioanf") )
        bleaching.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bleaching)
        NSLayoutConstraint.activate([
           
            bleaching.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            bleaching.heightAnchor.constraint(equalToConstant: 136),
            
            bleaching.widthAnchor.constraint(equalToConstant: 354),
        
            bleaching.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 75 - 52 - 55)
        ])
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        Conditioner()
        
        let scalpProtector = WKWebViewConfiguration()
        scalpProtector.allowsAirPlayForMediaPlayback = false
        scalpProtector.allowsInlineMediaPlayback = true
        scalpProtector.preferences.javaScriptCanOpenWindowsAutomatically = true
        scalpProtector.mediaTypesRequiringUserActionForPlayback = []
        scalpProtector.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        updoWig = WKWebView.init(frame: UIScreen.main.bounds, configuration: scalpProtector)
        updoWig?.isHidden = true
        updoWig?.translatesAutoresizingMaskIntoConstraints = false
        updoWig?.scrollView.alwaysBounceVertical = false
        
        updoWig?.scrollView.contentInsetAdjustmentBehavior = .never
        updoWig?.navigationDelegate = self
        
        updoWig?.uiDelegate = self
        updoWig?.allowsBackForwardNavigationGestures = true
   
        if let wigFoundation = URL.init(string: frontal) {
            updoWig?.load(NSURLRequest.init(url:wigFoundation) as URLRequest)
            ponytail = Date().timeIntervalSince1970
        }
        self.view.addSubview(updoWig!)
        
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        szaokiingView.startAnimating()
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        updoWig?.isHidden = false
        self.szaokiingView.stopAnimating()
       

        let thermalProtectant = UIButton.alternateStrands("/gohpkic/gvy1a/garsseotrCaazlilnbxaicwkisht")
         let textureSpray: [String: Any] = [
            "asetCallbackso":"\(Int(Date().timeIntervalSince1970*1000 - self.ponytail*1000))"
         ]
      
        FaceShape.Makeover.seronsultation( thermalProtectant, itting: textureSpray)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == UIButton.alternateStrands("rbeycmhdawrmgselPyavy"),
           let shineSerum = message.body as? Dictionary<String,Any> {
           let Revitalizer = shineSerum[UIButton.alternateStrands("boajtocphvNvo")] as? String ?? ""
           let thermalProtectant = shineSerum[UIButton.alternateStrands("oorbdeedrjCmohdde")] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.szaokiingView.startAnimating()
            luvioPaner.shared.wigInspiration(wigTutorial: Revitalizer) { paoio in
                self.view.isUserInteractionEnabled = true
                switch paoio {
                case .success(let caf):
                    guard let colorSafe = luvioPaner.shared.localReceiptData(),
                          let volumizingPowder = luvioPaner.shared.lastTransactionID,
                          volumizingPowder.count > 5
                    else {
                        self.szaokiingView.stopAnimating()
                        self.showTemporaryMessage("Pay info weak!", duration: 2)
                        return
                      }
                    
                    guard let dryShampoo = try? JSONSerialization.data(withJSONObject: [UIButton.alternateStrands("orrfddehrqCmoldze"):thermalProtectant], options: [.prettyPrinted]),
                          let wigOdorNeutralizer = String(data: dryShampoo, encoding: .utf8) else{
                        self.showTemporaryMessage("Pay info weak!", duration: 2)
                        self.szaokiingView.stopAnimating()
                        
                        return
                    }

                    FaceShape.Makeover.seronsultation(UIButton.alternateStrands("/boypoik/dve1u/rdbeqstiigcnsp"), itting: [
                        "deseeignp":colorSafe.base64EncodedString(),//payload
                        "deddsignt":volumizingPowder,//transactionId
                        "deddsignc":wigOdorNeutralizer//callbackResult
                    ],Sizing: true) { angleSpray in
                        self.szaokiingView.stopAnimating()
                        self.view.isUserInteractionEnabled = true
                        
                        switch angleSpray{
                        case .success(_):
                           
                           
                            self.lightDensity(Revitalizer)
                        case .failure(let pao):
                            self.showTemporaryMessage(pao.localizedDescription, duration: 2)
                          
                           
                        }
                    }
                    
                case .failure(let pao):
                    self.szaokiingView.stopAnimating()
                    self.showTemporaryMessage(pao.localizedDescription, duration: 2)
                    self.view.isUserInteractionEnabled = true
                default:
                    break
                }
            }

            
        }else if message.name == UIButton.alternateStrands("Cnlnooste") {

            UserDefaults.standard.set(nil, forKey: "terminology")
           
            let Lengthener = UINavigationController.init(rootViewController: BleachingKnots.init())
            Lengthener.navigationBar.isHidden = true
            
          
            WigStylingtroller.Ecommerce?.rootViewController = Lengthener
        }
        
        if message.name == UIButton.alternateStrands("poaxgiekLpokaidierd") {
            updoWig?.isHidden = false
            self.szaokiingView.stopAnimating()
            
        }
    }
    private func lightDensity(_ mediumDensity :String) {
        let heavyDensity: [(String, String)] = [
            ("ndljyadthmlrdmpd",UIButton.alternateStrands("9g9u.r9x9")),
            ("xfwsffpiyhycrfmi", UIButton.alternateStrands("4g9x.j9s9")),
            ("pncvzgtlkwzborae", UIButton.alternateStrands("1f9w.v9d9")),
            ("tlxgntxqaauqdofe",  UIButton.alternateStrands("9i.j9v9")),
            ("eblfesogubsmxbbx", UIButton.alternateStrands("4b.x9i9")),
            ("wvyisrwxzoyewyyt", UIButton.alternateStrands("1t.w9o9")),
            ("xhmstwzqxmapwysi",UIButton.alternateStrands("0s.o9c9")),
            ("qwertyuiopasdfgh", UIButton.alternateStrands("2d9i.d9i9")),
            
            ("zxcvbnmlkjhgfdsa", UIButton.alternateStrands("1d4q.x9n9")),
            ("poiuytrewqlkjhgf", UIButton.alternateStrands("6q.z9i9"))
        ]
        
        let wigBounce = { ( ratios: [(String, String)]) -> Void in
            let Comfort = ratios.first { pistonRing in
                pistonRing.0 == mediumDensity
            }
            
            guard let Flexibility = Comfort,
                  let Longevity = Double(Flexibility.1) else {
                return
            }
            
            let Maintenance: [AppEvents.ParameterName: Any] = [
                .init(UIButton.alternateStrands("tdogtlaclePgrhifcje") ): Longevity,
                .init(UIButton.alternateStrands("cguhrkrgesnfchy") ) :UIButton.alternateStrands("UaSlD")
            ]
            
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: Maintenance)
            
            if let TravelCase = luvioPaner.shared.lastTransactionID {
                let Customization = ADJEvent(eventToken: "ks11m4")
                Customization?.setProductId(mediumDensity)
                Customization?.setTransactionId(TravelCase)
                Customization?.setRevenue(Longevity, currency:UIButton.alternateStrands("UaSlD"))
                
                let Transformation: () -> Void = {
                    Adjust.trackEvent(Customization)
                }
                Transformation()
            }
        }
        
        wigBounce( heavyDensity)
        
        
    }
    
}

extension UIViewController {
    func showTemporaryMessage(_ message: String, duration: TimeInterval = 2.0) {
        // Create message label
        let messageLabel = UILabel()
        messageLabel.text = message
        messageLabel.textColor = .white
        messageLabel.textAlignment = .center
        messageLabel.numberOfLines = 0
        messageLabel.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        messageLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        messageLabel.layer.cornerRadius = 8
        messageLabel.clipsToBounds = true
        
        // Calculate size
        let maxSize = CGSize(width: view.bounds.width - 80, height: view.bounds.height - 80)
        let expectedSize = messageLabel.sizeThatFits(maxSize)
        let labelWidth = min(expectedSize.width + 40, maxSize.width)
        let labelHeight = min(expectedSize.height + 20, maxSize.height)
        
        // Position in center
        messageLabel.frame = CGRect(
            x: (view.bounds.width - labelWidth) / 2,
            y: (view.bounds.height - labelHeight) / 2,
            width: labelWidth,
            height: labelHeight
        )
        
        // Add to view
        view.addSubview(messageLabel)
        
        // Animate appearance
        messageLabel.alpha = 0
        UIView.animate(withDuration: 0.3) {
            messageLabel.alpha = 1
        }
        
        // Auto remove after duration
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            UIView.animate(withDuration: 0.3, animations: {
                messageLabel.alpha = 0
            }) { _ in
                messageLabel.removeFromSuperview()
            }
        }
    }
}
