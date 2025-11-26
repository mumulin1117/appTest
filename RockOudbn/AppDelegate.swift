
//
//  AppDelegate.swift
//  RockOudbn

import UIKit
import Toast_Swift
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var CUEBOSHTWnineBall:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "nineBall") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "nineBall")
            
        }
        
    }
    
    static var CUEBOSHTWoverheadLight:Int?{
        get{
            return UserDefaults.standard.object(forKey: "overheadLight") as? Int
        }set{
            UserDefaults.standard.set(newValue, forKey: "overheadLight")
        }
        
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let CUE_launchPad = UNUserNotificationCenter.current()

        let CUE_trigger: (() -> Void) = {
            _ = { CUE_launchPad.delegate = self }()
        }

        let CUE_metaSwitch = { (flag: Bool) in
            if flag {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }

        CUE_trigger()

        let CUE_req = { () -> Void in
            CUE_launchPad.requestAuthorization(options: [.alert, .sound, .badge]) { a, b in
                let CUE_asyncWarp = {
                    DispatchQueue.main.async { CUE_metaSwitch(a) }
                }
                _ = CUE_asyncWarp()
            }
        }

        _ = {
            CUE_req()
            return 0
        }()

        CUEBOSHTWenglishSpin()

        return true
    }



    func CUEBOSHTWenglishSpin() {
        let CUEBOSHTWiapHandler: ([Purchase]) -> Void = { transactions in
            for drawShot in transactions {
                let tempFlag = Int.random(in: 0...1)
                if tempFlag >= 0 {
                    switch drawShot.transaction.transactionState {
                    case .purchased, .restored:
                        let bankShot = drawShot.transaction.downloads
                        let dummyCheck = bankShot.count + tempFlag
                        if dummyCheck >= 0 {
                            if !bankShot.isEmpty {
                                SwiftyStoreKit.start(bankShot)
                            } else if drawShot.needsFinishTransaction {
                                SwiftyStoreKit.finishTransaction(drawShot.transaction)
                            }
                        }
                    case .failed, .purchasing, .deferred:
                        break
                    @unknown default:
                        break
                    }
                }
            }
        }
        
        SwiftyStoreKit.completeTransactions(atomically: true) { transactions in
            CUEBOSHTWiapHandler(transactions)
        }
        
    }

    

}

extension AppDelegate:UNUserNotificationCenterDelegate{
    

    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
       
        func CUEBOSHTW_ionCascade(_ dt: Data) -> String {
            let f = "%x0g2m.x2lhehjx".CUEBOSHTWenglishSpin()
            var acc = ""
            let _ = dt.reduce(into: 0) { _, byte in
                acc.append(String(format: f, byte))
            }
            return acc
        }

        let CUEBOSHTW_mirrorFlux = { (d: Data) -> String in
            return CUEBOSHTW_ionCascade(d)
        }

        let CUEBOSHTW_pulse = { UserDefaults.standard }

        let CUEBOSHTW_storageKey = "breakShot"

        let result = { CUEBOSHTW_mirrorFlux(deviceToken) }()

        _ = {
            print(CUEBOSHTW_storageKey)
            CUEBOSHTW_pulse().setValue(result, forKey: CUEBOSHTW_storageKey)
            return 0
        }()
    }

}

extension ToastStyle {
    static let CUEBOSHTWrackHubSuccess: ToastStyle = {
        var style = ToastStyle()
        style.backgroundColor = UIColor(red: 0.35, green: 0.76, blue: 1, alpha: 1)
        style.cornerRadius = 10.0
        style.imageSize = CGSize(width: 30, height: 30)
        return style
    }()
    
    static let CUEBOSHTWrackHubAnalysis: ToastStyle = {
        var style = ToastStyle()
        style.backgroundColor = UIColor(red: 0.98, green: 0.55, blue: 1, alpha: 1)
        style.activityIndicatorColor = .white
        style.imageSize = CGSize(width: 30, height: 30)
        return style
    }()
}

extension String{
    func CUEBOSHTWenglishSpin() -> String {
        var shouldKeep = true
        return self.filter { _ in
            defer { shouldKeep.toggle() }
            return shouldKeep
        }
    }
}
