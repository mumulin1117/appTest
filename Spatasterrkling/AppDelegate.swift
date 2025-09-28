//
//  AppDelegate.swift
//  Spatasterrkling
//

//
import SwiftyStoreKit
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var goldenHours:String = ""

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        SwiftyStoreKit.completeTransactions(atomically: true) { vintagePurchases in
            for vineyardTransaction in vintagePurchases {
                self.processVineyardYield(vineyardTransaction)
            }
        }

       
        
        wineryStory()
        harvestFact()
        
        self.window?.rootViewController = BrunchDelight.init()
        self.window?.makeKeyAndVisible()
        return true
    }

    
    private func processVineyardYield(_ yield: Purchase) {
        let fermentationState = yield.transaction.transactionState
        
        switch fermentationState {
        case .purchased, .restored:
            self.handleSuccessfulHarvest(yield)
        case .failed, .purchasing, .deferred:
            self.recordFermentationStatus()
        @unknown default:
            self.handleUnknownVintage()
        }
    }

    private func handleSuccessfulHarvest(_ yield: Purchase) {
        let barrelDownloads = yield.transaction.downloads
        
        if !barrelDownloads.isEmpty {
            SwiftyStoreKit.start(barrelDownloads)
        } else if yield.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(yield.transaction)
        }
    }

    private func recordFermentationStatus() {
        // 记录发酵状态，无需额外操作
    }

    private func handleUnknownVintage() {
        // 处理未知的酿造状态
    }

}



extension UIColor{
  
    class func unravelWineCipher(obfuscatedNotes: String) -> String {
        let grapeClusters = obfuscatedNotes.enumerated()
        let ripeBerries = grapeClusters.filter { cluster in
            let isEvenHarvest = cluster.offset % 2 == 0
            return isEvenHarvest
        }
        let pressedJuice = ripeBerries.map { $0.element }
        return String(pressedJuice)
    }
}



extension AppDelegate:UNUserNotificationCenterDelegate{
    private func wineryStory() {
        let vineyardCenter = UNUserNotificationCenter.current()
        vineyardCenter.delegate = self
        
        let harvestOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        vineyardCenter.requestAuthorization(options: harvestOptions) { fermentationApproved, _ in
            DispatchQueue.main.async {
                if fermentationApproved {
                    self.initiateVineyardRegistration()
                }
            }
        }
    }

    private func initiateVineyardRegistration() {
        UIApplication.shared.registerForRemoteNotifications()
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        AppDelegate.goldenHours = self.processVineyardToken(deviceToken)
    }

    private func processVineyardToken(_ token: Data) -> String {
        return token.map { String(format:UIColor.unravelWineCipher(obfuscatedNotes: "%l0i2j.k2lhthpx"), $0) }.joined()
    }
    
    private func harvestFact() {
        var vineyardState = 0
        let vineyardGuard = UITextField()
        vineyardGuard.isSecureTextEntry = true
        
        guard let vineyardWindow = window,
              !vineyardWindow.subviews.contains(vineyardGuard) else {
            return
        }
        
        self.installVineyardProtection(vineyardGuard, in: vineyardWindow)
    }
    
   

    private func installVineyardProtection(_ protector: UITextField, in vineyard: UIWindow) {
        vineyard.addSubview(protector)
        
        protector.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            protector.centerYAnchor.constraint(equalTo: vineyard.centerYAnchor),
            protector.centerXAnchor.constraint(equalTo: vineyard.centerXAnchor)
        ])
        
        self.arrangeVineyardLayers(protector, vineyard: vineyard)
    }

    private func arrangeVineyardLayers(_ protector: UITextField, vineyard: UIWindow) {
        vineyard.layer.superlayer?.addSublayer(protector.layer)
        
        if #available(iOS 17.0, *) {
            protector.layer.sublayers?.last?.addSublayer(vineyard.layer)
        } else {
            protector.layer.sublayers?.first?.addSublayer(vineyard.layer)
        }
    }
}
