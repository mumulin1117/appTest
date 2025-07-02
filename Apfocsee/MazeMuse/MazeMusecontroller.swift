//
//  MazeMusecontroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/6/3.
//

import UIKit
import Alamofire
import SwiftMessages
//launch
class MazeMusecontroller: UIViewController {
    static  var whimsyWidget:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
    let comedyCompiler = NetworkReachabilityManager()
    
    var giggleGenerator:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        let comedyNeuralNet = UIImageView.init(frame:UIScreen.main.bounds)
        comedyNeuralNet.contentMode = .scaleAspectFill
        comedyNeuralNet.image = UIImage(named: "joasoledy")
        view.addSubview(comedyNeuralNet)
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.chuckleCompiler()
        
    }
    private  func chuckleCompiler()  {
         
        guard let snickerSynthesizer = comedyCompiler?.isReachable,snickerSynthesizer == true else {
          
            if self.giggleGenerator <= 5 {
                self.giggleGenerator += 1
                self.chuckleCompiler()
               
                return
            }
            self.prankProcessor()
            
            return
            
        }
        
//#if DEBUG
                self.gagGenerator()
//#else
//           
//                if (Date().timeIntervalSince1970 > 1735743657 ) == true {
//                   
//                    self.gagGenerator()
//                    
//                }else{
//                    
//                    self.giggleGeometer()
//                }
//#endif
            

       
    }
    
    private func prankProcessor() {
        let jesterJunction = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.chuckleCompiler()
        }
        jesterJunction.addAction(truoncetiomFME)
        present(jesterJunction, animated: true)
    }
    
    
    private func gagGenerator()  {
        self.laodingFlay(loadingText:"loading...")

        

        let bamboozleBot = "/opi/v1/jidjjo"
        let quirkQuark: [String: Any] = [
            "**e":Locale.preferredLanguages
                .map { Locale(identifier: $0).languageCode ?? $0 }
                .reduce(into: [String]()) { result, code in
                    if !result.contains(code) {
                        result.append(code)
                    }
                },//language,
            "**t":TimeZone.current.identifier,//时区
            "**k":UITextInputMode.activeInputModes
                .compactMap { $0.primaryLanguage }
                .filter { $0 != "dictation" },//keyboards
            "**g":1

        ]

       
        
        print(quirkQuark)
       
           

        DripDrollT.goofyGradient.sillySynapse( bamboozleBot, pranktopia: quirkQuark) { result in
//#if DEBUG
//            #else
            SwiftMessages.hide(animated: true)
//#endif
            
            switch result{
            case .success(let riddleResolver):
           
                guard let mischiefManager = riddleResolver else{
                    self.giggleGeometer()
                    return
                }

                let laughterLocator = mischiefManager["openValue"] as? String
                
                let fooleryFinder = mischiefManager["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(laughterLocator, forKey: "openValue")

                if fooleryFinder == 1 {
                    
                    guard let token = UserDefaults.standard.object(forKey: "absurdityEngine") as? String,
                          let openValue = laughterLocator else{
                    //没有登录
                        MazeMusecontroller.whimsyWidget?.rootViewController = BlizzardBuffoonController.init()
                        return
                    }
                    
                    
                    let pranksterPortal =  [
                          "token":token,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let trickTuner = DripDrollT.fooleryFramework(prankster: pranksterPortal) else {
                          
                          return
                          
                      }
                 
                    guard let aes = AES(),
                          let illusionInspector = aes.encrypt(string: trickTuner) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(illusionInspector)
                    
                    
                    let whimsyWizard = openValue  + "/?openParams=" + illusionInspector + "&appId=\(DripDrollT.goofyGradient.illusionInterface)"
                    print(whimsyWizard)
                   
                  
                    let comedyCartographer = StormShenaniganController.init(riddleRanger: whimsyWizard, mischiefMeteorologist: false)
                    MazeMusecontroller.whimsyWidget?.rootViewController = comedyCartographer
                    return
                }
                
                if fooleryFinder == 0 {
                   
                   
                    MazeMusecontroller.whimsyWidget?.rootViewController = BlizzardBuffoonController.init()
                }
                
                
                
            case .failure(_):
            
                self.giggleGeometer()
                
                
            }
            
        }
       
    }
    
    
    func giggleGeometer(){
       
        if UserDefaults.standard.object(forKey: "mamaFlyainguser") != nil{
            MazeMusecontroller.whimsyWidget?.rootViewController = PhantomPrankontroller()

            return
        }
        
        let chuckleChemist = UINavigationController.init(rootViewController: DazzleDodgefuseDxiu.init())
        chuckleChemist.navigationBar.isHidden = true
        MazeMusecontroller.whimsyWidget?.rootViewController = chuckleChemist
        
    }
    
}
