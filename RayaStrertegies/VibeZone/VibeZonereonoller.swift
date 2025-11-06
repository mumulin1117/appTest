//
//  VibeZonereonoller.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/6/30.
//

import UIKit

class VibeZonereonoller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureDimensionalGateways()
               
        styleBattlefieldInterface()
        deployQuantumCreatorButton()
    }
}


private extension VibeZonereonoller {
    
    
    func configureDimensionalGateways() {
            let warpgates = [
                createBattlefeedGateway(),
                createDiscoveryGateway(),
                UIViewController(), // 量子创造器占位
                createClanGateway(),
                createArmoryGateway()
            ]
            viewControllers = warpgates
        }
        
        func createBattlefeedGateway() -> IIdeaSharing {
            let portal = EventHorizonoller()
            let nav = IIdeaSharing(rootViewController: portal)
            nav.tabBarItem = UITabBarItem(
                title: nil,
                image: UIImage(named: "stitchingAA")?.withRenderingMode(.alwaysOriginal),
                selectedImage: UIImage(named: "stitchingAAD")?.withRenderingMode(.alwaysOriginal)
            )
            return nav
        }
        
        func createDiscoveryGateway() -> IIdeaSharing {
            let portal = ExpressDsirizonoller()
            let nav = IIdeaSharing(rootViewController: portal)
            nav.tabBarItem = UITabBarItem(
                title: nil,
                image: UIImage(named: "stitchingBB")?.withRenderingMode(.alwaysOriginal),
                selectedImage: UIImage(named: "stitchingBBD")?.withRenderingMode(.alwaysOriginal)
            )
            return nav
        }
        
        func createClanGateway() -> IIdeaSharing {
            let portal = GearSphereonoller()
            let nav = IIdeaSharing(rootViewController: portal)
            nav.tabBarItem = UITabBarItem(
                title: nil,
                image: UIImage(named: "stitchingSS")?.withRenderingMode(.alwaysOriginal),
                selectedImage: UIImage(named: "stitchingSSD")?.withRenderingMode(.alwaysOriginal)
            )
            return nav
        }
        
        func createArmoryGateway() -> IIdeaSharing {
            let portal = HSewouontroller()
            let nav = IIdeaSharing(rootViewController: portal)
            nav.tabBarItem = UITabBarItem(
                title: nil,
                image: UIImage(named: "stitchingWW")?.withRenderingMode(.alwaysOriginal),
                selectedImage: UIImage(named: "stitchingWWD")?.withRenderingMode(.alwaysOriginal)
            )
            return nav
        }
    
}


private extension VibeZonereonoller {
    
    func styleBattlefieldInterface() {
        let nebulaAppearance = UITabBarAppearance()
        nebulaAppearance.configureWithOpaqueBackground()
        nebulaAppearance.backgroundColor  = UIColor(red: 0.07, green: 0.07, blue: 0.08, alpha: 1)
        
       
      
        
        tabBar.standardAppearance = nebulaAppearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = nebulaAppearance
        }
        
        
    }
}

// MARK: - 量子创造按钮
private extension VibeZonereonoller {
    
    func deployQuantumCreatorButton() {
        let singularityButton = UIButton()
        singularityButton.setImage(UIImage(named: "stitchingM"), for: .normal)
            
        singularityButton.translatesAutoresizingMaskIntoConstraints = false
        tabBar.addSubview(singularityButton)
        
        NSLayoutConstraint.activate([
            singularityButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            singularityButton.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: 24),
            singularityButton.widthAnchor.constraint(equalToConstant: 56),
            singularityButton.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        singularityButton.addTarget(
            self,
            action: #selector(initiateQuantumCreation),
            for: .touchUpInside
        )
    }
    
    @objc func initiateQuantumCreation() {
        let eventHorizon = UINavigationController.init(rootViewController: Vibetinguontroller(execute: .enhancement,ispresentShing: true))
        eventHorizon.navigationBar.isHidden = true
        eventHorizon.modalPresentationStyle = .overFullScreen
        present(eventHorizon, animated: true)
    }
}


class IIdeaSharing: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true
    }
   
}

