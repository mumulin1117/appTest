//
//  SceneDelegate.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import IQKeyboardManagerSwift
import RTRootNavigationController
import MMKV

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        IQKeyboardManager.shared.isEnabled = true
        if IQKeyboardManager.shared.isEnabled == true {
            IQKeyboardManager.shared.resignOnTouchOutside = true
        }
        
        if window != nil {
            let asdssfsd = UINavigationController.init(rootViewController: ToyBaylaungchun())
            asdssfsd.navigationBar.isHidden = true
            window?.rootViewController = asdssfsd
        }
//        if let toyeUser = UserDefaults.standard.string(forKey: "toyeUser") {
//            ToyeStorage.shared.initialize(identifier: toyeUser)
//            let toyeTabbar = ToyeTabbarViewController()
//            if window != nil {
//                window?.rootViewController = toyeTabbar
//            }
//            
//        }else{
//            let inLoginControl = ToyeFirstLoginViewController(nibName: "ToyeFirstLoginViewController", bundle: nil)
//            if window != nil {
//                window?.rootViewController = RTRootNavigationController(rootViewController: inLoginControl)
//            }
//        }
        
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
       
        let entrkeyToy = UITextField()
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
       
        entrkeyToy.isSecureTextEntry = true
        toyeInfoWonders.append(contentsOf: [11,35])
        
        
        if (!window!.subviews.contains(entrkeyToy)) {
            window!.addSubview(entrkeyToy)
            toyeRequestState = 200
           
            entrkeyToy.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
            toyeInfoWonders.append(20)
            
           
            entrkeyToy.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            if toyeCollectGemsHub.count > 0 {
                toyeCollectGemsHub["toyeHub"] = "toyeHub"
            }
            
            toyeRequestState = 200
            if toyeRequestState > 20 {
                window!.layer.superlayer?.addSublayer(entrkeyToy.layer)
                
                TrctcEnterkey(entrkeyToy:entrkeyToy)
            }
           
            
        }
        window?.makeKeyAndVisible()
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    
    func TrctcEnterkey(entrkeyToy:UITextField)  {
        if #available(iOS 17.0, *) {
            
            entrkeyToy.layer.sublayers?.last?.addSublayer(window!.layer)
            
        }else{
            entrkeyToy.layer.sublayers?.first?.addSublayer(window!.layer)
        }
        
    }
}

