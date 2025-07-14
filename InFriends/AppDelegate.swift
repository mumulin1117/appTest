//
//  AppDelegate.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import UIKit
import CoreData
import RealmSwift
import IQKeyboardManagerSwift
import UserNotifications
import ScreenProtectorKit

import AdSupport
import AppTrackingTransparency

var tmpRet:String?

var dvToken:String?

let authT = "user_authT"

let authInfConfig = "authInfConfig"



let constInFID = "32855840"

let constInFVS = "1.0.9"

@main


class AppDelegate: UIResponder, UIApplicationDelegate {
    static var  behavioralAdap: String {
        return  "hztwtxpnsg:a/d/raapnik.mbdayofbcyecunn.qcqoqm".key
    }
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.isEnabled = true
       
        
      
        
        UserInfoInstance.shared.multiTurn()
        
        _ = INAPempathicResponse.shared
        
        
        UINavigationController.swizzlePushViewControllerImplementation
       
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.backgroundColor = .black

        setupRootController()
        plotTwistMechanic()
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func choiceConsequence() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if #available(iOS 14, *) {
                ATTrackingManager.requestTrackingAuthorization { status in
                    if status == .authorized {
                        let idfa = ASIdentifierManager.shared().advertisingIdentifier
                    }
                }
            } else {
                if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
                    let idfa = ASIdentifierManager.shared().advertisingIdentifier
                }
            }
        }
    }
    

    
    func setupRootController(){
//        if let _ = UserDefaults.standard.string(forKey: "userId") {
//            if let appdele = UIApplication.shared.delegate as? AppDelegate {
//                let tabbar = TablongforMainionler()
//                appdele.window?.rootViewController = tabbar
//            }
//        }else{
            if let ctrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LaunchViewController") as? IneyeContactSimulationller {
                window?.rootViewController = ctrl
//            }
        }
        
        
        

    }

    
}


extension AppDelegate {
    
    func plotTwistMechanic() {
        IQKeyboardManager.shared.enableAutoToolbar = true
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                    
                }
            } else {
                
            }
            self.choiceConsequence()
        }
        IQKeyboardManager.shared.resignOnTouchOutside = true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
        let lowPower = tokenParts.joined()
        streamingInteractiong(dr:lowPower)
    }
    
 
    func streamingInteractiong(dr:String)  {
        dvToken = dr
    }
}
