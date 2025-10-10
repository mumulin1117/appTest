//
//  NaturalHarmonic.swift
//  ClaassssicPolo
//
//  Created by ClaassssicPolo on 2025/9/8.
//

import UIKit

import SwiftyStoreKit
import WebKit
import UIKit
import MBProgressHUD



class NaturalHarmonic: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var pianoperformance:WKWebView?
   
    var classicalpiano:TimeInterval = Date().timeIntervalSince1970
    
    private  var clipsharing = false
    private var pianistlife:String
    
    init(musicloverscircle:String,classicaljourneyd:Bool) {
        pianistlife = musicloverscircle
        
        clipsharing = classicaljourneyd
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        pianoperformance?.configuration.userContentController.add(self, name: PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"raejcnheayrggcegPiaty"))
        pianoperformance?.configuration.userContentController.add(self, name: PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Colqokste"))
        pianoperformance?.configuration.userContentController.add(self, name: PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"psafgveyLjoaaxdjecd"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        pianoperformance?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
    private lazy var runfhui: UIImageView = {
        let musicguide = UIImageView(image:UIImage(named: "sdmbolzixlianwed") )
        musicguide.translatesAutoresizingMaskIntoConstraints = false
        musicguide.contentMode = .scaleAspectFit
        return musicguide
    }()
    private func artisticTrendsetter()  {
       
        let musicguide = UIImageView(image:UIImage(named: "sdmbolzixlian") )
        musicguide.frame = self.view.frame
        musicguide.contentMode = .scaleAspectFill
        view.addSubview(musicguide)
        
        view.addSubview(runfhui)
        NSLayoutConstraint.activate([
           
            runfhui.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            runfhui.heightAnchor.constraint(equalToConstant: 116),
            
            runfhui.widthAnchor.constraint(equalToConstant: 213),
        
            runfhui.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 65 - 52 - 37)
        ])
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        artisticTrendsetter()
        if clipsharing == true {
            let  musicalcollaboration = UIButton.init()
            musicalcollaboration.setTitle(PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Qvutijcwkmljyv lLhopg"), for: .normal)
            musicalcollaboration.setBackgroundImage(UIImage.init(named: "etchIuo"), for: .normal)
           
            musicalcollaboration.isUserInteractionEnabled = false
            view.addSubview(musicalcollaboration)
            musicalcollaboration.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                musicalcollaboration.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                musicalcollaboration.heightAnchor.constraint(equalToConstant: 52),
                
                musicalcollaboration.widthAnchor.constraint(equalToConstant: 335),
            
                musicalcollaboration.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let theoryworkshop = WKWebViewConfiguration()
        theoryworkshop.allowsAirPlayForMediaPlayback = false
        theoryworkshop.allowsInlineMediaPlayback = true
        theoryworkshop.preferences.javaScriptCanOpenWindowsAutomatically = true
        theoryworkshop.mediaTypesRequiringUserActionForPlayback = []
        theoryworkshop.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        pianoperformance = WKWebView.init(frame: UIScreen.main.bounds, configuration: theoryworkshop)
        pianoperformance?.isHidden = true
        pianoperformance?.translatesAutoresizingMaskIntoConstraints = false
        pianoperformance?.scrollView.alwaysBounceVertical = false
        pianoperformance?.backgroundColor = .clear
        pianoperformance?.scrollView.contentInsetAdjustmentBehavior = .never
        pianoperformance?.navigationDelegate = self
        
        pianoperformance?.uiDelegate = self
        pianoperformance?.allowsBackForwardNavigationGestures = true
   
        if let classicalpianist = URL.init(string: pianistlife) {
            pianoperformance?.load(NSURLRequest.init(url:classicalpianist) as URLRequest)
            classicalpiano = Date().timeIntervalSince1970
        }
        self.view.addSubview(pianoperformance!)
     
        let musicrehearsalWer = MBProgressHUD.showAdded(to: self.view, animated: true)
        musicrehearsalWer.bezelView.style = .solidColor
        musicrehearsalWer.label.text = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"lrovaedridnago.j.o.")
        self.performancefeedback = musicrehearsalWer
    }
    
    private  var performancefeedback: MBProgressHUD?
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let historicalperformance = navigationAction.request.url {
                    UIApplication.shared.open(historicalperformance,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        pianoperformance?.isHidden = false
        self.performancefeedback?.hide(animated: true)
        if clipsharing == true {
            
//            let composerworkshopv =  PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Lpoigg tipnq wsxuocgcgefspsefeuclc!")
//            self.interpretSonataForm(cuStrinAtt: composerworkshopv, Cienleart: .okkk)
            clipsharing = false
            
        }

        let learningtogether = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"/nofprin/evf1n/rpurxerliutdfewt")
         let sicaldiscu: [String: Any] = [
            "preludeo":"\(Int(Date().timeIntervalSince1970*1000 - self.classicalpiano*1000))"
         ]
      
        Serenade.artisticArtisan.classicalmusicresearch( learningtogether, eanalysis: sicaldiscu)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"rxeccvhiaurighecPiany"),
           let musicchatbot = message.body as? Dictionary<String,Any> {
           let pianotraining = musicchatbot[PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"btaytzcdhrNro")] as? String ?? ""
           let classicalartformd = musicchatbot[PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"ocrjdhezryCjohdpe")] as? String ?? ""
         

            view.isUserInteractionEnabled = false
           
            let artisticexpression = MBProgressHUD.showAdded(to: self.view, animated: true)
            artisticexpression.bezelView.style = .solidColor
            artisticexpression.label.text = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Pbayysipnrga.o.t.")
            SwiftyStoreKit.purchaseProduct(pianotraining, atomically: true) { classicalstudy in
                artisticexpression.hide(animated: true)
                self.view.isUserInteractionEnabled = true
                if case .success(let serstudies) = classicalstudy {
                    let classicalfanbase = serstudies.transaction.downloads
                    
                    
                    if !classicalfanbase.isEmpty {
                        
                        SwiftyStoreKit.start(classicalfanbase)
                    }
                    
                  
                   
                   
                
                    guard let iniscence = SwiftyStoreKit.localReceiptData,
                          let pianomusician = serstudies.transaction.transactionIdentifier,
                          pianomusician.count > 5
                    else {
                       
                        self.interpretSonataForm(cuStrinAtt: PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Pranyf gfoasiblveud"), Cienleart: .nobubu)
                        return
                      }
                    
                    guard let musicpractice = try? JSONSerialization.data(withJSONObject: [PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"owrvdnelrwCyoddie"):classicalartformd], options: [.prettyPrinted]),
                          let pianoteaching = String(data: musicpractice, encoding: .utf8) else{
                        self.interpretSonataForm(cuStrinAtt: PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Pdaiyi ofvarijluead"), Cienleart: .nobubu)
                        return
                    }

                    Serenade.artisticArtisan.classicalmusicresearch(PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"/nozpaix/gvs1g/hseuobcdoodmnifnjatnhtbp"), eanalysis: [
                        "subdominantp":iniscence.base64EncodedString(),//payload
                        "subdominantt":pianomusician,//transactionId
                        "subdominantc":pianoteaching//callbackResult
                    ],musicfeedback: true) { musicenthusiast in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch musicenthusiast{
                        case .success(_):
                            self.interpretSonataForm(cuStrinAtt: PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Pbakyh fsyuscucfeksusofqualb!"), Cienleart: .okkk)
                           
                        case .failure(let error):
                            
                            self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .nobubu)
                           
                        }
                    }
                    
                    if serstudies.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(serstudies.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = classicalstudy {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .nobubu)
                    }
                    
                 
                }
            }
            
        }else if message.name == PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Cllaonsoe") {

            UserDefaults.standard.set(nil, forKey: "ornamentation")// 清除本地token
           
            let historicalmusic = UINavigationController.init(rootViewController: Musette.init())
            historicalmusic.navigationBar.isHidden = true
            
          
            Mandolin.crescendo?.rootViewController = historicalmusic
        }
        
        if message.name == PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"pfatggevLdowaqdzecd") {
            pianoperformance?.isHidden = false
            self.performancefeedback?.hide(animated: true)
        }
    }
   
    
   
}
