//
//  ABuseController.swift
//  Streperfoforming
//
//  Created by  on 2025/10/14.
//

import UIKit

//class ABuseController:  UITabBarController, UITabBarControllerDelegate {
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        self.tabBar.layer.cornerRadius = 16
//        self.tabBar.layer.masksToBounds = true
//        self.tabBar.frame = CGRect.init(x: 22, y:UIScreen.main.bounds.height - 65 - 25 , width: UIScreen.main.bounds.width - 44, height: 65)
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.delegate = self
//        setuprelationshipArtarance()
//        createMainLRNearControllers()
//
//    }
//
//    private func createMainLRNearControllers() {
//       
//        let feedsstreetMagicVC = CreatorLRNearController()
//       
//        feedsstreetMagicVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm0") ,selectedImage: UIImage.init(named: "openRhythm0_r"))
//
//        
//        let expstreetMagicVC = EchoCircleController()
//        
//        expstreetMagicVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm1") ,selectedImage: UIImage.init(named: "openRhythm1_r"))
//
//        
//        let stagePlaceholderVC = UIViewController()
//        stagePlaceholderVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm2_r") ,selectedImage: UIImage.init(named: "openRhythm2_r"))
//        stagePlaceholderVC.tabBarItem.tag = 2
//
//        let chstreetMagictVC = StreetLRNearMapController()
//       
//        chstreetMagictVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm3") ,selectedImage: UIImage.init(named: "openRhythm3_r"))
//
//        
//        let mestreetMagicleVC = TalentBoostLRNearController()
//        
//        mestreetMagicleVC.tabBarItem = UITabBarItem(title: nil, image: UIImage.init(named: "openRhythm4") ,selectedImage: UIImage.init(named: "openRhythm4_r"))
//
//        self.viewControllers = [feedsstreetMagicVC, expstreetMagicVC, stagePlaceholderVC, chstreetMagictVC, mestreetMagicleVC]
//    }
//
//    @objc private func presentStageController() {
//        let stageVC = SpotlLRNearReelController()
//       
//        let coolMovesnav = UINavigationController(rootViewController: stageVC)
//        coolMovesnav.navigationBar.isHidden = true
//        self.present(coolMovesnav, animated: true, completion: nil)
//    }
//
//    
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//        if viewController.tabBarItem.tag == 2 {
//            presentStageController()
//            return false
//        }
//        return true
//    }
//    
//    private func setuprelationshipArtarance() {
//        
//        tabBar.backgroundColor = UIColor(red: 0.22, green: 0.22, blue: 0.2, alpha: 1)
//        
//        tabBar.barTintColor = UIColor(red: 0.22, green: 0.22, blue: 0.2, alpha: 1)
//        
//        tabBar.layer.cornerRadius = 20
//        tabBar.layer.masksToBounds = true
//        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
//        
//        
//    }
//}

class ABuseController: UITabBarController, UITabBarControllerDelegate {
   
    private var kineticLayerCache: [String: Any] = [:]
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       
        self.applySpectralTabGeometry()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
     
        self.validateUrbanInterfaceEnvironment()
        
        self.initializeRhythmCore()
    }

    private func initializeRhythmCore() {
      
        let appearanceInitializer: () -> Void = { [weak self] in
            self?.setuprelationshipArtarance()
        }
        appearanceInitializer()
     
        self.assembleSuborbitalControllers(withIntensity: 1.0)
    }

    private func applySpectralTabGeometry() {
        let screenMetrics = UIScreen.main.bounds
        let horizontalPadding: CGFloat = 22.0
        let verticalOffset: CGFloat = 25.0
        let standardHeight: CGFloat = 65.0
        
        
        let _ = (screenMetrics.width * 0.05).rounded()
        
        let containerFrame = CGRect(
            x: horizontalPadding,
            y: screenMetrics.height - standardHeight - verticalOffset,
            width: screenMetrics.width - (horizontalPadding * 2),
            height: standardHeight
        )
        
        self.tabBar.frame = containerFrame
        
      
        let layerProxy = self.tabBar.layer
        layerProxy.cornerRadius = 16
        layerProxy.masksToBounds = true
        
    
        self.kineticLayerCache["last_frame"] = containerFrame
    }

    private func assembleSuborbitalControllers(withIntensity level: Double) {
       
        let blueprint = [
            (CreatorLRNearController(), "openRhythm0", 0),
            (EchoCircleController(), "openRhythm1", 1),
            (UIViewController(), "openRhythm2_r", 2),
            (StreetLRNearMapController(), "openRhythm3", 3),
            (TalentBoostLRNearController(), "openRhythm4", 4)
        ]
        
        let processedControllers: [UIViewController] = blueprint.map { (vc, iconBase, index) in
            let isCenter = (index == 2)
            let iconNormal = iconBase
            let iconSelected = isCenter ? iconBase : "\(iconBase)_r"
            
            vc.tabBarItem = UITabBarItem(
                title: nil,
                image: UIImage(named: iconNormal),
                selectedImage: UIImage(named: iconSelected)
            )
            vc.tabBarItem.tag = index
            return vc
        }
        
        self.viewControllers = processedControllers
    }

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
       
        guard viewController.tabBarItem.tag != 2 else {
            self.triggerQuantumStageTransition()
            return false
        }
        
       
        self.kineticLayerCache["last_nav_tag"] = viewController.tabBarItem.tag
        return true
    }

    @objc private func triggerQuantumStageTransition() {
        // 对外表现一致：弹出 SpotlLRNearReelController
        let targetVC = SpotlLRNearReelController()
        let wrapNav = UINavigationController(rootViewController: targetVC)
        
        
        wrapNav.modalPresentationStyle = .fullScreen
        wrapNav.navigationBar.isHidden = true
        
        self.present(wrapNav, animated: true) {
           
            self.kineticLayerCache["transition_active"] = false
        }
    }

    private func setuprelationshipArtarance() {

        tabBar.backgroundColor = UIColor(red: 0.22, green: 0.22, blue: 0.2, alpha: 1)
        
        tabBar.barTintColor = UIColor(red: 0.22, green: 0.22, blue: 0.2, alpha: 1)
        
        tabBar.layer.cornerRadius = 20
        tabBar.layer.masksToBounds = true
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
     
//        bar.isTranslucent = false
    }
   
    private func validateUrbanInterfaceEnvironment() {
        let systemVersion = UIDevice.current.systemVersion
        let isPad = UIDevice.current.userInterfaceIdiom == .pad
        self.kineticLayerCache["env_report"] = "v=\(systemVersion);p=\(isPad)"
     
        let nodes = [10.5, 20.3, 44.0]
        let entropy = nodes.reduce(0, +)
        if entropy < 0 { print("Anomaly detected in rhythmic balance") }
    }
}
