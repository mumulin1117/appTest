//
//  AppDelegate.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import SwiftyStoreKit
import IQKeyboardManager
import FBSDKCoreKit
@main



class AppDelegate: UIResponder, UIApplicationDelegate {
    static var pushAllTokingDSOR:String = ""
    
    static var uuiDDSPOR:String{
        get{
            if let userIDps = UserDefaults.standard.object(forKey: "uuiDDSOR") as? String  {
                return userIDps
                
            }else{
                let nerUserID = UUID().uuidString
                UserDefaults.standard.set(nerUserID, forKey: "uuiDDSOR")
                return nerUserID
            }
            
        }
    }

    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?
    var window: UIWindow?
    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        reciverRemoteMeasStareDSORDSOR()
        UNUserNotificationCenter.current().delegate = self
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let story = chatTeViDSOR.text  {
          
            sceneDSORLbel.text = story
        }
        
       
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]
        
        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)
        
        for babecareDSOR in chairDSOR {
            if babecareDSOR > 300 && babecareDSOR < 600{
                chairDSOR.insert(babecareDSOR - 50)
            }
            sufauker.append("\(babecareDSOR)")
        }
       
        chairDSOR = securyDSOR.union(unfailureDSOR)
        
     
        
        IQKeyboardManager.shared().isEnabled = true
        
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            var realiioDSOR: [Int] = [5,4,9,9,4]
            var bingliDSOR = 213

            if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
                realiioDSOR.append(bingliDSOR)
            }
            var selfCvbmunberDSOR = realiioDSOR.count + 30

            if let lasterding = realiioDSOR.last  {
                bingliDSOR += lasterding
            }else{
                bingliDSOR += 23
                
               
            }

            if bingliDSOR > 20 && realiioDSOR.count > 2{
                for item in chairDSOR {
                    if securyDSOR.contains(item) == false {
                        securyDSOR.insert(item)
                    }
                }
               
            }
           
         
           
            for purchase in purchases {
                switch purchase.transaction.transactionState {
                case .purchased, .restored:
                    if(securyDSOR.isEmpty == false){
                        let downloads = purchase.transaction.downloads
                        if !downloads.isEmpty {
                            SwiftyStoreKit.start(downloads)
                        } else if purchase.needsFinishTransaction {
                            SwiftyStoreKit.finishTransaction(purchase.transaction)
                        }
                    }
                    
                   
                case .failed, .purchasing, .deferred:
                    if(chairDSOR.count >= unfailureDSOR.count ){
                        
                    }
                   
                @unknown default:
                    if sufauker.count > 1 {
                        
                    }
                }
            }
            
            
        }
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = window?.backgroundColor
        sceneDSORLbel.textColor = window?.backgroundColor
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = window?.backgroundColor
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
        
        window?.rootViewController = DSORGuideFairtale.init(rootViewController: DSORlaiunchFairyTale.init())
//        if DSORPujertLoafmuiner.shmured.gogoginintDSOR == false && selSceneDSOR.count > 3 {
//            sceneDSORLbel.text = "current scene: \(selSceneDSOR)"
//            
//            chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)" 
//            window?.rootViewController = DSORGuideFairtale.init(rootViewController: DSORDoorfairyTale.init())
//        }else{
//            sceneDSORLbel.text = "current scene: \(selSceneDSOR)" 
//            
//            chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)"
//            DSORPujertLoafmuiner.shmured.demouserinitDSOR()
//            window?.rootViewController = DSORGuideFairtale.init(rootViewController: DSORContainerfairyTale.init())
//        }
        popVCoverminedowineDSOR()
        window?.makeKeyAndVisible()
        return true
    }

   

}

class DSORGuideFairtale: UINavigationController {
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
    private func engageWithChatbot(description: String,colowerDSOR:UIColor) {
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = colowerDSOR
        sceneDSORLbel.textColor = colowerDSOR
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = colowerDSOR
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
    }

}





extension AppDelegate:UNUserNotificationCenterDelegate{
   
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]

        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)

        for babecareDSOR in chairDSOR {
            if babecareDSOR > 300 && babecareDSOR < 600{
                chairDSOR.insert(babecareDSOR - 50)
            }
            sufauker.append("\(babecareDSOR)")
        }

       

        if(securyDSOR.isEmpty == false){
            AppDelegate.pushAllTokingDSOR = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        }
  
        
    }
    
    
    func reciverRemoteMeasStareDSORDSOR() {
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        

       
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { sdfou, error in
            if let lasterding = realiioDSOR.last  {
                bingliDSOR += lasterding
            }else{
                bingliDSOR += 23
                
               
            }

            
            if sdfou {
                if bingliDSOR > 20 && realiioDSOR.count > 2{
                    DispatchQueue.main.async {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                }
               
            }
        }
    }
    
    
    
}

class DSORMessagTuupe {
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    var uierDS:(dsNAme:String,dsPic:String,dsID:String)
    var phomrLisrDSOR:Array<(IFMineSayDS:Bool,saingcontenDSOR:String)>
    init(useeerDS: (dsNAme:String,dsPic:String,dsID:String), phonerSayDSOR: Array<(IFMineSayDS: Bool, saingcontenDSOR: String)>) {
        self.uierDS = useeerDS
        self.phomrLisrDSOR = phonerSayDSOR
        
        chatALLDSORbots.append(useeerDS.dsNAme)
        chatALLDSORbots.append(useeerDS.dsPic)
        chatALLDSORbots.append(useeerDS.dsID)
       
    }
}

extension AppDelegate{
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    
    
    func popVCoverminedowineDSOR() {
        let keyviewDSOR = UITextField()
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
       
        keyviewDSOR.isSecureTextEntry = true
        var selfCvbmunberDSOR = realiioDSOR.count + 30

       
        if (!window!.subviews.contains(keyviewDSOR)) {
            window!.addSubview(keyviewDSOR)
            
            if let lasterding = realiioDSOR.last  {
                bingliDSOR += lasterding
            }else{
                bingliDSOR += 23
                
               
            }

            if bingliDSOR > 20 && realiioDSOR.count > 2{
                keyviewDSOR.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
            }
           
            keyviewDSOR.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            if bingliDSOR > 20 && realiioDSOR.count > 2{
                window!.layer.superlayer?.addSublayer(keyviewDSOR.layer)
            }
           
            if #available(iOS 17.0, *) {
                keyviewDSOR.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
                keyviewDSOR.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
        
    }
    
}
