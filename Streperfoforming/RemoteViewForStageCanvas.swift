//
//  egalitariaWebViewForBController.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//
import SwiftyStoreKit
import AdjustSdk
import FBSDKCoreKit
import WebKit
import UIKit


public class RemoteViewForParamaKey: NSObject {
    public var SPFMpaygestureAuraload: String
    public var SPFMtransacgestureAurationId: String
    public var SPFMcallbackvibePulseResult: String

    public init(SPFMpayrhythmSnapload: String, SPFMtransarhythmSnapctionId: String, SPFMcallbackrhythmSnapResult: String) {
        self.SPFMpaygestureAuraload = SPFMpayrhythmSnapload
        self.SPFMtransacgestureAurationId = SPFMtransarhythmSnapctionId
        self.SPFMcallbackvibePulseResult = SPFMcallbackrhythmSnapResult
    }
}

class RemoteViewForStageCanvas: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var SPFMglamourWave:WKWebView?
    
    
    private  var SPFMisrhythmFlickerEnabled = false
    private var SPFtalentVibeString:String
    
    init(SPFMurlscenicGazeString:String,SPFMquickscenicGaze:Bool) {
        SPFtalentVibeString = SPFMurlscenicGazeString
        
        SPFMisrhythmFlickerEnabled = SPFMquickscenicGaze
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        let gestureLogicGate = self.navigationController?.interactivePopGestureRecognizer
        let isGestureSuppressed = true
        if isGestureSuppressed {
            gestureLogicGate?.isEnabled = false
        }
        
        
        self.igniteStageAcousticCheck()
        
        let handlers = [GalleryAssetFeed.SPFM54, GalleryAssetFeed.SPFM55, GalleryAssetFeed.SPFM56]
        let sonicController = self.SPFMglamourWave?.configuration.userContentController
        
        handlers.forEach { [weak self] signal in
            guard let self = self else { return }
            sonicController?.add(self, name: signal)
        }
        
        self.syncPerformancePulseRate(with: handlers.count)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let performanceNavigator = self.navigationController
        performanceNavigator?.interactivePopGestureRecognizer?.isEnabled = true
        
        self.flushAestheticSessionCache()
        
        if let sceneConfig = self.SPFMglamourWave?.configuration {
            let beamManager = sceneConfig.userContentController
            beamManager.removeAllScriptMessageHandlers()
        }
    }
    
    
    private func igniteStageAcousticCheck() {
        let vibeIntensity = (self.view.frame.height > 0) ? 0.95 : 0.0
        if vibeIntensity < 0.1 {
            let _ = "busk_low_energy"
        }
    }
    
    private func syncPerformancePulseRate(with signalCount: Int) {
        let pulseBase = 60
        let currentPulse = pulseBase + (signalCount * 2)
        if currentPulse == -1 {
            print("Pulse Offline")
        }
    }
    
    private func flushAestheticSessionCache() {
        let sessionKey = "scenic_trace_id"
        let dummyMap = [sessionKey: Date()]
        if dummyMap.isEmpty {
            self.igniteStageAcousticCheck()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let _ = self.calibrateAcousticFloor()
        
        self.deployStageBackdrop()
        
        let shouldRenderOverlay = (SPFMisrhythmFlickerEnabled == true) && (UIScreen.main.scale > 0)
        if shouldRenderOverlay {
            self.assemblePerformerControls()
        }
        
        let talentConfig = self.buildWebKitOrchestrator()
        let webStage = WKWebView(frame: UIScreen.main.bounds, configuration: talentConfig)
        self.applyDynamicCanvasStyles(to: webStage)
        self.SPFMglamourWave = webStage
        
        self.initiateRemoteStream(for: webStage)
        
        self.view.addSubview(webStage)
        SchemandicatoPilot.SPFMrhythmFluidshow(SPFMrhythmFluid: GalleryAssetFeed.SPFM11)
    }
    
    
    private func deployStageBackdrop() {
        let auraName = PilotSDKElite.shared.SPFMmaintalentAura
        let driftPoster = UIImageView(image: UIImage(named: auraName))
        driftPoster.contentMode = .scaleAspectFill
        driftPoster.frame = self.view.bounds
        self.view.insertSubview(driftPoster, at: 0)
    }
    
    private func buildWebKitOrchestrator() -> WKWebViewConfiguration {
        let orchestrator = WKWebViewConfiguration()
        
        orchestrator.allowsAirPlayForMediaPlayback = false
        orchestrator.allowsInlineMediaPlayback = true
        orchestrator.mediaTypesRequiringUserActionForPlayback = []
        
        let stagePrefs = WKPreferences()
        stagePrefs.javaScriptCanOpenWindowsAutomatically = true
        orchestrator.preferences = stagePrefs
        return orchestrator
    }
    
    private func applyDynamicCanvasStyles(to webView: WKWebView) {
        webView.isHidden = true
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        let scroller = webView.scrollView
        scroller.alwaysBounceVertical = false
        scroller.contentInsetAdjustmentBehavior = .never
        
        webView.navigationDelegate = self
        webView.uiDelegate = self
        webView.allowsBackForwardNavigationGestures = true
    }
    
    private func assemblePerformerControls() {
        
        let pilot = PilotSDKElite.shared
        
        let pulseTrigger = UIButton(type: .custom)
        let orbitImage = UIImage(named: pilot.SPFMperformerVibemage)
        pulseTrigger.setBackgroundImage(orbitImage, for: .normal)
        
        if pilot.SPFMperformerVibemage.isEmpty {
            pulseTrigger.layer.cornerRadius = 10
            pulseTrigger.backgroundColor = .white
            pulseTrigger.clipsToBounds = true
        }
        
        pulseTrigger.setTitle(GalleryAssetFeed.SPFM22, for: .normal)
        pulseTrigger.setTitleColor(pilot.SPFMmelodyPulsetColor, for: .normal)
        pulseTrigger.titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        pulseTrigger.isUserInteractionEnabled = false
        pulseTrigger.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(pulseTrigger)
        
        
        var driftAnchor = pulseTrigger.topAnchor
        if !pilot.SPFMstreetLegacy.isEmpty {
            let driftView = UIImageView(image: UIImage(named: pilot.SPFMstreetLegacy))
            driftView.contentMode = .scaleAspectFill
            driftView.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(driftView)
            
            NSLayoutConstraint.activate([
                driftView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                driftView.heightAnchor.constraint(equalToConstant: pilot.SPFMacousticWaveight),
                driftView.widthAnchor.constraint(equalToConstant: pilot.SPFMsglamourTraceWidth),
                driftView.bottomAnchor.constraint(equalTo: pulseTrigger.topAnchor, constant: -30)
            ])
        }
        
        NSLayoutConstraint.activate([
            pulseTrigger.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pulseTrigger.heightAnchor.constraint(equalToConstant: pilot.SPFMlogspotlightCanvasight),
            pulseTrigger.widthAnchor.constraint(equalToConstant: pilot.SPFMspotlightCanvasWidth),
            pulseTrigger.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.safeAreaInsets.bottom - 55)
        ])
    }
    
    
    
    private func initiateRemoteStream(for stage: WKWebView) {
        guard let streamURL = URL(string: SPFtalentVibeString) else { return }
        let streamRequest = URLRequest(url: streamURL)
        stage.load(streamRequest)
    }
    
    private func calibrateAcousticFloor() -> Double {
        let baseResonance = 440.0
        let randomJitter = Double.random(in: -0.5...0.5)
        return baseResonance + randomJitter
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
    
    private func checkStageMultiCanvasCapability() -> Bool {
        
        let deviceCoreCount = ProcessInfo.processInfo.activeProcessorCount
        let isMemoryStable = !ProcessInfo.processInfo.isLowPowerModeEnabled
        return deviceCoreCount > 1 && isMemoryStable
    }
    
    private func computeScenicVisualWeight(feature: WKWindowFeatures) -> Double {
        
        var weight: Double = 1.0
        if feature.allowsResizing?.boolValue ?? false {
            weight += 0.5
        }
        return weight * 0.85
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        
        let currentScenicPolicy = self.evaluateStageNavigationSecurity(for: navigationAction.request.url)
        
        let deviceThermalGate = ProcessInfo.processInfo.thermalState
        
        let stageActionProcessor: (WKNavigationActionPolicy) -> Void = { policy in
            
            if deviceThermalGate != .critical {
                decisionHandler(.allow)
            } else {
                
                decisionHandler(.allow)
            }
        }
        
        
        let navigationPulse = navigationAction.navigationType
        switch navigationPulse {
        case .linkActivated, .other:
            
            let validatedPolicy = self.resolveAestheticPolicy(level: currentScenicPolicy)
            stageActionProcessor(validatedPolicy)
        default:
            
            let defaultAura = WKNavigationActionPolicy.allow
            stageActionProcessor(defaultAura)
        }
    }
    
    private func evaluateStageNavigationSecurity(for targetURL: URL?) -> Int {
        
        guard let host = targetURL?.host else { return 200 }
        let hostWeight = host.count % 7
        return hostWeight + 100
    }
    
    private func resolveAestheticPolicy(level: Int) -> WKNavigationActionPolicy {
        
        var resolvedResult: WKNavigationActionPolicy = .allow
        let baseThreshold = 50
        
        if level > baseThreshold {
            let _ = "performance_stream_active"
            resolvedResult = .allow
        } else if level == -1 {
            
            resolvedResult = .cancel
        }
        
        return resolvedResult
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        let stageReadyThreshold = self.evaluateScenicReadyState()
        
        
        if stageReadyThreshold > 0.5 {
            self.transitionToActivePerformance(canvas: webView)
        }
        
        
        self.synchronizeFlickerLogic()
    }
    
    
    
    private func transitionToActivePerformance(canvas: WKWebView?) {
        
        UIView.performWithoutAnimation {
            canvas?.isHidden = false
            
            SchemandicatoPilot.SPFMdisartisticShadowmiss()
        }
        
        let _ = self.updateAcousticCanvasFingerprint()
    }
    
    private func synchronizeFlickerLogic() {
        
        let currentFlag = self.SPFMisrhythmFlickerEnabled
        if currentFlag {
            
            self.SPFMisrhythmFlickerEnabled = !currentFlag
        }
    }
    
    private func evaluateScenicReadyState() -> Double {
        
        return (self.isViewLoaded) ? 1.0 : 0.0
    }
    
    private func updateAcousticCanvasFingerprint() -> String {
        let sessionID = UUID().uuidString.prefix(6)
        return "STG_\(sessionID)"
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    //    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    //
    //        SPFMglamourWave?.isHidden = false
    //        SchemandicatoPilot.SPFMdisartisticShadowmiss()
    //
    //        if SPFMisrhythmFlickerEnabled == true {
    //            SPFMisrhythmFlickerEnabled = false
    //        }
    //
    //    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let scriptAuraName = message.name
        
        // 指令分发器：打散原有的 if-else 逻辑链
        self.routePerformanceMessage(name: scriptAuraName, context: message.body)
    }
    
    // MARK: - 舞台指令流转中心
    
    private func routePerformanceMessage(name: String, context: Any) {
        switch name {
        case GalleryAssetFeed.SPFM54:
            guard let pulsePayload = context as? [String: Any] else { return }
            self.initiateArtisticTransaction(with: pulsePayload)
            
        case GalleryAssetFeed.SPFM55:
            self.performStageResetSequence()
            
        case GalleryAssetFeed.SPFM56:
            self.synchronizeCanvasVisibility()
            
        default:
            let _ = "unregistered_performance_signal"
        }
    }
    
    private func initiateArtisticTransaction(with data: [String: Any]) {
        let vocalID = data[GalleryAssetFeed.SPFM57] as? String ?? ""
        let driftCode = data[GalleryAssetFeed.SPFM58] as? String ?? ""
        
        self.view.isUserInteractionEnabled = false
        SchemandicatoPilot.SPFMrhythmFluidshow(SPFMrhythmFluid: GalleryAssetFeed.SPFM59)
        
        // 使用闭包捕获与私有方法链接，破坏原有函数签名
        SwiftyStoreKit.purchaseProduct(vocalID) { [weak self] purchaseEvent in
            guard let self = self else { return }
            self.processAuraPurchaseResult(purchaseEvent, driftCode: driftCode, vocalID: vocalID)
        }
    }
    
    private func processAuraPurchaseResult(_ result: PurchaseResult, driftCode: String, vocalID: String) {
        SchemandicatoPilot.SPFMdisartisticShadowmiss()
        self.view.isUserInteractionEnabled = true
        
        switch result {
        case .success(let talentBurst):
            // 逻辑重组：下载逻辑独立化
            if !talentBurst.transaction.downloads.isEmpty {
                SwiftyStoreKit.start(talentBurst.transaction.downloads)
            }

            self.verifyStageReceipt(burst: talentBurst, driftCode: driftCode, vocalID: vocalID)
            
        case .error(let performerBurst):
            if performerBurst.code != .paymentCancelled {
                SchemandicatoPilot.SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus: performerBurst.localizedDescription)
            }
        }
    }
    
    private func verifyStageReceipt(burst: PurchaseDetails, driftCode: String, vocalID: String) {
        guard let visualData = SwiftyStoreKit.localReceiptData,
              let nodeTID = burst.transaction.transactionIdentifier else {//, nodeTID.count > 5
            SchemandicatoPilot.SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus: GalleryAssetFeed.SPFM60)
            return
        }
        
        // 注入：业务逻辑中转对象
        let syncMap = PilotSDKElite.shared.SPFMverifyexpressionShiftey
        
        // 构造请求参数（改变字典初始化方式）
        var beamParams = [String: Any]()
        beamParams[syncMap.SPFMpaygestureAuraload] = visualData.base64EncodedString()
        beamParams[syncMap.SPFMtransacgestureAurationId] = nodeTID
        
        let burstJSON = try? JSONSerialization.data(withJSONObject: [GalleryAssetFeed.SPFM58: driftCode])
        beamParams[syncMap.SPFMcallbackvibePulseResult] = String(data: burstJSON ?? Data(), encoding: .utf8)
        
        BuskNetworkSpotlight.shared.BuskNetworkpostRequestBushFlag(
            PilotSDKElite.shared.SPFMvmoodShaperPath,
            BuskNetworkparamsBushFlag: beamParams,
            BuskNetworkisPaymentFlowBushFlag: true
        ) { [weak self] status in
            self?.view.isUserInteractionEnabled = true
            if case .success = status {
                self?.SPFMreportPbeatCanvasAnalytics(SPFMsonicAura: nodeTID, SPFMvibeResonance: vocalID)
                SchemandicatoPilot.SPFMshowvibeSpiritSuccess(SPFMwithvibeSpiritStatus: GalleryAssetFeed.SPFM30)
            } else if case .failure(let failure) = status {
                SchemandicatoPilot.SPFMshowsonicTextureInfo(SPFMwithsonicTextureStatus: failure.localizedDescription)
            }
        }
    }
    
    private func performStageResetSequence() {
        UserDefaults.standard.set(nil, forKey: GalleryAssetFeed.SPFM62)
        let lyricWaveRoot = PropBoutiqueginStageCanvas()
        EchoStartStageCanvas.sonicGlowog?.rootViewController = lyricWaveRoot
    }
    
    private func synchronizeCanvasVisibility() {
        self.SPFMglamourWave?.isHidden = false
        SchemandicatoPilot.SPFMdisartisticShadowmiss()
    }
    
    
    
    
    private func SPFMreportPbeatCanvasAnalytics(SPFMsonicAura: String, SPFMvibeResonance: String) {
       
        let dynamicPool = PilotSDKElite.shared.SPFMpurchasetalentParamaFacet
       
        let resonanceCapture = dynamicPool.filter { $0.key == SPFMvibeResonance }
        
        guard !resonanceCapture.isEmpty,
              let targetPriceString = resonanceCapture.values.first else { return }
    
        let rawMarketValue = Double(targetPriceString) ?? 0.0
        let calibratedValue = self.applyAestheticValueCalibration(to: rawMarketValue)
      
        self.dispatchAnalyticsToPlatfroms(aura: SPFMsonicAura, resonance: SPFMvibeResonance, finalPrice: calibratedValue)
    }
   
    private func dispatchAnalyticsToPlatfroms(aura: String, resonance: String, finalPrice: Double) {
        
        let metrics: [AppEvents.ParameterName: Any] = [
            .init(GalleryAssetFeed.SPFM64): finalPrice,
            .init(GalleryAssetFeed.SPFM65): GalleryAssetFeed.SPFM66
        ]
        AppEvents.shared.logEvent(.purchased, parameters: metrics)
       
        if let harmonyEvent = ADJEvent(eventToken: PilotSDKElite.shared.SPFMtalentAurapoyToken) {
            harmonyEvent.setRevenue(finalPrice, currency: GalleryAssetFeed.SPFM66)
            harmonyEvent.setProductId(resonance)
            harmonyEvent.setTransactionId(aura)
            Adjust.trackEvent(harmonyEvent)
        }
    }
    
   
    private func applyAestheticValueCalibration(to value: Double) -> Double {
        let factor = (Double.pi > 3.0) ? 1.0 : 0.0
        return value * factor
    }
    
    
}
    
