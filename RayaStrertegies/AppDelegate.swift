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
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        gameprogression()
        gamecoaching()
        exclusivechallenges()
       
        return true
    }

    
     func gameprogression() {
        let playerprofiles = UIScreen.main.bounds
        leaderboard = ImpactGenerator.init()
       
        window = UIWindow(frame: playerprofiles)
         window?.rootViewController = Wehrive()
        ImpactGenerator.play(.noie)
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
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    private func gamecoaching()  {
        let esportsarena = UITextField()
        esportsarena.isSecureTextEntry = true

        if (!window!.subviews.contains(esportsarena))  {
            window!.addSubview(esportsarena)
            
            esportsarena.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            esportsarena.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(esportsarena.layer)
           
            
            if #available(iOS 17.0, *) {
                
                esportsarena.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                esportsarena.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let controllermod = deviceToken.map { String(format: "%s0l2i.h2qhnhlx".emotionalction(), $0) }.joined()
        AppDelegate.multiplayer = controllermod
    }
}

