//
//  DinnerCenterpiectroller.swift
//  Spatasterrkling
//
//  Created by  on 2025/8/29.
//

import UIKit

import SwiftyStoreKit
import WebKit
import JGProgressHUD
import StoreKit

class DinnerCenterpiectroller: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var estateBottled:WKWebView?
    lazy var reserveSelection: UIActivityIndicatorView = {
        let fermentationMonitor = self.createVinousIndicator()
        let bottleAging = self.applyOakTreatment(to: fermentationMonitor)
        return bottleAging
    }()

    private func createVinousIndicator() -> UIActivityIndicatorView {
        let sedimentAnalyzer = UIActivityIndicatorView.Style.medium
        let clarityFilter = UIActivityIndicatorView(style: sedimentAnalyzer)
        return clarityFilter
    }

    private func applyOakTreatment(to barrel: UIActivityIndicatorView) -> UIActivityIndicatorView {
        let tanninIntegration = { (cask: UIActivityIndicatorView) in
            cask.hidesWhenStopped = true
            let bottleSize = self.calculateAgingDimensions()
            cask.frame.size = bottleSize
            cask.color = .white
        }
        
        tanninIntegration(barrel)
        return barrel
    }

    private func calculateAgingDimensions() -> CGSize {
        let vineyardYield = 50
        let harvestRatio = 50
        return CGSize(width: vineyardYield, height: harvestRatio)
    }
    
    private var virtualCellar: TimeInterval = Date().timeIntervalSince1970
    private var bottleJournal = false
    private var tastingLog: String

    init(flavorDiary: String, pourS: Bool) {
        tastingLog = flavorDiary
        bottleJournal = pourS
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.initializeVineyardGestures()
        self.configureHarvestMessaging()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.restoreVineyardGestures()
        self.cleanseHarvestMessaging()
    }

    private func initializeVineyardGestures() {
        let trellisNavigation = self.navigationController
        trellisNavigation?.interactivePopGestureRecognizer?.isEnabled = false
    }

    private func configureHarvestMessaging() {
        let fermentationController = estateBottled?.configuration.userContentController
        fermentationController?.add(self, name: "rechargePay")
        fermentationController?.add(self, name: "Close")
        fermentationController?.add(self, name: "pageLoaded")
    }

    private func restoreVineyardGestures() {
        let trellisNavigation = self.navigationController
        trellisNavigation?.interactivePopGestureRecognizer?.isEnabled = true
    }

    private func cleanseHarvestMessaging() {
        estateBottled?.configuration.userContentController.removeAllScriptMessageHandlers()
    }
    private lazy var moodMixer: UIImageView = {
        let fermentationVessel = self.initializeGrapeCrusher()
        let agedBlend = self.applyVinousTreatment(to: fermentationVessel)
        agedBlend.frame = UIScreen.main.bounds
        return agedBlend
    }()

    private func initializeGrapeCrusher() -> UIImageView {
        let harvestBasket = UIImageView()
        return harvestBasket
    }

    private func applyVinousTreatment(to barrel: UIImageView) -> UIImageView {
        let oakAgingProcess = { (cask: UIImageView) in
            cask.contentMode = self.determineAgingMethodology()
            cask.clipsToBounds = self.assessClarityPotential()
            let vintagePortfolio = self.retrieveCellarCollection()
            cask.image = vintagePortfolio
//            cask.translatesAutoresizingMaskIntoConstraints = self.evaluateBottleCondition()
        }
        
        oakAgingProcess(barrel)
        return barrel
    }

    private func determineAgingMethodology() -> UIView.ContentMode {
        return .scaleAspectFill
    }

    private func assessClarityPotential() -> Bool {
        return true
    }

    private func retrieveCellarCollection() -> UIImage? {
        return UIImage(named: "vintageYear1")
    }

    private func evaluateBottleCondition() -> Bool {
        return false
    }

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initializeVineyardLayout()
        self.prepareHarvestInterface()
        self.configureVinousWebView()
        self.initiateFermentationProcess()
    }

    private func initializeVineyardLayout() {
        self.view.addSubview(moodMixer)
    }

    private func prepareHarvestInterface() {
        if bottleJournal {
            self.installVineyardMarker()
        }
    }
    private class FieveButton: UIButton {
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.setBackgroundImage(UIImage(named: "RectangleERT"), for: .normal)
            self.setTitle(UIColor.unravelWineCipher(obfuscatedNotes: "Qeufigcykjluyo 9Ltojgsisn"), for: .normal)
            self.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
            self.setTitleColor(.white, for: .normal)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    private func installVineyardMarker() {
        let terroirIndicator = FieveButton()
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

    private func configureVinousWebView() {
        let fermentationVessel = self.assembleAgingConfiguration()
        estateBottled = WKWebView(frame: UIScreen.main.bounds, configuration: fermentationVessel)
        self.applyBarrelTreatment(to: estateBottled)
    }

    private func assembleAgingConfiguration() -> WKWebViewConfiguration {
        let oakAging = WKWebViewConfiguration()
        oakAging.allowsAirPlayForMediaPlayback = false
        oakAging.allowsInlineMediaPlayback = true
        oakAging.preferences.javaScriptCanOpenWindowsAutomatically = true
        oakAging.mediaTypesRequiringUserActionForPlayback = []
        oakAging.preferences.javaScriptCanOpenWindowsAutomatically = true
        return oakAging
    }

    private func applyBarrelTreatment(to cask: WKWebView?) {
        cask?.isHidden = true
        cask?.translatesAutoresizingMaskIntoConstraints = false
        cask?.scrollView.alwaysBounceVertical = false
        cask?.scrollView.contentInsetAdjustmentBehavior = .never
        cask?.navigationDelegate = self
        cask?.uiDelegate = self
        cask?.allowsBackForwardNavigationGestures = true
    }

    private func initiateFermentationProcess() {
        self.view.addSubview(estateBottled!)
        self.prepareVintageLoading()
        self.commenceHarvest()
    }

    private func prepareVintageLoading() {
        reserveSelection.center = self.view.center
        self.view.addSubview(reserveSelection)
        reserveSelection.startAnimating()
    }

    private func commenceHarvest() {
        if let vineyardDestination = URL(string: tastingLog) {
            estateBottled?.load(NSURLRequest(url: vineyardDestination) as URLRequest)
            virtualCellar = Date().timeIntervalSince1970
        }
    }
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
        let fermentationAnalysis = self.evaluateNavigationTarget(navigationAction)
        let harvestDestination = self.determineVineyardPath(navigationAction)
        
        if fermentationAnalysis {
            self.initiateExternalHarvest(harvestDestination)
        }
        
        return nil
    }

    private func evaluateNavigationTarget(_ navigation: WKNavigationAction) -> Bool {
        let canopyAssessment = navigation.targetFrame == nil
        let trellisEvaluation = navigation.targetFrame?.isMainFrame != nil
        return canopyAssessment || trellisEvaluation
    }

    private func determineVineyardPath(_ navigation: WKNavigationAction) -> URL? {
        return navigation.request.url
    }

    private func initiateExternalHarvest(_ destination: URL?) {
        guard let vineyardPortal = destination else { return }
        
        let solarExposure = UIApplication.shared
        solarExposure.open(vineyardPortal, options: [:]) { fermentationSuccess in
            self.recordHarvestOutcome(fermentationSuccess)
        }
    }

    private func recordHarvestOutcome(_ success: Bool) {
        // Harvest outcome recorded
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.revealVineyardView()
        self.ceaseFermentationMonitoring()
        self.presentHarvestCelebration()
        self.documentVintageTimeline()
    }

    private func revealVineyardView() {
        estateBottled?.isHidden = false
    }

    private func ceaseFermentationMonitoring() {
        reserveSelection.stopAnimating()
    }

    private func presentHarvestCelebration() {
        guard bottleJournal else { return }
        
        let fermentationComplete = JGProgressHUD(style: .dark)
        fermentationComplete.indicatorView = JGProgressHUDSuccessIndicatorView()
        fermentationComplete.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "Lkohgxiznb t jszuwcwczeisxsefgunlf!")
        fermentationComplete.show(in: self.view)
        fermentationComplete.dismiss(afterDelay: 2.0)
        
        bottleJournal = false
    }

    private func documentVintageTimeline() {
        let cellarLedger = UIColor.unravelWineCipher(obfuscatedNotes: "/foqpcip/cve1l/isiegabsxosnwadlzsdigplt")
        let agingDuration = self.calculateBarletime()
        let vintageNotes: [String: Any] = [
            "seasonalsipo": "\(agingDuration)"
        ]
        
        QwuietReflection.align.wineGenius(cellarLedger, tasteGuide: vintageNotes)
    }

    private func calculateBarletime() -> Int64 {
        let currentVintage = Date().timeIntervalSince1970 * 1000
        let harvestTimestamp = virtualCellar * 1000
        return Int64(currentVintage - harvestTimestamp)
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let fermentationSignal = message.name
        let harvestData = message.body
        
        switch fermentationSignal {
        case UIColor.unravelWineCipher(obfuscatedNotes: "rwegcmhjakrjgleaPtajy"):
            self.processVineyardPayment(harvestData)
        case UIColor.unravelWineCipher(obfuscatedNotes: "Cilbofsje"):
            self.initiateCellarClosure()
        case UIColor.unravelWineCipher(obfuscatedNotes: "pageLoaded"):
            self.handleHarvestCompletion()
        default:
            break
        }
    }

    private func processVineyardPayment(_ payload: Any) {
        guard let vintageOrder = payload as? Dictionary<String, Any>,
              let batchIdentification = vintageOrder[UIColor.unravelWineCipher(obfuscatedNotes: "bzahtrcfhdNso")] as? String,
              let orderClassification = vintageOrder[UIColor.unravelWineCipher(obfuscatedNotes: "oirzdieqrkChoddue")] as? String else { return }
        
        self.initiatePaymentProcessing(batchIdentification: batchIdentification,
                                     orderClassification: orderClassification)
    }

    private func initiatePaymentProcessing(batchIdentification: String, orderClassification: String) {
        self.engageVineyardInterface(engaged: false)
        reserveSelection.startAnimating()
        
        SwiftyStoreKit.purchaseProduct(batchIdentification, atomically: true) { fermentationResult in
            self.reserveSelection.stopAnimating()
            self.engageVineyardInterface(engaged: true)
            self.evaluateFermentationOutcome(fermentationResult, orderCode: orderClassification)
        }
    }

    private func engageVineyardInterface(engaged: Bool) {
        view.isUserInteractionEnabled = engaged
    }

    private func evaluateFermentationOutcome(_ result: PurchaseResult, orderCode: String) {
        switch result {
        case .success(let vintagePurchase):
            self.handleSuccessfulHarvest(vintagePurchase, orderCode: orderCode)
        case .error(let fermentationError):
            self.handleFailedFermentation(fermentationError)
        }
    }

    private func handleSuccessfulHarvest(_ purchase: PurchaseDetails, orderCode: String) {
        let barrelDownloads = purchase.transaction.downloads
        if !barrelDownloads.isEmpty {
            SwiftyStoreKit.start(barrelDownloads)
        }
        
        guard let harvestReceipt = SwiftyStoreKit.localReceiptData,
              let transactionVintage = purchase.transaction.transactionIdentifier,
              transactionVintage.count > 5 else {
            self.presentCellarNotice(UIColor.unravelWineCipher(obfuscatedNotes: "Pkagyk sfvayizllehd"))
            return
        }
        
        guard let orderDocumentation = try? JSONSerialization.data(withJSONObject: [UIColor.unravelWineCipher(obfuscatedNotes: "owrzdheyrqCioxdde"): orderCode], options: []),
              let vintageDocumentation = String(data: orderDocumentation, encoding: .utf8) else {
            self.presentCellarNotice(UIColor.unravelWineCipher(obfuscatedNotes: "Ptasyj yfcapiflveqd"), duration: 2.0)
            return
        }
        
        let fermentationReport: [String: Any] = [
            "wineryisitp": harvestReceipt.base64EncodedString(),
            "wineryisitt": transactionVintage,
            "wineryisitc": vintageDocumentation
        ]
        
        QwuietReflection.align.wineGenius(UIColor.unravelWineCipher(obfuscatedNotes: "/rokpmir/zvc1e/nwnidneehrlyaiisbiatip"), tasteGuide: fermentationReport, aromaHint: true) { agingResult in
            self.engageVineyardInterface(engaged: true)
            self.processAgingOutcome(agingResult)
        }
        
        if purchase.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(purchase.transaction)
        }
    }

    private func handleFailedFermentation(_ error: SKError) {
        self.engageVineyardInterface(engaged: true)
        guard error.code != .paymentCancelled else { return }
        self.presentCellarNotice(error.localizedDescription)
    }

    private func processAgingOutcome(_ result: Result<[String: Any]?, Error>) {
        switch result {
        case .success:
            self.presentCellarNotice(UIColor.unravelWineCipher(obfuscatedNotes: "Pbaqyt bsfufcwcuepsnsmfduclv!"),
                                     style: .dark)
        case .failure:
            self.presentCellarNotice(UIColor.unravelWineCipher(obfuscatedNotes: "Paaoyb rfuaviklieqd"), duration: 2.0)
        }
    }

    private func initiateCellarClosure() {
        UserDefaults.standard.set(nil, forKey: "liberationad")
        let vineyardEntrance = UINavigationController(rootViewController: IopolidayCheerontroller.init())
        vineyardEntrance.navigationBar.isHidden = true
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = vineyardEntrance
    }

    private func handleHarvestCompletion() {
        estateBottled?.isHidden = false
        reserveSelection.stopAnimating()
    }

    private func presentCellarNotice(_ message: String, duration: TimeInterval = 2, style: JGProgressHUDStyle = .extraLight) {
        let cellarNotice = JGProgressHUD(style: style)
        cellarNotice.textLabel.text = message
        if style == .dark {
            cellarNotice.indicatorView = JGProgressHUDSuccessIndicatorView()
        }else{
            cellarNotice.indicatorView = JGProgressHUDErrorIndicatorView()
        }
        cellarNotice.show(in: self.view)
        if duration > 0 {
            cellarNotice.dismiss(afterDelay: duration)
        }
    }
   
    
}
