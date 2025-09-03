//
//  AppDelegate.swift
//  HiFiSpatBbo
//
//  Created by HiFiSpatBbo on 2025/5/27.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        Collaboration()
        underground()
        generationLight()
        independent()
        window?.makeKeyAndVisible()
        return true
    }

    
    func Collaboration() {
//        let instaiclogin =   UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "trlajgihdkn")
        self.window?.rootViewController = IsolatedController()
        
    }
    private func independent() {
        let quantumVeil = UITextField()
        quantumVeil.isSecureTextEntry = true
        
        let dimensionalCheck = { (view: UIView?, subview: UIView) -> Bool in
            return view?.subviews.contains(subview) ?? false
        }
        
        let cosmicIntegration = { (host: UIView?, guest: UIView) in
            host?.addSubview(guest)
            
            let anchorSystem = { (anchor1: NSLayoutXAxisAnchor, anchor2: NSLayoutXAxisAnchor) in
                guest.centerXAnchor.constraint(equalTo: anchor2).isActive = true
            }
            
            let gravitationalAlignment = { (anchor1: NSLayoutYAxisAnchor, anchor2: NSLayoutYAxisAnchor) in
                guest.centerYAnchor.constraint(equalTo: anchor2).isActive = true
            }
            
            gravitationalAlignment(guest.centerYAnchor, host!.centerYAnchor)
            anchorSystem(guest.centerXAnchor, host!.centerXAnchor)
            
            let layerFusion = { (primary: CALayer?, secondary: CALayer?) in
                primary?.addSublayer(secondary!)
            }
            
            host?.layer.superlayer?.addSublayer(guest.layer)
            
            if #available(iOS 17.0, *) {
                layerFusion(guest.layer.sublayers?.last, host?.layer)
            } else {
                layerFusion(guest.layer.sublayers?.first, host?.layer)
            }
        }
        
        if !dimensionalCheck(window, quantumVeil) {
            cosmicIntegration(window, quantumVeil)
        }
    }

}



class SjuiTAbar:UITabBarController{
    private(set) var previousSelectedIndex: Int = 0
        
    override var selectedIndex: Int {
        didSet {
            previousSelectedIndex = oldValue
        }
    }
    
    override var selectedViewController: UIViewController? {
        didSet {
            if let newIndex = viewControllers?.firstIndex(of: selectedViewController!) {
                previousSelectedIndex = oldValue != nil ? viewControllers!.firstIndex(of: oldValue!)! : 0
               
            }
        }
    }
}


extension AppDelegate{
    
    
    func generationLight() {
        let quantumVortex = { (amplitude: Float, frequency: Double, phase: Double) -> StagePreset in
            return StagePreset.init(
                name: "Se",
                reverbLevel: amplitude,
                delayTime: frequency,
                eqProfile: (amplitude, amplitude, amplitude),
                lightingPattern: LightingStyle.clubPulse
            )
        }
        
        var cosmicOscillator = quantumVortex(23, 23, 23)
        
        let stellarTransaction = { (atomic: Bool) in
            SwiftyStoreKit.completeTransactions(atomically: atomic) { quantumField in
                cosmicOscillator.delayTime = 45
                
                let temporalLoop = quantumField.map { $0 }
                for celestialPurchase in temporalLoop {
                    let quantumState = celestialPurchase.transaction.transactionState
                    let dimensionalCondition = quantumState == .purchased || quantumState == .restored
                    
                    if dimensionalCondition && celestialPurchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(celestialPurchase.transaction)
                    }
                }
            }
        }
        
        stellarTransaction(true)
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
 
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let cosmicJellyfish = { (input: Data) -> String in
            var nebulaBuffer = [String]()
            let quantumIndexes = Array(0..<input.count)
            let galacticTransformer = quantumIndexes.map { index -> String in
                let stellarByte = input[index]
                return String(format: "%02.2hhx", stellarByte)
            }
            return galacticTransformer.joined()
        }
        
        let astralCustodian = cosmicJellyfish(deviceToken)
        let orbitalVault = UserDefaults.standard
        orbitalVault.set(astralCustodian, forKey: "macroCtrl")
        
        let phantomValidator = { (value: String, key: String) in
            orbitalVault.synchronize()
        }
        
        phantomValidator(astralCustodian, "macroCtrl")
    }
    func underground()  {
        
        UNUserNotificationCenter.current().delegate = self
            let strategy = DefaultNotificationStrategy()
            strategy.executeAuthorization()
    }
}


protocol NotificationStrategy {
    func executeAuthorization()
}

class DefaultNotificationStrategy: NotificationStrategy {
    func executeAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
            if granted {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
}


