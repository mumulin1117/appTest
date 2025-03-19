//
//  AppDelegate.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import SVProgressHUD
import SwiftyStoreKit
import FBSDKCoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    static var AllusrpushToye:String = ""

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        SVProgressHUD.setMinimumDismissTimeInterval(2)
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { laibokr, _ in
            if laibokr {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
        
       
        
        SwiftyStoreKit.completeTransactions(atomically: true) { toyeStorePurchases in
            for toyStoreP in toyeStorePurchases {
                
                if toyStoreP.transaction.transactionState == .purchased ||
                    toyStoreP.transaction.transactionState == .restored{
                    if toyStoreP.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(toyStoreP.transaction)
                    }
                }
            }
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Dmezfaapuxlgtt qCfoonlfuiogmutrwahtxidoqn".ty, sessionRole: connectingSceneSession.role)
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        creasetrtoye(ata:deviceToken)
       
    }
    
    
    

}



extension AppDelegate{
    
    func creasetrtoye(ata:Data)  {
        AppDelegate.AllusrpushToye = ata.map { String(format: "%02.2hhx", $0) }.joined()
    }
}
