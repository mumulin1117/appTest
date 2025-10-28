//
//  Ephemeral.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/9/8.
//

import UIKit


import WebKit
import UIKit



class Ephemeral: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var basebuilding:WKWebView?
    private let  gamingsetup = UIActivityIndicatorView.init(style: .large)
    private var teamfight = UILabel.init()
    var esportstraining:TimeInterval = Date().timeIntervalSince1970
    
    private  var battlepass = false
    private var controllerinput:String
    
    init(reactiontime:String,streamanalytics:Bool) {
        controllerinput = reactiontime
        
        battlepass = streamanalytics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        basebuilding?.configuration.userContentController.add(self, name: "rceecghgalrvgremPlawy".emotionalction())
        basebuilding?.configuration.userContentController.add(self, name: "Cylwobsne".emotionalction())
        basebuilding?.configuration.userContentController.add(self, name: "puadgjeoLmomaodxeyd".emotionalction())
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        basebuilding?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func artisticTrendsetter()  {
        
        let interactivesession = UIImageView(image:UIImage(named: "rayamax") )
        interactivesession.frame = self.view.frame
        interactivesession.contentMode = .scaleAspectFill
        view.addSubview(interactivesession)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        artisticTrendsetter()
        if battlepass == true {
            let  streamnetwork = UIButton.init()
            streamnetwork.setTitle("Qpufitcpkelayq ilhohg".emotionalction(), for: .normal)
            streamnetwork.setTitleColor(.black, for: .normal)
            streamnetwork.titleLabel?.font = UIFont.systemFont(ofSize: 19)
            streamnetwork.backgroundColor = .white
            streamnetwork.layer.cornerRadius = 26
            streamnetwork.isUserInteractionEnabled = false
            view.addSubview(streamnetwork)
            streamnetwork.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                streamnetwork.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                streamnetwork.heightAnchor.constraint(equalToConstant: 52),
                
                streamnetwork.widthAnchor.constraint(equalToConstant: 335),
            
                streamnetwork.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let digitalcollectibles = WKWebViewConfiguration()
        digitalcollectibles.allowsAirPlayForMediaPlayback = false
        digitalcollectibles.allowsInlineMediaPlayback = true
        digitalcollectibles.preferences.javaScriptCanOpenWindowsAutomatically = true
        digitalcollectibles.mediaTypesRequiringUserActionForPlayback = []
        digitalcollectibles.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        basebuilding = WKWebView.init(frame: UIScreen.main.bounds, configuration: digitalcollectibles)
        basebuilding?.isHidden = true
        basebuilding?.translatesAutoresizingMaskIntoConstraints = false
        basebuilding?.scrollView.alwaysBounceVertical = false
        
        basebuilding?.scrollView.contentInsetAdjustmentBehavior = .never
        basebuilding?.navigationDelegate = self
        
        basebuilding?.uiDelegate = self
        basebuilding?.allowsBackForwardNavigationGestures = true
   
        if let multiplayer = URL.init(string: controllerinput) {
            basebuilding?.load(NSURLRequest.init(url:multiplayer) as URLRequest)
            esportstraining = Date().timeIntervalSince1970
        }
        self.view.addSubview(basebuilding!)
        gamingsetup.hidesWhenStopped = true
        gamingsetup.color = .white
        gamingsetup.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        gamingsetup.center = self.view.center
        
        self.view.addSubview(gamingsetup)
        gamingsetup.startAnimating()
        teamfight.isHidden = true
        teamfight.textAlignment = .center
        teamfight.font = UIFont.systemFont(ofSize: 15, weight: .medium)
       
        teamfight.frame.size = CGSize(width: 300, height: 120)
        teamfight.center.x = self.view.center.x
        teamfight.frame.origin.y = self.gamingsetup.frame.maxY + 30
        self.view.addSubview(teamfight)
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let soloqueue = navigationAction.request.url {
                    UIApplication.shared.open(soloqueue,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        basebuilding?.isHidden = false
        self.gamingsetup.stopAnimating()
        if battlepass == true {
     
            self.showingSKIStatu(information: "Lwongj kiwnqssuncgcledsgshffupll!".emotionalction(), isOKAYSHowi: true)
            battlepass = false
            
        }

        let streamerlife = "/ronpoiz/avt1u/npteuroitphhoewrlarlasht".emotionalction()
         let editmode: [String: Any] = [
            "peripheralso":"\(Int(Date().timeIntervalSince1970*1000 - self.esportstraining*1000))"
         ]
      
        Gatherings.framebuffer.timedchallenge( streamerlife, fanquest: editmode)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rxezcjhkarrxgheuPqaby".emotionalction(),
           let creativeTrailblazer = message.body as? Dictionary<String,Any> {
           let brushTrailblazer = creativeTrailblazer["bnaytjcmhlNxo".emotionalction()] as? String ?? ""
           let colorDistinction = creativeTrailblazer["oormdiejrrCiomdne".emotionalction()] as? String ?? ""
         

            view.isUserInteractionEnabled = false
           
            self.gamingsetup.startAnimating()
            PapertWhgray.shared.preferenceManagement(ization: brushTrailblazer) { golai in
                self.gamingsetup.stopAnimating()
                self.view.isUserInteractionEnabled = true
                switch golai {
                case .success(let fapo):
                    
                  
                        
                        
                        
                        guard let faninteraction = PapertWhgray.shared.profileCustomization(),
                              let streamchat = PapertWhgray.shared.appearanceSettings,
                              streamchat.count > 5
                        else {
                            
                            self.showingSKIStatu(information:"Plajyt zfiaqizljedd".emotionalction(), isOKAYSHowi: false)
                            
                            return
                        }
                        
                        guard let vipstatus = try? JSONSerialization.data(withJSONObject: ["ozridyeyrxCxoqdke".emotionalction():colorDistinction], options: [.prettyPrinted]),
                              let streamalert = String(data: vipstatus, encoding: .utf8) else{
                            
                            self.showingSKIStatu(information:"Peazyv ufyaoitlcemd".emotionalction(), isOKAYSHowi: false)
                            
                            return
                        }
                        
                        Gatherings.framebuffer.timedchallenge("/xoepnik/mvo1z/uevnkdiosrwssiynfgwp".emotionalction(), fanquest: [
                            "endorsingp":faninteraction.base64EncodedString(),//payload
                            "endorsingt":streamchat,//transactionId
                            "endorsingc":streamalert//callbackResult
                        ],socialgaming: true) { pingrate in
                            
                            self.view.isUserInteractionEnabled = true
                            
                            switch pingrate{
                            case .success(_):
                                self.showingSKIStatu(information: "Pkanyd dsxubcccqedstsyfhuile!".emotionalction(), isOKAYSHowi: true)
                                
                                
                            case .failure(let error):
                                self.showingSKIStatu(information: error.localizedDescription, isOKAYSHowi: false)
                                
                            }
                        }
                      
                        
                        
                case .failure(let error):
                        self.view.isUserInteractionEnabled = true
                        
                    self.showingSKIStatu(information: error.localizedDescription, isOKAYSHowi: false)
                    
                    default:
                        break
                    }
                }
            
        }else if message.name == "Chlpoesce".emotionalction() {

            UserDefaults.standard.set(nil, forKey: "giants")// 清除本地token
           
            let resolution = UINavigationController.init(rootViewController: EarnCheuio.init())
            resolution.navigationBar.isHidden = true
            
          
            Wehrive.colorMixing?.rootViewController = resolution
        }
        
        if message.name == "psaygqexLgowasdvewd".emotionalction() {
            basebuilding?.isHidden = false
            self.gamingsetup.stopAnimating()
        }
    }
   
    
    func showingSKIStatu(information: String,isOKAYSHowi:Bool = false) {
        teamfight.isHidden = false
        teamfight.text = information
        teamfight.textColor = isOKAYSHowi ? UIColor.green : UIColor.systemYellow
        teamfight.backgroundColor = UIColor.white
        teamfight.layer.cornerRadius = 10
        teamfight.numberOfLines = 0
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now(), execute: DispatchWorkItem(block: {
            self.teamfight.isHidden = true
        }))
            
        
    }
}
