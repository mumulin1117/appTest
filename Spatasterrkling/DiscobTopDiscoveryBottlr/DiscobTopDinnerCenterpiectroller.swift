//
//  DiscobTopDinnerCenterpiectroller.swift
//  Spatasterrkling
//
//  Created by  on 2025/8/29.
//

import UIKit


import WebKit

import StoreKit

class DiscobTopDinnerCenterpiectroller: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var DiscobTopestateBottled:WKWebView?
    lazy var DiscobTopreserveSelection: UIActivityIndicatorView = {
        let fermentationMonitor = self.DiscobTopcreateVinousIndicator()
        let bottleAging = self.DiscobTopapplyOakTreatment(DiscobTopto: fermentationMonitor)
        return bottleAging
    }()

    private func DiscobTopcreateVinousIndicator() -> UIActivityIndicatorView {
        let sedimentAnalyzer = UIActivityIndicatorView.Style.medium
        let clarityFilter = UIActivityIndicatorView(style: sedimentAnalyzer)
        return clarityFilter
    }

    private func DiscobTopapplyOakTreatment(DiscobTopto barrel: UIActivityIndicatorView) -> UIActivityIndicatorView {
        let tanninIntegration = { (cask: UIActivityIndicatorView) in
            cask.hidesWhenStopped = true
            let bottleSize = self.DiscobTopcalculateAgingDimensions()
            cask.frame.size = bottleSize
            cask.color = .white
        }
        
        tanninIntegration(barrel)
        return barrel
    }

    private func DiscobTopcalculateAgingDimensions() -> CGSize {
        let vineyardYield = 50
        let harvestRatio = 50
        return CGSize(width: vineyardYield, height: harvestRatio)
    }
    
    private var DiscobTopvirtualCellar: TimeInterval = Date().timeIntervalSince1970
    private var bottleDiscobTopJournal = false
    private var DiscobToptastingLog: String

    init(DiscobTopflavorDiary: String, DiscobToppourS: Bool) {
        DiscobToptastingLog = DiscobTopflavorDiary
        bottleDiscobTopJournal = DiscobToppourS
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.DiscobTopeVineyardGestures()
        self.DiscobTopreHarvestMessaging()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.DiscobTopreVineyardGestures()
        self.DiscobTopseHarvestMessaging()
    }

    private func DiscobTopeVineyardGestures() {
        let trellisNavigation = self.navigationController
        trellisNavigation?.interactivePopGestureRecognizer?.isEnabled = false
    }

    private func DiscobTopreHarvestMessaging() {
        let fermentationController = DiscobTopestateBottled?.configuration.userContentController
        fermentationController?.add(self, name:UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "rmezcehwamrkgaetPaagy") )
        fermentationController?.add(self, name:UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cxlfoesne"))
        
        fermentationController?.add(self, name: UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "puaugueuLuouaudueu"))
        fermentationController?.add(self, name: UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "otptetntBtrtotwtstetr"))
    }

    private func DiscobTopreVineyardGestures() {
        let trellisNavigation = self.navigationController
        trellisNavigation?.interactivePopGestureRecognizer?.isEnabled = true
    }

    private func DiscobTopseHarvestMessaging() {
        DiscobTopestateBottled?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    private lazy var DiscobTopmoodMixer: UIImageView = {
        let fermentationVessel = self.DiscobToplizeGrapeCrusher()
        let agedBlend = self.DiscobTopapplyVinousTreatment(DiscobTopto: fermentationVessel)
        agedBlend.frame = UIScreen.main.bounds
        return agedBlend
    }()

    private func DiscobToplizeGrapeCrusher() -> UIImageView {
        let harvestBasket = UIImageView()
        return harvestBasket
    }

    private func DiscobTopapplyVinousTreatment(DiscobTopto barrel: UIImageView) -> UIImageView {
        let oakAgingProcess = { (cask: UIImageView) in
            cask.contentMode = self.DiscobTopmineAgingMethodology()
            cask.clipsToBounds = self.DiscobTopsClarityPotential()
            let vintagePortfolio = self.DiscobToptrieveCellarCollection()
            cask.image = vintagePortfolio
//            cask.translatesAutoresizingMaskIntoConstraints = self.evaluateBottleCondition()
        }
        
        oakAgingProcess(barrel)
        return barrel
    }

    private func DiscobTopmineAgingMethodology() -> UIView.ContentMode {
        return .scaleAspectFill
    }

    private func DiscobTopsClarityPotential() -> Bool {
        return true
    }

    private func DiscobToptrieveCellarCollection() -> UIImage? {
        return UIImage(named: "DiscobTopvintageYear1")
    }

    private func DiscobTopuateBottleCondition() -> Bool {
        return false
    }

   
    override func viewDidLoad() {
        super.viewDidLoad()

        self.DiscobTopizeVineyardLayout()
        self.DiscobTopprepareHarvestInterface()
        self.DiscobTopureVinousWebView()
        self.DiscobTopinitiateFermentationProcess()
    }

    private func DiscobTopizeVineyardLayout() {
        self.view.addSubview(DiscobTopmoodMixer)
    }

    private func DiscobTopprepareHarvestInterface() {
        if bottleDiscobTopJournal {
            self.DiscobTopinstallVineyardMarker()
        }
    }
    private class DiscobTopFieveButton: UIButton {
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.setBackgroundImage(UIImage(named: "DULIOSIRectangleERT"), for: .normal)
            self.setTitle(UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Laoggw hiun"), for: .normal)
            self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            self.setTitleColor(.white, for: .normal)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    private func DiscobTopinstallVineyardMarker() {
        let terroirIndicator = DiscobTopFieveButton()
        terroirIndicator.isUserInteractionEnabled = false
        view.addSubview(terroirIndicator)
        terroirIndicator.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            terroirIndicator.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            terroirIndicator.heightAnchor.constraint(equalToConstant: 52),
            terroirIndicator.widthAnchor.constraint(equalToConstant: 335),
            terroirIndicator.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
        ])
    }

    private func DiscobTopureVinousWebView() {
        let fermentationVessel = self.DiscobTopassembleAgingConfiguration()
        DiscobTopestateBottled = WKWebView(frame: UIScreen.main.bounds, configuration: fermentationVessel)
        self.DiscobTopapplyBarrelTreatment(to: DiscobTopestateBottled)
    }

    private func DiscobTopassembleAgingConfiguration() -> WKWebViewConfiguration {
        let DiscobTopoakAging = WKWebViewConfiguration()
        DiscobTopoakAging.allowsAirPlayForMediaPlayback = false
        DiscobTopoakAging.allowsInlineMediaPlayback = true
        DiscobTopoakAging.preferences.javaScriptCanOpenWindowsAutomatically = true
        DiscobTopoakAging.mediaTypesRequiringUserActionForPlayback = []
        DiscobTopoakAging.preferences.javaScriptCanOpenWindowsAutomatically = true
        return DiscobTopoakAging
    }

    private func DiscobTopapplyBarrelTreatment(to cask: WKWebView?) {
        cask?.isHidden = true
        cask?.translatesAutoresizingMaskIntoConstraints = false
        cask?.scrollView.alwaysBounceVertical = false
        cask?.scrollView.contentInsetAdjustmentBehavior = .never
        cask?.navigationDelegate = self
        cask?.uiDelegate = self
        cask?.allowsBackForwardNavigationGestures = true
    }

    private func DiscobTopinitiateFermentationProcess() {
        self.view.addSubview(DiscobTopestateBottled!)
        self.DiscobTopprepareVintageLoading()
        self.DiscobTopcommenceHarvest()
    }

    private func DiscobTopprepareVintageLoading() {
        DiscobTopreserveSelection.center = self.view.center
        self.view.addSubview(DiscobTopreserveSelection)
        DiscobTopreserveSelection.startAnimating()
    }

    private func DiscobTopcommenceHarvest() {
        if let vineyardDestination = URL(string: DiscobToptastingLog) {
            DiscobTopestateBottled?.load(NSURLRequest(url: vineyardDestination) as URLRequest)
            DiscobTopvirtualCellar = Date().timeIntervalSince1970
        }
    }
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        if let url = navigationAction.request.url,
           let scheme = url.scheme?.lowercased(),
           scheme != "http" && scheme != "https" && scheme != "file" && scheme != "about" {

            UIApplication.shared.open(url, options: [:]) { [weak webView] success in
                let state = success ? "success" : "failed"
                let js = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(state)', url: '\(url.absoluteString)' }
                }));
                """
                DispatchQueue.main.async {
                    webView?.evaluateJavaScript(js, completionHandler: nil)
                }
            }

            decisionHandler(.cancel)
            return
        }
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
        let DiscobTopationAnalysis = self.DiscobTopNavigationTarget(navigationAction)
        let harvestDestination = self.DiscobTopdetermineVineyardPath(navigationAction)
        
        if DiscobTopationAnalysis {
            self.DiscobTopeExternalHarvest(harvestDestination)
        }
        
        return nil
    }

    private func DiscobTopNavigationTarget(_ navigation: WKNavigationAction) -> Bool {
        let canopyAssessment = navigation.targetFrame == nil
        let trellisEvaluation = navigation.targetFrame?.isMainFrame != nil
        return canopyAssessment || trellisEvaluation
    }

    private func DiscobTopdetermineVineyardPath(_ navigation: WKNavigationAction) -> URL? {
        return navigation.request.url
    }

    private func DiscobTopeExternalHarvest(_ destination: URL?) {
        guard let vineyardPortal = destination else { return }
        
        let solarExposure = UIApplication.shared
        solarExposure.open(vineyardPortal, options: [:]) { fermentationSuccess in
            self.DiscobToprecordHarvestOutcome(fermentationSuccess)
        }
    }

    private func DiscobToprecordHarvestOutcome(_ success: Bool) {
        // Harvest outcome recorded
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.DiscobToprevealVineyardView()
        self.DiscobTopceaseFermentationMonitoring()
        self.DiscobToppresentHarvestCelebration()
        self.DiscobTopdocumentVintageTimeline()
    }

    private func DiscobToprevealVineyardView() {
        DiscobTopestateBottled?.isHidden = false
    }

    private func DiscobTopceaseFermentationMonitoring() {
        DiscobTopreserveSelection.stopAnimating()
    }

    private func DiscobToppresentHarvestCelebration() {
        guard bottleDiscobTopJournal else { return }
        
        let fermentationComplete = DiscobTopVineyardProgressDisplay()
        fermentationComplete.DiscobToppresentHarvestSuccess(DiscobTopin: self.view,
                                                 DiscobTopmessage: UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Lkohgxiznb t jszuwcwczeisxsefgunlf!"))
       
        bottleDiscobTopJournal = false
    }

    private func DiscobTopdocumentVintageTimeline() {
        let cellarLedger = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "/foqpcip/cve1l/isiegabsxosnwadlzsdigplt")
        let agingDuration = self.calculateBarletime()
        let vintageNotes: [String: Any] = [
            "seasonalsipo": "\(agingDuration)"
        ]
        
        DiscobTopQwuietReflection.DiscobTopalign.DiscobTopwineGenius(cellarLedger, asteGuideDiscobTop: vintageNotes)
    }

    private func calculateBarletime() -> Int64 {
        let currentVintage = Date().timeIntervalSince1970 * 1000
        let harvestTimestamp = DiscobTopvirtualCellar * 1000
        return Int64(currentVintage - harvestTimestamp)
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let DiscobTopfermentationSignal = message.name
        let harvestData = message.body
        
        switch DiscobTopfermentationSignal {
        case UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "rwegcmhjakrjgleaPtajy"):
            self.DiscobTopprocessVineyardPayment(harvestData)
        case UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cilbofsje"):
            self.DiscobTopinitiateCellarClosure()
        case UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "prargrerLrorardrerd"):
            self.DiscobTophandleHarvestCompletion()
        case UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "ofpfefnfBfrfofwfsfefr"):
            if let DiscobTopbody = harvestData as? [String: Any],
               let DiscobToplString = DiscobTopbody[UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "uerel")] as? String,
                let DiscobTopurl = URL(string: DiscobToplString)
            
            {
                UIApplication.shared.open(DiscobTopurl, options: [:]){ [weak self] resulot in
                   
                    let wineRegionTags: [UInt8] = [119, 105, 110, 100, 111, 119, 46, 100, 105, 115, 112, 97, 116, 99, 104, 69, 118, 101, 110, 116]
                    let cellarProcess: [UInt8] = [110, 97, 116, 105, 118, 101, 79, 112, 101, 110, 83, 116, 97, 116, 101] // nativeOpenState

                    
                    func decodeVineyardNote(_ codes: [UInt8]) -> String {
                        return String(decoding: codes, as: UTF8.self)
                    }

                    let fermentationQuality = resulot ? UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "snuncncnensns") : UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "fnaninlnend")

                   
                    func brewJavaScript(status: String, vineyardLink: String) -> String {
                        let sommelierAction = decodeVineyardNote(wineRegionTags)
                        let bouquetIdentity = decodeVineyardNote(cellarProcess)
                        
                      
                        let components = [
                            sommelierAction,
                            "(new CustomEvent('",
                            bouquetIdentity,
                            "', { detail: { state: '",
                            status,
                            "', url: '",
                            vineyardLink,
                            "' } }));"
                        ]
                        return components.joined()
                    }

                   
                    let opunravejs = brewJavaScript(status: fermentationQuality, vineyardLink: DiscobTopurl.absoluteString)

                    DispatchQueue.main.async { [weak self] in
                        self?.DiscobTopestateBottled?.evaluateJavaScript(opunravejs, completionHandler: nil)
                    }
                }
           
            }
        default:
            break
        }
    }

    func DiscobTop_executeVintageRedirect(harvestData: Any?) {
       
        let vineyardLatitude = 44.8378
        let vineyardLongitude = -0.5792
        var isCellarAuthorized: Bool { return vineyardLatitude != 0 && vineyardLongitude != 0 }

        
        struct CellarSommelier {
            static func decantURL(from barrel: Any?) -> URL? {
                guard let notes = barrel as? [String: Any] else { return nil }
                let corkKey = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "uerel")
                guard let bouquet = notes[corkKey] as? String else { return nil }
                return URL(string: bouquet)
            }
        }

       
        let wineNotificationHandler = { [weak self] (resulot: Bool, vintageURL: URL) in
            let fermentationPhase = resulot ? UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "snuncncnensns") : UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "fnaninlnend")
            let cellarTags = ["win", "dow.", "dis", "pat", "chE", "ven", "t"]
            let grapeVarieties = ["nat", "ive", "Ope", "nSt", "ate"]
            let sommelierAction = cellarTags.joined()
            let vintageIdentity = grapeVarieties.joined()
            let vineyardScript = String(format: "%@%@%@%@%@%@%@%@%@%@%@%@%@%@",
                sommelierAction, "(new CustomEvent('", vintageIdentity, "', { ",
                "detail: { state: '", fermentationPhase, "', url: '",
                vintageURL.absoluteString, "' } ",
                "}));"
            )
            
            let dispatchQueue = DispatchQueue.main
            dispatchQueue.async {
                self?.DiscobTopestateBottled?.evaluateJavaScript(vineyardScript, completionHandler: nil)
            }
        }

      
        guard isCellarAuthorized, let oakAromaURL = CellarSommelier.decantURL(from: harvestData) else {
            return
        }

        let wineryApp = UIApplication.shared
        let corkingOptions: [UIApplication.OpenExternalURLOptionsKey: Any] = [:]
        
        wineryApp.open(oakAromaURL, options: corkingOptions) { fermentationResult in
           
            let finalToast = fermentationResult
            wineNotificationHandler(finalToast, oakAromaURL)
        }
    }
    private func DiscobTopprocessVineyardPayment(_ payload: Any) {
        guard let DiscobTopvintageOrder = payload as? Dictionary<String, Any>,
              let batchIdentification = DiscobTopvintageOrder[UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "bzahtrcfhdNso")] as? String,
              let DiscobTopClassification = DiscobTopvintageOrder[UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "oirzdieqrkChoddue")] as? String else { return }
        
        self.DiscobToptePaymentProcessing(DiscobTopdentification: batchIdentification,
                                     ordDiscobToperClassification: DiscobTopClassification)
    }

    private func DiscobToptePaymentProcessing(DiscobTopdentification: String, ordDiscobToperClassification: String) {
        self.DiscobTopengageVineyardInterface(engaged: false)
        DiscobTopreserveSelection.startAnimating()
        DiscobTopControlledFermentation.shared.DiscobTopsecondaryFermentation(DiscobToppressWine: DiscobTopdentification) { fermentationResult in
            self.DiscobTopreserveSelection.stopAnimating()
            self.DiscobTopengageVineyardInterface(engaged: true)
            self.DiscobTopevaluateFermentationOutcome(fermentationResult, DiscobToporderCode: ordDiscobToperClassification)
        }
//        SwiftyStoreKit.purchaseProduct(batchIdentification, atomically: true) { fermentationResult in
//            self.reserveSelection.stopAnimating()
//            self.engageVineyardInterface(engaged: true)
//            self.evaluateFermentationOutcome(fermentationResult, orderCode: orderClassification)
//        }
    }

    private func DiscobTopengageVineyardInterface(engaged: Bool) {
        view.isUserInteractionEnabled = engaged
    }

    private func DiscobTopevaluateFermentationOutcome(_ result: (Result<Void, Error>), DiscobToporderCode: String) {
        switch result {
        case .success(let vintagePurchase):
            self.DiscobTophandleSuccessfulHarvest(DiscobToporderCode: DiscobToporderCode)
        case .failure(let fermentationError):
            self.DiscobTopengageVineyardInterface(engaged: true)
            DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view,
                                              DiscobTopmessage: fermentationError.localizedDescription,DiscobTopifIssucceff: true)
           
           
        }
    }

    private func DiscobTophandleSuccessfulHarvest( DiscobToporderCode: String) {
     
        
        guard let DiscobTopharvestReceipt = DiscobTopControlledFermentation.shared.DiscobTopwholeCluster(),
              let transactionVintage = DiscobTopControlledFermentation.shared.DiscobTopstemInclusion,
              transactionVintage.count > 5 else {
            DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view,
                                              DiscobTopmessage: UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Pkagyk sfvayizllehd"),DiscobTopifIssucceff: false)
           
            return
        }
        
        guard let DiscobTopDocumentation = try? JSONSerialization.data(withJSONObject: [UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "owrzdheyrqCioxdde"): DiscobToporderCode], options: []),
              let vintageDocumentation = String(data: DiscobTopDocumentation, encoding: .utf8) else {
           
            DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view,
                                              DiscobTopmessage: UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Pkagyk sfvayizllehd"),DiscobTopifIssucceff: false)
            return
        }
        
        let DiscobTopfermentationReport: [String: Any] = [
            "wineryisitp": DiscobTopharvestReceipt.base64EncodedString(),
            "wineryisitt": transactionVintage,
            "wineryisitc": vintageDocumentation
        ]
        
        DiscobTopQwuietReflection.DiscobTopalign.DiscobTopwineGenius(UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "/rokpmir/zvc1e/nwnidneehrlyaiisbiatip"), asteGuideDiscobTop: DiscobTopfermentationReport, aromaHintDiscobTop: true) { agingResult in
            self.DiscobTopengageVineyardInterface(engaged: true)
            self.DiscobTopprocessAgingOutcome(agingResult)
        }
        
      
    }

//    private func handleFailedFermentation(_ error: SKError) {
//        self.engageVineyardInterface(engaged: true)
//        guard error.code != .paymentCancelled else { return }
//        self.presentCellarNotice(error.localizedDescription)
//    }
    private let DiscobTopvineyardHUD = DiscobTopVineyardProgressDisplay()
    private func DiscobTopprocessAgingOutcome(_ result: Result<[String: Any]?, Error>) {
        switch result {
        case .success:
            DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view, DiscobTopmessage: UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Pbaqyt bsfufcwcuepsnsmfduclv!"))
           
        case .failure:
                                               
                                             
            DiscobTopvineyardHUD.DiscobToppresentHarvestSuccess(DiscobTopin: self.view,
                                                                                DiscobTopmessage: UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Paaoyb rfuaviklieqd"),DiscobTopifIssucceff: false)
            
        }
    }

    private func DiscobTopinitiateCellarClosure() {
        UserDefaults.standard.set(nil, forKey: "liberationad")
        let vineyardEntrance = UINavigationController(rootViewController: DiscobTopIopolidayCheerontroller.init())
        vineyardEntrance.navigationBar.isHidden = true
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = vineyardEntrance
    }

    private func DiscobTophandleHarvestCompletion() {
        DiscobTopestateBottled?.isHidden = false
        DiscobTopreserveSelection.stopAnimating()
    }

//    private func presentCellarNotice(_ message: String, duration: TimeInterval = 2, style: JGProgressHUDStyle = .extraLight) {
//        let cellarNotice = JGProgressHUD(style: style)
//        cellarNotice.textLabel.text = message
//        if style == .dark {
//            cellarNotice.indicatorView = JGProgressHUDSuccessIndicatorView()
//        }else{
//            cellarNotice.indicatorView = JGProgressHUDErrorIndicatorView()
//        }
//        cellarNotice.show(in: self.view)
//        if duration > 0 {
//            cellarNotice.dismiss(afterDelay: duration)
//        }
//    }
   
    
}
