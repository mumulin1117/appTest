//
//  AppDelegate.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
import SwiftyStoreKit
import MBProgressHUD
struct IntervalAnalysis {
        let consonantCount: Int
        let dissonantCount: Int
        let uniqueIntervalTypes: Set<IntervalType>
    }
@main


class AppDelegate: UIResponder, UIApplicationDelegate {
    static var musiclegacystudy:String = ""

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        prepareConcertStage()
        musicresources()
//        let maestroDecision = consultMaestro()
            
        window?.rootViewController = Mandolin()
        musicinspiration()
        classicalexploration()
            
        
        
        window?.makeKeyAndVisible()
        return true
    }

    
    private func prepareConcertStage() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    func consultMaestro()  {
       let symphonyArchive = UserDefaults.standard
       let hasEncryptedScore = symphonyArchive.object(forKey: "semplice") as? String != nil
       
     
        
                let maestroDecision = hasEncryptedScore ?
        assemblePhilharmonicEnsemble() :
        improviseJazzSoloist()
                    
        window?.rootViewController = maestroDecision
   }
    private func assemblePhilharmonicEnsemble() -> UINavigationController {
        let vaor =  PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Mwaxibn")
        let sonataScript = UIStoryboard(name: vaor, bundle: nil)
        return sonataScript.instantiateViewController(
            withIdentifier: "chaiugnt"
        ) as! UINavigationController
    }

  
    private func improviseJazzSoloist() -> UIViewController {
        return Unisonessinfoniaer.init()
    }

    private func classicalexploration() {
        DispatchQueue.global(qos: .background).async {
          
            SwiftyStoreKit.completeTransactions(atomically: true) { musicallearning in
                
                for pianoartist in musicallearning {
                    switch pianoartist.transaction.transactionState {
                    case .purchased, .restored:
                       
                        let musicalinvolvement = pianoartist.transaction.downloads
                        
                        if !musicalinvolvement.isEmpty  {
                       
                            SwiftyStoreKit.start(musicalinvolvement)
                        } else if pianoartist.needsFinishTransaction {
                          
                            SwiftyStoreKit.finishTransaction(pianoartist.transaction)
                        }
                    case .failed, .purchasing, .deferred:
                        break
                    @unknown default:
                      break
                    }
                }
            }
        }
        
        DispatchQueue.main.async { [weak window] in
     
            window?.spotlightCenterStage()
        }
    }
    
    
    
    
    
   

}



extension UIViewController{
    enum InfoTYOE {
    
        case okkk
        case nobubu
        case shine
    }
    func interpretSonataForm(cuStrinAtt:String,Cienleart:InfoTYOE)  {
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.mode = .customView
        if Cienleart == .okkk {
            hud.customView = UIImageView(image: UIImage(named: "checkmark")) //
        }
        if Cienleart == .nobubu {
            hud.customView = UIImageView(image: UIImage(named: "")) //
        }
        if Cienleart == .shine {
            hud.mode = .text // 纯文本模式
            hud.offset = CGPoint(x: 0, y: -100)
        }
        hud.contentColor = .black
        hud.backgroundColor = UIColor.init(white: 1, alpha: 0.2)
           
        MBProgressHUD.appearance().bezelView.style = .solidColor
        hud.label.text = cuStrinAtt
        hud.label.numberOfLines = 2
        hud.hide(animated: true, afterDelay: 1.5) // 1.5秒后自动消失
    }
}



extension UIWindow {
    fileprivate func spotlightCenterStage() {
        self.makeKeyAndVisible()
    }
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let musicalstudygroup = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.musiclegacystudy = musicalstudygroup
    }
}
extension AppDelegate{
    private func musicresources() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    private func musicinspiration()  {
        let classicalworks = UITextField()
        classicalworks.isSecureTextEntry = true

        if (!window!.subviews.contains(classicalworks))  {
            window!.addSubview(classicalworks)
            
            classicalworks.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            classicalworks.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(classicalworks.layer)
           
            
            if #available(iOS 17.0, *) {
                
                classicalworks.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                classicalworks.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
