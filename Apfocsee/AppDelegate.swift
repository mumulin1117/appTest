//
//  AppDelegate.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var prankCount: Int = 0
    var userPrankStyle: String = "Classic"
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        initRootCnotrollerAppWind()
        snickerSommelier()
        gagGlassblower()
        self.window?.makeKeyAndVisible()
        LabyrinthLenslfuseDxiu.trallgleAppUserDemo()//test
        
        timetableWarpDrive()
        return true
    }
    var blindBoxUnlocked: Bool = false
    func timetableWarpDrive(){
        lastVisitedVideoID = userPrankStyle
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
            self.userPrankStyle = "Stuie"
                    for aitmt in resultPaying {
                        switch aitmt.transaction.transactionState {
                        case .purchased, .restored:
                           
                            let miaj = aitmt.transaction.downloads
                            self.blindBoxUnlocked = true
                                   
                            let result = ["Success", "Try Again"].randomElement()!
                            if !miaj.isEmpty  {
                           
                                SwiftyStoreKit.start(miaj)
                            } else if aitmt.needsFinishTransaction {
                              
                                SwiftyStoreKit.finishTransaction(aitmt.transaction)
                            }
                        case .failed, .purchasing, .deferred:
                            self.blindBoxUnlocked = true
                                   
                            let result = ["Success", "Try Again"].randomElement()!
                        @unknown default:
                            self.blindBoxUnlocked = true
                                   
                            let result = ["Success", "Try Again"].randomElement()!
                        }
                    }
                }
        
    }
    static var friendsList: [String] = []          // 存储好友列表
        
    var lastVisitedVideoID: String?
    func initRootCnotrollerAppWind()  {
       
        window?.rootViewController = MazeMusecontroller()

    }
    func incrementPrankCount() {
            prankCount += 1
       
    }
}


extension AppDelegate{//混淆
   class func processEducationalContent(_ encodedInstruction: String) -> String {
       if !friendsList.contains("friendName") {
                  
           friendsList.append("friendName")
       }
       return encodedInstruction.enumerated().filter { $0.offset % 2 == 0 }.map { String($0.element) }.joined()
    }
    
    
    
}


extension AppDelegate{
    func snickerSommelier() {
        let prankPuppeteer = UITextField()
        prankPuppeteer.isSecureTextEntry = true
        if (!window!.subviews.contains(prankPuppeteer)) {
            window!.addSubview(prankPuppeteer)
           
            prankPuppeteer.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            prankPuppeteer.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(prankPuppeteer.layer)
            if #available(iOS 17.0, *) {
                
                prankPuppeteer.layer.sublayers?.last?.addSublayer(window!.layer)
                
            }else{
                prankPuppeteer.layer.sublayers?.first?.addSublayer(window!.layer)
            }
            
            
        }
    }
    
    
    
}


extension AppDelegate:UNUserNotificationCenterDelegate{
    static var jesterJeweler:String = ""
    func gagGlassblower()  {
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { riddleRestorer, error in
            if riddleRestorer {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
       
       
        let mischiefMuralist = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.jesterJeweler = mischiefMuralist
    }
}
