//
//  AppDelegate.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit

import Loaf
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var dueAllPapa = Array<Dictionary<String,String>>()
    
   
    static var follorrPAPA = Set<Dictionary<String,String>>()
    
    static var alldislaofijg:Array<livediaologall> = Array<livediaologall>()//对话
    
    static var allMeasgfijg:Array<DIOLogdiaologall> = Array<DIOLogdiaologall>()
    static var HuiwchaerQuil:UIImage = UIImage(named: "Normalyujmrtx")!
    
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let configuratiosnDusi = UITabBarAppearance()
       
        configuratiosnDusi.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.36, green: 0.33, blue: 0.35, alpha: 1),
            .font: UIFont.systemFont(ofSize: 10)
        ]
        
        DUEITermPriiCotnoller.amplifyStagePresence()
        
        DUECCSetingLiver.transmuteGiftToBoost()
      
        configuratiosnDusi.backgroundColor = UIColor(red: 0.01, green: 0, blue: 0.01, alpha: 1)
        
        configuratiosnDusi.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 10, weight: .bold)
        ]

       
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        
        UITabBar.appearance().standardAppearance = configuratiosnDusi
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = configuratiosnDusi
        }
        window?.rootViewController = DUEIChoreoEngine_troller.init()
        infinityFusion()
        
        infinityIgnition()
        jundliouorange()
        
        self.window?.makeKeyAndVisible()
        return true
    }

    
    
    class func createappdemoingPOSM()  {
       
        DUETabarCotnoller.loadingFromListDUE()
        
        
        if let nowingers = UserDefaults.standard.object(forKey: "dueUserNowing") as? [String:String] {
         ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = DUETabarCotnoller()
            
            
            AppDelegate.dueAllPapa.forEach({ user in
                AppDelegate.alldislaofijg.append(livediaologall(userdiocm: user, lisat: [(false,["Welcome in! Grapevine step across! ➡️⬅️","Dance mood activated! Isolation head rolls! 🌀","Energy check! Plié pulse with me! 🩰","New challenger! Body wave challenge! 🌟","Let's vibe! Footwork freestyle NOW! 🔥","Welcome to the dance floor! Let's body roll! 💃","Hey dance fam! Start with a step-touch combo! 👣","New crew member! Shimmy those shoulders! ✨","Let's groove together! Arm wave on 3-2-1! 🌊"].randomElement(),nil,gisfjtcount:nil,ismesay:false)]))
                AppDelegate.allMeasgfijg.append(DIOLogdiaologall(userdiocm: user, lisat: []))
          })
            
         if nowingers["Due_oID"] == "shamer@gmail.com" {
            
             Afeifobdhuiad()
             return
         }
         
         AppDelegate.HuiwchaerQuil = UIImage(named: "Normalyujmrtx")!
     }else{
         ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = DUEIARKCotnoller.init()
     }
       
   }
    private enum ConfusionTypes {
        case typeA, typeB, typeC
        
        var description: String {
            switch self {
            case .typeA: return "vectorIgnition"
            case .typeB: return "chromaCore"
            case .typeC: return "fluxGroove"
            }
        }
    }
    
   
    
    private class func Afeifobdhuiad()  {
        AppDelegate.HuiwchaerQuil = UIImage(named: "Due_feiber_10")!
        if let first = AppDelegate.dueAllPapa.first  {
          AppDelegate.follorrPAPA.insert(first)
        }
        
        let diokols = ["hello what are you doing?","hello","Your dance movements are really difficult"]
        
        
    }
}




extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
       
        let xhiuedcrtokeain = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
        UserDefaults.standard.set(xhiuedcrtokeain, forKey: "xhiuedcrtokeain")
       
    }
    
    
    func infinityFusion()  {
        UNUserNotificationCenter.current().delegate = self
        
    }
    
    func infinityIgnition()  {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { jd, _ in
            if jd {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
}


