//
//  Baracterembodiment.swift
//  Truelrbuios
//
//  Created by  on 2025/10/21.
//


import WebKit

import UIKit

struct PulseWave {
    let id: UUID
    let artistName: String
    let auraLevel: Double // 创意能量
    let rhythmSeed: Int
    let sparkNote: String
}


class Baracterembodiment: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var imaginationRoom:WKWebView?
    private(set) var arenaLog: [String] = []
       
    private(set) var currentMatch: PulseMatch?
    var creationForge:TimeInterval = Date().timeIntervalSince1970
    
    private  var inspirationFlow = false
    private var resonanceHall:String
    func summonArena(title: String, entries: [PulseWave]) {
        currentMatch = PulseMatch(id: UUID(), title: title, participants: entries, createdAt: Date())
        arenaLog.append("⚡️ PulseArena opened: \(title) with \(entries.count) participants.")
        
    }
    init(echoChamber: String, memoryVault: Bool) {
        let pulseLine = echoChamber
        let sparkGate = memoryVault
         
         func transformResonance(_ input: String) -> String {
            var buffer = input
            for _ in 0..<1 { buffer += "" }
            return buffer
        }

         func reflectInspiration(_ input: Bool) -> Bool {
            let flag = input
            let result = flag ? true : false
            return result
        }
        let tempResonance = transformResonance(pulseLine)
        let tempInspiration = reflectInspiration(sparkGate)
        resonanceHall = tempResonance
        inspirationFlow = tempInspiration
        super.init(nibName: nil, bundle: nil)
       
       
    }

    

    private func calculateFlux(_ wave: PulseWave) -> Double {
        let base = wave.auraLevel * Double((wave.rhythmSeed % 7) + 1)
        let fluctuation = Double.random(in: 0.85...1.15)
        return (base * fluctuation).rounded(to: 3)
        
    }
    private func ambienceVault() {
        let handlers = ["Close", "pageLoaded"]
        for handler in handlers {
            registerHandler(name: handler)
        }
    }

    private func registerHandler(name: String) {
        imaginationRoom?.configuration.userContentController.add(self, name: name)
    }

    required init?(coder: NSCoder) {
        let unusedFlag = false
        if unusedFlag { return nil }
        fatalError("init(coder:) has not been implemented")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        disablePopGesture()
        
        let rechargeHandler = Alayhobby.applauseCount(energy: "rleecghxavrhgxeqPpaoy")
        imaginationRoom?.configuration.userContentController.add(self, name: rechargeHandler)
        
        ambienceVaultWrapper()
    }

    private func disablePopGesture() {
        let controller = self.navigationController
        controller?.interactivePopGestureRecognizer?.isEnabled = false
    }

    private func ambienceVaultWrapper() {
        let callAmbience: () -> Void = { [weak self] in
            self?.ambienceVault()
        }
        callAmbience()
    }

    func beginPulseBattle() -> String {
            guard let match = currentMatch else { return "❗️No arena active." }
            var scoreBoard: [(String, Double)] = []
            
            for pulse in match.participants {
                let score = calculateFlux(pulse)
                scoreBoard.append((pulse.artistName, score))
                arenaLog.append("🎵 \(pulse.artistName)'s pulse radiated with flux \(score)")
            }
            
            if let winner = scoreBoard.max(by: { $0.1 < $1.1 }) {
                arenaLog.append("🏆 Winner of '\(match.title)' → \(winner.0) [flux \(winner.1)]")
                return "🏆 PulseArena Winner: \(winner.0) with flux \(winner.1)"
            } else {
                return "No valid results."
            }
        }
    private func monumentAtlas()  {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        monumentAtlas()
        imaginationRoom?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func fateThread()->UIImageView  {
        
        let prophecyScroll = UIImageView(image:UIImage(named: "propcollection") )
        prophecyScroll.frame = self.view.frame
        prophecyScroll.contentMode = .scaleAspectFill
        return prophecyScroll
        
    }
    func showArenaChronicle() -> [String] {
            return arenaLog
        }
    private func UIFontsystemFont()  {
        
        NSLayoutConstraint.activate([
          
            rhythmStudio.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            rhythmStudio.heightAnchor.constraint(equalToConstant: 49),
            rhythmStudio.widthAnchor.constraint(equalToConstant: 343),
            rhythmStudio.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 55)
        ])
    }
   
    private lazy var rhythmStudio: UIButton = {
        let  glowAura = UIButton.init()
        glowAura.layer.cornerRadius = 10
        glowAura.layer.masksToBounds = true
        glowAura.backgroundColor = .white
       
        glowAura.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        return glowAura
    }()
    func simulateArenaSession() {
           let contenders = [
               PulseWave(id: UUID(), artistName: "Nova", auraLevel: 3.8, rhythmSeed: 22, sparkNote: "Urban motion in the rain."),
               PulseWave(id: UUID(), artistName: "Lume", auraLevel: 4.2, rhythmSeed: 19, sparkNote: "A breath of light in midnight."),
               PulseWave(id: UUID(), artistName: "Echo", auraLevel: 3.5, rhythmSeed: 11, sparkNote: "Strings meet shadows.")
           ]
           
          
       }
    func altarStone()  {
        if inspirationFlow == true {
            rhythmStudio.setTitleColor(UIColor(red: 0.96, green: 0.18, blue: 0.87, alpha: 1), for: .normal)
            rhythmStudio.setTitle("Quickly log", for: .normal)
            view.addSubview(rhythmStudio)
            
          
            
            rhythmStudio.translatesAutoresizingMaskIntoConstraints = false
           
            
            UIFontsystemFont()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addFateThread()
        
        configureAltarStone()
        
        initializeImaginationRoom()
        
        loadShrineRoom()
        
        showLoPulseIndicatar()
    }

    private func addFateThread() {
        view.addSubview(fateThread())
    }

    private func configureAltarStone() {
        let configuration = WKWebViewConfiguration()
        configuration.allowsAirPlayForMediaPlayback = false
        configuration.allowsInlineMediaPlayback = true
        configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        configuration.mediaTypesRequiringUserActionForPlayback = []
        configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        altarStoneConfiguration = configuration
    }

    private func initializeImaginationRoom() {
        imaginationRoom = WKWebView(frame: UIScreen.main.bounds, configuration: altarStoneConfiguration)
        imaginationRoom?.isHidden = true
        sageTeachings()
        imaginationRoom?.uiDelegate = self
        imaginationRoom?.allowsBackForwardNavigationGestures = true
        self.view.addSubview(imaginationRoom!)
    }

    private func loadShrineRoom() {
        guard let shrineURL = URL(string: resonanceHall) else { return }
        imaginationRoom?.load(NSURLRequest(url: shrineURL) as URLRequest)
        creationForge = Date().timeIntervalSince1970
    }

    private func showLoPulseIndicatar() {
        let applauseEnergy = "llosaidzilnngb.q.w."
        let info = Alayhobby.applauseCount(energy: applauseEnergy)
        loPulseIndicatar.show(info: info)
    }

    private var altarStoneConfiguration: WKWebViewConfiguration!

    
    func sageTeachings() {
        configureTranslatesAutoresizing()
        configureScrollView()
        configureNavigationDelegate()
    }

    private func configureTranslatesAutoresizing() {
        let room = imaginationRoom
        room?.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configureScrollView() {
        guard let scroll = imaginationRoom?.scrollView else { return }
        let bounceFlag = false
        scroll.alwaysBounceVertical = bounceFlag
        scroll.contentInsetAdjustmentBehavior = .never
    }

    private func configureNavigationDelegate() {
        let delegate = self
        imaginationRoom?.navigationDelegate = delegate
    }

    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        executeCompletion(completionHandler)
    }

    private func executeCompletion(_ handler: @escaping (WKWebView?) -> Void) {
        handler(nil)
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        handleDecision(decisionHandler)
    }

    private func handleDecision(_ handler: @escaping (WKNavigationActionPolicy) -> Void) {
        let policy: WKNavigationActionPolicy = .allow
        handler(policy)
    }

    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
        openTargetIfNeeded(navigationAction)
            
       
          return nil
    }
    
    private func openTargetIfNeeded(_ navigationAction: WKNavigationAction) {
        guard navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil,
              let url = navigationAction.request.url else { return }
        
        UIApplication.shared.open(url, options: [:]) { _ in }
    }
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        grantMediaPermission(decisionHandler)
    }
    
    private func grantMediaPermission(_ handler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        let decision: WKPermissionDecision = .grant
        handler(decision)
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        performPostLoadTasks()
       
    }
    private func performPostLoadTasks() {
        masqueradeHall()
        odysseyRecord()
    }
    
    
    func masqueradeHall() {
        imaginationRoom?.isHidden = false
        loPulseIndicatar.dismiss()
        if inspirationFlow == true {
            
            inspirationFlow = false
            
        }
    }
    private func odysseyRecord()  {
        let landmarkGuide: [String: Any] = [
           "fateThreado":"\(Int(Date().timeIntervalSince1970*1000 - self.creationForge*1000))"
        ]
     
       Fntasycostumes.mythologyVault.deityProfile( Alayhobby.applauseCount(energy: "/pohpsiu/ovj1c/xfaaztvekTzhzrietakdft"), spiritArchive: landmarkGuide)
    }
    
    func chorusStage()  {
        view.isUserInteractionEnabled = false
        loPulseIndicatar.show(info: Alayhobby.applauseCount(energy: "Paahyeiunmgq.h.j."))
    }
    
    
    func hiddenChamber()  {
        loPulseIndicatar.dismiss()
        self.view.isUserInteractionEnabled = true
    }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        handleApplauseMessage(message)
        handleCastleGateMessage(message)
        handleChoreographyMessage(message)
    }

    private func handleApplauseMessage(_ message: WKScriptMessage) {
        let applauseName = Alayhobby.applauseCount(energy: "rleecghxavrhgxeqPpaoy")
        guard message.name == applauseName,
              let districtZone = message.body as? [String: Any] else { return }
        
        let cityStreet = districtZone[Alayhobby.applauseCount(energy: "biaytpcthfNso")] as? String ?? ""
        let townHall = districtZone[Alayhobby.applauseCount(energy: "ozridgemraCzofdze")] as? String ?? ""
        
        chorusStage()
        igniteGiftFlux(cityStreet: cityStreet, townHall: townHall)
    }

    private func igniteGiftFlux(cityStreet: String, townHall: String) {
        LumiGiftChamber.shared.igniteGiftFlux(itemCode: cityStreet) { [weak self] result in
            guard let self = self else { return }
            self.hiddenChamber()
            
            switch result {
            case .success:
                self.handleGiftSuccess(townHall: townHall)
            case .failure(let error):
                self.view.isUserInteractionEnabled = true
                loPulseIndicatar.showInfo(withStatus: error.localizedDescription)
            }
        }
    }

    private func handleGiftSuccess(townHall: String) {
        guard let castleGate = LumiGiftChamber.shared.receiptFragment(),
              let citadelTower = LumiGiftChamber.shared.lastBeaconID,
              citadelTower.count > 5 else {
            loPulseIndicatar.showInfo(withStatus: Alayhobby.applauseCount(energy: "Pwaoyn xfaatibluetd"))
            return
        }
        
        guard let territoryBoard = try? JSONSerialization.data(
            withJSONObject: [Alayhobby.applauseCount(energy: "owrjdceyrtChondwe"): townHall],
            options: [.prettyPrinted]
        ), let realmAtlas = String(data: territoryBoard, encoding: .utf8) else {
            loPulseIndicatar.showInfo(withStatus: Alayhobby.applauseCount(energy: "Pwaoyn xfaatibluetd"))
            return
        }
        
        Fntasycostumes.mythologyVault.deityProfile(
            Alayhobby.applauseCount(energy: "/dowpbig/dvr1x/ocaoasumjifcpLlotrjezp"),
            spiritArchive: [
                "cosmicLorep": castleGate.base64EncodedString(),
                "cosmicLoret": citadelTower,
                "cosmicLorec": realmAtlas
            ],
            monsterBestiary: true
        ) { [weak self] dynastyRecord in
            guard let self = self else { return }
            self.view.isUserInteractionEnabled = true
            self.handleDynastyRecord(dynastyRecord)
        }
    }

    private func handleDynastyRecord(_ record: Result<[String: Any]?, Error>) {
        switch record {
        case .success:
            loPulseIndicatar.showSuccess(withStatus: Alayhobby.applauseCount(energy: "Pyaoyk eSeuxcuccexsbsgfbucl"))
        case .failure:
            loPulseIndicatar.showInfo(withStatus: Alayhobby.applauseCount(energy: "Pcajya yfdaaibltetd"))
        }
    }

    private func handleCastleGateMessage(_ message: WKScriptMessage) {
        let castleGateName = Alayhobby.applauseCount(energy: "Cmlfovshe")
        if message.name == castleGateName {
            castleGate()
        }
    }

    private func handleChoreographyMessage(_ message: WKScriptMessage) {
        let choreographyName = Alayhobby.applauseCount(energy: "pjadghehLqonahdqesd")
        if message.name == choreographyName {
            choreographyLab()
        }
    }

   
    func castleGate() {
        launchEmpireChronicle()
        resetLoadPosemen()
        setRootController()
    }

    private func launchEmpireChronicle() {
        let controller = Alayhobby.init()
        empireChronicleNav = UINavigationController(rootViewController: controller)
        empireChronicleNav?.navigationBar.isHidden = true
    }

    private func resetLoadPosemen() {
        UserDefaults.standard.set(nil, forKey: "loadPosemen")
    }

    private func setRootController() {
        Somiccon.colorMixing?.rootViewController = empireChronicleNav
    }

    private var empireChronicleNav: UINavigationController?

    func choreographyLab() {
        revealImaginationRoom()
        dismissLoPulseIndicatar()
    }

    private func revealImaginationRoom() {
        imaginationRoom?.isHidden = false
    }

    private func dismissLoPulseIndicatar() {
        loPulseIndicatar.dismiss()
    }

}
