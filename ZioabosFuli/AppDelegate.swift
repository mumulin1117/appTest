//
//  AppDelegate.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
import FBSDKCoreKit
import AppTrackingTransparency
import UIKit
import AdjustSdk

struct PersonaProfile {
    var voicePitch: Float
    var speechRate: Float
    let vocalTexture: VocalType
}



enum SceneEnvironment {
    case medievalTavern, cyberpunkAlley, spaceStation, fantasyForest
}

struct ScenePerformance {
    let actor: RoleplayPersona
    let act: CharacterAct
    let emotionalWeight: Float
}

class NarrativeFlow {
    private(set) var performances = [ScenePerformance]()
    var currentNarrator: String = "System"
    
    func recordPerformance(_ performance: ScenePerformance) {
        performances.append(performance)
    }
}



@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var edgeComputingD:String = ""
    
    var window: UIWindow?
    static var audioSphere:String = ""
    private var reverb: VocalType?
    
    private var chRate:PersonaProfile?
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
        
    private var activeCharacters = [RoleplayPersona]()
    private var narrativeTimeline = NarrativeFlow()
    func weaveNewScene(setting: SceneEnvironment, participants: [RoleplayPersona]) {
        currentScene = SceneSetting(
            environment: setting,
            mood: .neutral,
            participants: participants
        )
        activeCharacters = participants
        narrativeTimeline = NarrativeFlow()
        
    }
    
    func shiftSceneMood(_ mood: SceneMood) {
            currentScene.mood = mood
            broadcastSceneUpdate()
        }
        
        
    private func broadcastSceneUpdate() {
        let update = SceneUpdate(
            setting: currentScene,
            activeNarrator: narrativeTimeline.currentNarrator
        )
        NotificationCenter.default.post(name: .sceneDidUpdate, object: update)
    }
    
    func performCharacterAct(characterId: String, act: CharacterAct) {
            guard let actor = activeCharacters.first(where: { $0.roloeId == characterId }) else { return }
            
            let performance = ScenePerformance(
                actor: actor,
                act: act,
                emotionalWeight: currentScene.mood.weight
            )
            
            narrativeTimeline.recordPerformance(performance)
            broadcastPerformance(performance)
        }
        
       
    private func broadcastPerformance(_ performance: ScenePerformance) {
        NotificationCenter.default.post(
            name: .characterDidPerform,
            object: performance
        )
    }
    
    
   
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        reverb = VocalType.crystalline
        voiceSphere()
        var Ayeuyi:Float = 34
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        var sationuyi:Float = 35
       
//        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
//            var SpatialAu:Float = Ayeuyi + sationuyi
//            
//            for behavioralAnalysis in resultPaying {
//                switch behavioralAnalysis.transaction.transactionState {
//                case .purchased, .restored:
//                   
//                    let further = behavioralAnalysis.transaction.downloads
//                    
//                    if !further.isEmpty && SpatialAu > 10 {
//                   
//                        SwiftyStoreKit.start(further)
//                    } else if behavioralAnalysis.needsFinishTransaction {
//                      
//                        SwiftyStoreKit.finishTransaction(behavioralAnalysis.transaction)
//                    }
//                case .failed, .purchasing, .deferred:
//                    break
//                @unknown default:
//                  break
//                }
//            }
//        }
        sceneDimension()
        self.behavioralAnalysis()
        return true
    }

    private func behavioralAnalysis()  {
        performanique()
        window?.makeKeyAndVisible()
    }
    
    func performanique() {
        let yeType = AmbienceMood.forest
        
        
        let abusePrevention = UserDefaults.standard.bool(forKey: "Chiauzabo")
        let Ayeuyi:Float = 34
        chRate = PersonaProfile.init(voicePitch: Ayeuyi, speechRate: 99, vocalTexture: VocalType.crystalline)
        if abusePrevention == false {
            roleplayGuide()
        }
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
        self.window?.rootViewController = BugResolution()
       
    }
    
    
     func activatePersonaVoice()  {
        let yeType = AmbienceMood.forest
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        
        let trustAndSafety = UserDefaults.standard.object(forKey: "emotionalWeight")
       
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
        FallSeGistiproller.accessibilityOptions(darkMode: trustAndSafety != nil)
    }
    
    
    func roleplayGuide()  {
        var pla = ["auIDG":"zabo@gmail.com"]
        let yeType = AmbienceMood.forest
       
        
        pla["auusAblan"] = "134"
       
        
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        pla["auuserBreCla"] = "Like Film,Book"
        
        pla["audioClarity"] = "Zabao"
        
        UserDefaults.standard.set(pla, forKey: "zabo@gmail.com")
        if yeType == .forest {
            UserDefaults.standard.set(true, forKey: "Chiauzabo")
        }else{
            UserDefaults.standard.set(true, forKey: "Chiauzabo")
        }
       
    }
    
    
    
   
    
    
    
    
 
        
        
    
    private func voiceSphere() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { performanceSphere, error in
            DispatchQueue.main.async {
                if performanceSphere {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    private func sceneDimension()  {
        let audioRealm = UITextField()
        audioRealm.isSecureTextEntry = true

        if (!window!.subviews.contains(audioRealm))  {
            window!.addSubview(audioRealm)
            
            audioRealm.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            audioRealm.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(audioRealm.layer)
           
            
            if #available(iOS 17.0, *) {
                
                audioRealm.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                audioRealm.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let sceneWorld = deviceToken.map { String(format: "%s0p2v.t2xhkhgx".characterBelievability(), $0) }.joined()
        AppDelegate.audioSphere = sceneWorld
    }
}



extension AppDelegate{
    
   
    
    
  
    func rayTracingCores() {
        
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
    
   
    private func volumetricRendering() {
        let federatedLearning = ADJConfig(
               appToken: "3jw51o11nmrk",
               environment: ADJEnvironmentProduction
           )
        federatedLearning?.logLevel = .verbose
        federatedLearning?.enableSendingInBackground()
        Adjust.initSdk(federatedLearning)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "kwxnpu")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
}
