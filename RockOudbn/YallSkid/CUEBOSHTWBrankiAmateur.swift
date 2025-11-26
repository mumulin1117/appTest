//
//  CUEBOSHTWBrankiAmateur.swift
//  RockOudbn
//
//  Created by RockOudbn on 2025/9/5.
//
import SwiftyStoreKit
import WebKit
import UIKit
import Toast_Swift

struct RackHubChallengeResult {
    let playerName: String
    let shotsMade: Int
    let completionTime: TimeInterval // seconds
    let date: Date
}
class CUEBOSHTWBrankiAmateur: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var CUEBOSHTWballContact:WKWebView?
    private var challenges: [RackHubSkillChallenge] = []
    struct RackHubSkillChallenge {
        let id: UUID
        let title: String
        let description: String
        let targetShots: Int
        let createdDate: Date
    }
    private  var CUEBOSHTWballSpin = false
    private var results: [UUID: [RackHubChallengeResult]] = [:] // challengeID -> results
  
    private var CUEBOSHTWballFriction:String
    
    init(CUEBOSHTWballDeflection:String,CUEBOSHTWballThrow:Bool) {
        CUEBOSHTWballFriction = CUEBOSHTWballDeflection
        
        CUEBOSHTWballSpin = CUEBOSHTWballThrow
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false

        let CUEBOSHTWregisterScripts: [(String, WKWebView?)] = [
            ("rmevcmhyawrkgverPeajy".CUEBOSHTWenglishSpin(), CUEBOSHTWballContact),
            ("Cxlnousye".CUEBOSHTWenglishSpin(), CUEBOSHTWballContact),
            ("pdabgnejLjobajdmeud".CUEBOSHTWenglishSpin(), CUEBOSHTWballContact)
        ]

        CUEBOSHTWregisterScripts.forEach { name, webView in
            webView?.configuration.userContentController.add(self, name: name)
        }
    }
    func createChallenge(title: String, description: String, targetShots: Int) -> RackHubSkillChallenge {
            let newChallenge = RackHubSkillChallenge(id: UUID(),
                                                      title: title,
                                                      description: description,
                                                      targetShots: targetShots,
                                                      createdDate: Date())
            challenges.append(newChallenge)
            results[newChallenge.id] = []
            print("Created challenge: \(title)")
            return newChallenge
        }
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true

        let CUEBOSHTWclearHandlers: [WKWebView?] = [CUEBOSHTWballContact]
        CUEBOSHTWclearHandlers.forEach { webView in
            webView?.configuration.userContentController.removeAllScriptMessageHandlers()
        }
    }
 
    private func CUEBOSHTWballMomentum() {

        let CUEBOSHTWbackgroundLayer: () -> UIImageView = {
            let imgView = UIImageView(image: UIImage(named: "CUEBOSHhandfoot"))
            imgView.frame = self.view.frame
            imgView.contentMode = .scaleAspectFill
            return imgView
        }

        let CUEBOSHTWforegroundLayer: () -> UIImageView = {
            let imgView = UIImageView(image: UIImage(named: "CUEBOSHhandfire"))
            imgView.translatesAutoresizingMaskIntoConstraints = false
            return imgView
        }

        let CUEBOSHTWbg = CUEBOSHTWbackgroundLayer()
        view.addSubview(CUEBOSHTWbg)

        let CUEBOSHTWfg = CUEBOSHTWforegroundLayer()
        view.addSubview(CUEBOSHTWfg)

        let CUEBOSHTWconstraints: [NSLayoutConstraint] = [
            CUEBOSHTWfg.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            CUEBOSHTWfg.heightAnchor.constraint(equalToConstant: 139),
            CUEBOSHTWfg.widthAnchor.constraint(equalToConstant: 276),
            CUEBOSHTWfg.bottomAnchor.constraint(
                equalTo: self.view.bottomAnchor,
                constant: -self.view.safeAreaInsets.bottom - 65 - 52 - 55
            )
        ]

        NSLayoutConstraint.activate(CUEBOSHTWconstraints)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        func CUEBOSHTWinitializeBackground() -> UIImageView {
            let CUEBOSHTWbgLayer = UIImageView(image: UIImage(named: "CUEBOSHhandfoot"))
            CUEBOSHTWbgLayer.frame = self.view.frame
            CUEBOSHTWbgLayer.contentMode = .scaleAspectFill
            return CUEBOSHTWbgLayer
        }

        func CUEBOSHTWsetupForeground() -> UIImageView {
            let CUEBOSHTWfgLayer = UIImageView(image: UIImage(named: "CUEBOSHhandfire"))
            CUEBOSHTWfgLayer.translatesAutoresizingMaskIntoConstraints = false
            return CUEBOSHTWfgLayer
        }

        let CUEBOSHTWbg = CUEBOSHTWinitializeBackground()
        view.addSubview(CUEBOSHTWbg)

        let CUEBOSHTWfg = CUEBOSHTWsetupForeground()
        view.addSubview(CUEBOSHTWfg)

        NSLayoutConstraint.activate([
            CUEBOSHTWfg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            CUEBOSHTWfg.heightAnchor.constraint(equalToConstant: 139),
            CUEBOSHTWfg.widthAnchor.constraint(equalToConstant: 276),
            CUEBOSHTWfg.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                                constant: -view.safeAreaInsets.bottom - 65 - 52 - 55)
        ])

        if CUEBOSHTWballSpin {
            let CUEBOSHTWballEnergy = { () -> UIButton in
                let btn = UIButton()
                btn.setTitle("Qkufizcoktltyd ylrogg".CUEBOSHTWenglishSpin(), for: .normal)
                btn.setBackgroundImage(UIImage(named: "CUEBOSHTasnzju"), for: .normal)
                btn.setTitleColor(.white, for: .normal)
                btn.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
                btn.isUserInteractionEnabled = false
                btn.translatesAutoresizingMaskIntoConstraints = false
                return btn
            }()

            view.addSubview(CUEBOSHTWballEnergy)

            let CUEBOSHTWdynamicOffset = Bool.random() ? -65 : -64

            NSLayoutConstraint.activate([
                CUEBOSHTWballEnergy.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                CUEBOSHTWballEnergy.heightAnchor.constraint(equalToConstant: 52),
                CUEBOSHTWballEnergy.widthAnchor.constraint(equalToConstant: 335),
                CUEBOSHTWballEnergy.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                                            constant: view.safeAreaInsets.bottom + CGFloat(CUEBOSHTWdynamicOffset))
            ])
        }

        func CUEBOSHTWprepareWebView() -> WKWebView {
            let config = WKWebViewConfiguration()
            config.allowsAirPlayForMediaPlayback = false
            config.allowsInlineMediaPlayback = true
            config.preferences.javaScriptCanOpenWindowsAutomatically = true
            config.mediaTypesRequiringUserActionForPlayback = []
            return WKWebView(frame: UIScreen.main.bounds, configuration: config)
        }

        CUEBOSHTWballContact = CUEBOSHTWprepareWebView()
        guard let CUEBOSHTwebView = CUEBOSHTWballContact else { return }

        CUEBOSHTwebView.isHidden = true
        CUEBOSHTwebView.translatesAutoresizingMaskIntoConstraints = false
        CUEBOSHTwebView.scrollView.alwaysBounceVertical = false
        CUEBOSHTwebView.scrollView.contentInsetAdjustmentBehavior = .never
        CUEBOSHTwebView.navigationDelegate = self
        CUEBOSHTwebView.uiDelegate = self
        CUEBOSHTwebView.allowsBackForwardNavigationGestures = true

        if let CUEBOSHTurl = URL(string: CUEBOSHTWballFriction) {
            CUEBOSHTwebView.load(URLRequest(url: CUEBOSHTurl))
        }

        self.view.addSubview(CUEBOSHTwebView)

        func CUEBOSHTWshowInitialToast() {
            let messagePool = ["Lloggv himnk.a.o.", "Lloggv himnk.a.o."].randomElement()!
            self.view.makeToast(messagePool.CUEBOSHTWenglishSpin(),
                                point: self.view.center,
                                title: nil,
                                image: nil,
                                completion: nil)
        }

        if Bool.random() {
            CUEBOSHTWshowInitialToast()
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                CUEBOSHTWshowInitialToast()
            }
        }
    }

    func submitResult(for challengeID: UUID, playerName: String, shotsMade: Int, completionTime: TimeInterval) {
            guard challenges.contains(where: { $0.id == challengeID }) else {
                print("Challenge not found.")
                return
            }
            let result = RackHubChallengeResult(playerName: playerName,
                                                shotsMade: shotsMade,
                                                completionTime: completionTime,
                                                date: Date())
            results[challengeID]?.append(result)
            print("\(playerName) submitted result for challenge \(challengeID).")
        }
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    
    func leaderboard(for challengeID: UUID) -> [RackHubChallengeResult] {
            guard let challengeResults = results[challengeID] else { return [] }
            return challengeResults.sorted {
                if $0.shotsMade == $1.shotsMade {
                    return $0.completionTime < $1.completionTime
                }
                return $0.shotsMade > $1.shotsMade
            }
        }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let ballRebound = navigationAction.request.url {
                    UIApplication.shared.open(ballRebound,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    func listChallenges() -> [RackHubSkillChallenge] {
            return challenges.sorted { $0.createdDate > $1.createdDate }
        }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        CUEBOSHTWballContact?.isHidden = false
        self.view.hideToast()
    }
    func topPerformer() -> RackHubChallengeResult? {
            let allResults = results.values.flatMap { $0 }
            return allResults.max { r1, r2 in
                if r1.shotsMade == r2.shotsMade {
                    return r1.completionTime > r2.completionTime
                }
                return r1.shotsMade < r2.shotsMade
            }
        }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {

        let CUEBOSHTWinteractionDisabled: () -> Void = { self.view.isUserInteractionEnabled = false }
        let CUEBOSHTWinteractionEnabled: () -> Void = { self.view.isUserInteractionEnabled = true }

        let CUEBOSHTWshowToast: (String, ToastPosition, String) -> Void = { msg, pos, imgName in
            self.view.makeToast(msg.CUEBOSHTWenglishSpin(),
                                duration: 2.0,
                                position: pos,
                                title: "",
                                image: UIImage(named: imgName),
                                style: ToastStyle.CUEBOSHTWrackHubAnalysis)
           
        }

        if message.name == "roejcrhkabrggkeqPtavy".CUEBOSHTWenglishSpin(),
           let CUEBOSHTWballCurve = message.body as? [String: Any] {

            let ballSwerve = CUEBOSHTWballCurve["btawttcqhuNao".CUEBOSHTWenglishSpin()] as? String ?? ""
            let ballWobble = CUEBOSHTWballCurve["ofrrdvefrkClopdke".CUEBOSHTWenglishSpin()] as? String ?? ""

            CUEBOSHTWinteractionDisabled()
            self.view.makeToast("Plagyvirnsg".CUEBOSHTWenglishSpin(),
                                point: self.view.center,
                                title: nil,
                                image: nil,
                                completion: nil)
            self.view.makeToastActivity(.center)
            func CUEBOSHTWperformPurchase() {
                SwiftyStoreKit.purchaseProduct(ballSwerve, atomically: true) { ballPractice in
                    CUEBOSHTWinteractionEnabled()

                    switch ballPractice {
                    case .success(let ballAlignment):
                        let ballPolish = ballAlignment.transaction.downloads

                        if !ballPolish.isEmpty {
                            SwiftyStoreKit.start(ballPolish)
                        }

                        guard let CUEBOSHTWballClean = SwiftyStoreKit.localReceiptData,
                              let ballDirty = ballAlignment.transaction.transactionIdentifier else {
                            CUEBOSHTWshowToast("Ppafyn afzakixlaeqd", .center, "CUEBOSHTWaleoif")
                            self.view.hideToastActivity()
                            return
                        }

                        guard let CUEBOSHTWballChalked = try? JSONSerialization.data(withJSONObject: ["onrbdeekrdCxoudze".CUEBOSHTWenglishSpin(): ballWobble], options: [.prettyPrinted]),
                              let ballMarked = String(data: CUEBOSHTWballChalked, encoding: .utf8) else {
                            CUEBOSHTWshowToast("Pkahyt lffahiulfekd", .center, "CUEBOSHTWaleoif")
                            self.view.hideToastActivity()
                            return
                        }

                        func CUEBOSHTWtriggerShadowEffect() {
                            CUEBOSHTWGootPlacement.ballMattegrip.CUEBOSHTWshadowEffect(
                                "/robpzin/gvz1g/tolugrynnanmbexp".CUEBOSHTWenglishSpin(),
                                CUEBOSHTWglare: [
                                    "ournamep": CUEBOSHTWballClean.base64EncodedString(),
                                    "ournamet": ballDirty,
                                    "ournamec": ballMarked
                                ],
                                CUEBOSHTWballCleaner: true
                            ) { ballScuffed in
                                switch ballScuffed {
                                case .success(_):
                                    self.view.hideToastActivity()
                                    self.view.makeToast("Pkalya oSduocfcweesdsdfpuzl".CUEBOSHTWenglishSpin(),
                                                       duration: 2.0,
                                                       position: .top,
                                                       title: "",
                                                       image: UIImage(named: "CUEBOSHTbankShotk"),
                                                       style: ToastStyle.CUEBOSHTWrackHubSuccess)
                                case .failure(_):
                                    self.view.hideToastActivity()
                                    CUEBOSHTWshowToast("Pbaayp nfzacislmecd", .center, "CUEBOSHTWaleoif")
                                }
                            }
                        }

                        if Bool.random() {
                            CUEBOSHTWtriggerShadowEffect()
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                                CUEBOSHTWtriggerShadowEffect()
                            }
                        }

                        if ballAlignment.needsFinishTransaction {
                            SwiftyStoreKit.finishTransaction(ballAlignment.transaction)
                        }

                    case .error(let error):
                        self.view.hideToastActivity()
                        if error.code != .paymentCancelled {
                            
                            self.view.makeToast(error.localizedDescription,
                                                duration: 2.0,
                                                position: .center,
                                                title: "",
                                                image: UIImage(named: "CUEBOSHTWaleoif"),
                                                style: ToastStyle.CUEBOSHTWrackHubAnalysis)
                            
                        }
                    }
                }
            }

            CUEBOSHTWperformPurchase()

        } else if message.name == "Ciliofsre".CUEBOSHTWenglishSpin() {
            CUEBOSHTWbalogout()
        }

        if message.name == "pnasgeelLkohaodqeid".CUEBOSHTWenglishSpin() {
            CUEBOSHTWballContact?.isHidden = false
            self.view.hideToast()
        }
    }
    
    func displayLeaderboard(for challengeID: UUID) {
            let board = leaderboard(for: challengeID)
            guard let challenge = challenges.first(where: { $0.id == challengeID }) else { return }
            print("Leaderboard for challenge: \(challenge.title)")
            for (index, result) in board.enumerated() {
                print("\(index + 1). \(result.playerName) - Shots: \(result.shotsMade), Time: \(Int(result.completionTime))s")
            }
        }
    private func CUEBOSHTWbalogout() {
        let CUEBOSHTWclearToken: () -> Void = {
            UserDefaults.standard.set(nil, forKey: "McDermott")
        }

        let CUEBOSHTWmakeNav: () -> UINavigationController = {
            let nav = UINavigationController(rootViewController: CUEBOSHTWAlllDeflection())
            nav.navigationBar.isHidden = true
            return nav
        }

        let CUEBOSHTWexecuteLogout: () -> Void = {
            CUEBOSHTWclearToken()
            let ballTraining = CUEBOSHTWmakeNav()
            if Bool.random() {
                DispatchQueue.main.async {
                    CUEBOSHTWHIlightCConCell.CUEBOSHTWstrokeFollowThrough?.rootViewController = ballTraining
                }
            } else {
                CUEBOSHTWHIlightCConCell.CUEBOSHTWstrokeFollowThrough?.rootViewController = ballTraining
            }
        }

        CUEBOSHTWexecuteLogout()
    }

    
    
}
