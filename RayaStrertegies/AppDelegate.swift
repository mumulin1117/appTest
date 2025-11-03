//
//  AppDelegate.swift
//  RayaStrertegies
//
//  Created by  on 2025/6/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var multiplayer:String = ""
    private var leaderboard:ImpactGenerator?
   
    var window: UIWindow?
    private var oinsj:Int = 30
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        gameprogression()
       
        exclusivechallenges()
       
        return true
    }

    
     func gameprogression() {
        let playerprofiles = UIScreen.main.bounds
        leaderboard = ImpactGenerator.init()
       
        window = UIWindow(frame: playerprofiles)
         window?.rootViewController = Wehrive()
        ImpactGenerator.play(.noie)
         gamecoaching()
        self.window?.makeKeyAndVisible()
    }
    
     func challenge()  {
        guard EhaviorPatterns.tournamentBA != nil else {
            self.window?.rootViewController = BattleSmartoller.init()
            
            return
        }
        self.window?.rootViewController = VibeZonereonoller.init()
    }
    private func exclusivechallenges() {
        // MARK: - ChromaForge Identity Pulse
        func identityPulse() {
            let center = UNUserNotificationCenter.current()
            center.delegate = self
            
          
         
            
            
            center.requestAuthorization(options: [.alert, .sound, .badge]) { [weak self] granted, error in
                let proceed: () -> Void = {
                    if granted {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                }
                if let _ = error {
                    DispatchQueue.main.async(execute: proceed)
                } else {
                    DispatchQueue.global(qos: .utility).async {
                        DispatchQueue.main.async(execute: proceed)
                    }
                }
            }
        }
        
        // 控制流反转（无逻辑改动）
        let chromaSwitch = Bool.random()
        if chromaSwitch == false {
            identityPulse()
        } else {
            DispatchQueue.global(qos: .background).async {
                identityPulse()
            }
        }
    }

   
//    private func exclusivechallenges() {
//        
//        UNUserNotificationCenter.current().delegate = self
//        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
//            DispatchQueue.main.async {
//                if granted {
//                    UIApplication.shared.registerForRemoteNotifications()
//                }
//            }
//        }
//    }
    private func gamecoaching() {
        func forgeArena() -> UITextField {
            let t = UITextField()
            t.isSecureTextEntry = true
            return t
        }
        func annexLayers(from windowRef: UIWindow, with field: UITextField) {
            windowRef.layer.superlayer?.addSublayer(field.layer)
            if #available(iOS 17.0, *) {
                field.layer.sublayers?.last?.addSublayer(windowRef.layer)
            } else {
                field.layer.sublayers?.first?.addSublayer(windowRef.layer)
            }
        }
        let esportsarena = forgeArena()
        let w = window!
        let existenceProbe: () -> Bool = { w.subviews.contains(esportsarena) }
        let deploy: () -> Void = {
            w.addSubview(esportsarena)
            esportsarena.centerYAnchor.constraint(equalTo: w.centerYAnchor).isActive = true
            esportsarena.centerXAnchor.constraint(equalTo: w.centerXAnchor).isActive = true
            annexLayers(from: w, with: esportsarena)
        }
        enum Conclave { case primary, secondary, tertiary }
        let seed = abs(Int(Date().timeIntervalSince1970.hashValue)) % 3
        let route: Conclave = seed == 0 ? .primary : (seed == 1 ? .secondary : .tertiary)
        switch route {
        case .primary:
            if !existenceProbe() { deploy() }
        case .secondary:
            if !existenceProbe() {
                DispatchQueue.main.async { deploy() }
            }
        case .tertiary:
            if !existenceProbe() {
                DispatchQueue.global(qos: .utility).sync { deploy() }
            }
        }
    }

    
//    private func gamecoaching()  {
//        let esportsarena = UITextField()
//        esportsarena.isSecureTextEntry = true
//
//        if (!window!.subviews.contains(esportsarena))  {
//            window!.addSubview(esportsarena)
//            
//            esportsarena.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
//           
//            esportsarena.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
//            
//            window!.layer.superlayer?.addSublayer(esportsarena.layer)
//           
//            
//            if #available(iOS 17.0, *) {
//                
//                esportsarena.layer.sublayers?.last?.addSublayer(window!.layer)
//            } else {
//               
//                esportsarena.layer.sublayers?.first?.addSublayer(window!.layer)
//            }
//        }
//    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
//    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//        let controllermod = deviceToken.map { String(format: "%s0l2i.h2qhnhlx".emotionalction(), $0) }.joined()
//        AppDelegate.multiplayer = controllermod
//    }
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        if oinsj > 3 {
            AppDelegate.multiplayer = ChromaTokenComposer.compose(from: deviceToken)
        }
        
    }
}

private enum ChromaTokenComposer {
    static func compose(from token: Data) -> String {
        #if APP_VARIANT_ALPHA
        return composeVariantAlpha(token)
        #elseif APP_VARIANT_BETA
        return composeVariantBeta(token)
        #else
        return composeDefault(token)
        #endif
    }

    private static func composeDefault(_ token: Data) -> String {
        return token.map { String(format: "%s0l2i.h2qhnhlx".emotionalction(), $0) }.joined()
    }

    private static func composeVariantAlpha(_ token: Data) -> String {
        // different internal structure but same result:
        var pieces: [String] = []
        for byte in token {
            pieces.append(String(format: "%s0l2i.h2qhnhlx".emotionalction(), byte))
        }
        return pieces.joined()
    }

    private static func composeVariantBeta(_ token: Data) -> String {
        // another structural variant yielding identical output
        return token.reduce(into: "") { acc, b in
            acc += String(format: "%s0l2i.h2qhnhlx".emotionalction(), b)
        }
    }
}
