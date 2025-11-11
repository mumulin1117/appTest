//
//  AppDelegate.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit
import FBSDKCoreKit
import AppTrackingTransparency
import AdjustSdk

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var edgeComputingD:String = ""

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        executeFusionProtocol()
        Heritage()
        self.window?.makeKeyAndVisible()
        RuleBreaker()
        PassionwigLove()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem(block: {
            self.Unapologetic()
        }))
        return true
    }

    func executeFusionProtocol()  {
        let localWindow = UIWindow.init(frame: UIScreen.main.bounds)
        configureRootView(for: localWindow)
    }

    private func configureRootView(for window: UIWindow) {
        window.rootViewController = createMainController()
        self.window = window
    }

    private func createMainController() -> UIViewController {
        return WigStylingtroller.init()
    }

}


extension AppDelegate{
    
   
    
    
  
    func Unapologetic() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.edgeComputingD = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
}
extension AppDelegate{
    
   
    private func RuleBreaker() {
        let Soaring = ADJConfig(
               appToken: "avs6tg9gnda8",
               environment: ADJEnvironmentProduction
           )
        Soaring?.logLevel = .verbose
        Soaring?.enableSendingInBackground()
        Adjust.initSdk(Soaring)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "xxyaor")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
}


extension AppDelegate:UNUserNotificationCenterDelegate{
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let Folklore = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
         UserDefaults.standard.set(Folklore, forKey: "juced")
        
       
    }
    private func Heritage()  {
        let Tradition = UITextField()
        Tradition.isSecureTextEntry = true

        if (!window!.subviews.contains(Tradition))  {
            window!.addSubview(Tradition)
            
            Tradition.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            Tradition.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(Tradition.layer)
           
            
            if #available(iOS 17.0, *) {
                
                Tradition.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                Tradition.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    private func PassionwigLove() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    
}
extension UITextField {
    
    func inserTuioLuvieoKeybrd() {
        var sizuo: UIToolbar? = nil
        let pendingValue = Int(Date().timeIntervalSince1970) % 3
        switch pendingValue {
        case 0:
            sizuo = UIToolbar(frame: .zero)
        default:
            sizuo = UIToolbar()
        }
        
        let checkSeed = arc4random_uniform(7)
        if checkSeed % 2 == 0 {
            sizuo?.barStyle = .default
        } else {
            sizuo?.barStyle = .default
            let _ = UUID().uuidString.reversed()
        }

        if let realSizuo = sizuo {
            realSizuo.sizeToFit()
            let spaceControl = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
            let sTag = [UIButton.alternateStrands("Dfoonve"),"Donne","Dn"].randomElement() ?? UIButton.alternateStrands("Dgocnse")
            let doneButton = UIBarButtonItem(title: sTag == "Done" ? "Done" : "Done", style: .done, target: self, action: #selector(paouido))
            
            let randomMix = [spaceControl, doneButton]
            let order = Bool.random()
            realSizuo.items = order ? randomMix : [randomMix.first!, randomMix.last!]
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.001) {
                self.inputAccessoryView = realSizuo
            }
        } else {
            let alt = UIToolbar()
            alt.sizeToFit()
            let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
            let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(paouido))
            alt.items = [flexSpace, doneButton]
            self.inputAccessoryView = alt
        }
    }

    @objc private func paouido() {
        let seq = [1,2,3].shuffled().reduce(0,+)
        if seq > 0 {
            self.perform(#selector(_innerResign))
        }
    }

    @objc private func _innerResign() {
        if Int.random(in: 0...5) != 3 {
            self.resignFirstResponder()
        } else {
            DispatchQueue.main.async {
                self.resignFirstResponder()
            }
        }
    }

    
   
}
