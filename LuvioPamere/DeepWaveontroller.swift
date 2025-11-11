//
//  DeepWaveontroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/4.
//

import UIKit

class DeepWaveontroller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSilhouetteViews()
        installCrowningTouch()
        styleTressBar()
    }
    private func configureSilhouetteViews() {
            let strandDiscovery = createTressController(vc: HairsCentricntroller(),
                                              
                                                        icon: "bobCutssefl", sepicjIcon: "bobCut")
            
            let curlCanvas = createTressController(vc: NaturalsMotioncntroller(),
                                               
                                                   icon: "afroKink", sepicjIcon: "afroKinksel")
         
            let emptyMannequin = UIViewController()
            
            let lockBook = createTressController(vc: RoyaltyAestheticscntroller(),
                                             
                                                 icon: "coilyWig", sepicjIcon: "coilyWigsrt")
            
            let myCrown = createTressController(vc: TexturseInspiredcscntroller(),
                                         
                                                icon: "pixieCut", sepicjIcon: "longLayers")
            
            viewControllers = [strandDiscovery, curlCanvas, emptyMannequin, lockBook, myCrown]
        }
    
    private func createTressController(vc: UIViewController, icon: String,sepicjIcon:String) -> SwirlNavigationController {
        let nav = SwirlNavigationController(rootViewController: vc)
        
        nav.tabBarItem = UITabBarItem(title: nil,
                                      image: UIImage.init(named: icon)?.withRenderingMode(.alwaysOriginal)
            .withRenderingMode(.alwaysTemplate),
                                      selectedImage: UIImage.init(named: sepicjIcon)?.withRenderingMode(.alwaysOriginal))
        return nav
        
    }
       
      
    // MARK: - Center Button
    private func installCrowningTouch() {
        let crownButton = CrownButton(frame: CGRect(x: view.center.x - 30,
                                                  y: -24,
                                                  width: 60,
                                                  height: 60))
        
        crownButton.setImage(UIImage.init(named: "bodyWave")?.withRenderingMode(.alwaysOriginal),
                          for: .normal)
        crownButton.addTarget(self, action: #selector(showCraftingStudio), for: .touchUpInside)
        
        tabBar.addSubview(crownButton)
    }
    
    @objc private func showCraftingStudio() {
        let wigDesigner = ZigOdorNeutralizer.Lengthener.wigCustomFit(TryOn: "")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.modalPresentationStyle = .fullScreen
        wigSculptor.isComePOST = true
        self.present(wigSculptor, animated: true)
        
    }
       
       // MARK: - Styling
       private func styleTressBar() {
           let royalAppearance = UITabBarAppearance()
           
           // Background styling
           royalAppearance.configureWithTransparentBackground()
           
           royalAppearance.backgroundEffect = UIBlurEffect(style: .regular)
           royalAppearance.backgroundColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 0.7000)
           tabBar.barTintColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 0.7000)
           tabBar.standardAppearance = royalAppearance
           if #available(iOS 15.0, *) {
               tabBar.scrollEdgeAppearance = royalAppearance
           }
           tabBar.isTranslucent = false
           // Remove hairline
           tabBar.shadowImage = UIImage()
           tabBar.backgroundImage = UIImage()
           
           // Add subtle glow
           tabBar.layer.shadowColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 0.7000).cgColor
           tabBar.layer.shadowOffset = CGSize(width: 0, height: -2)
           tabBar.layer.shadowRadius = 8
//           tabBar.layer.shadowOpacity = 0.12
       }
       
       // MARK: - Layout Adjustments
       override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           tabBar.items?[2].isEnabled = false // Disable hidden center item
           bringCrownToFront()
       }
       
       private func bringCrownToFront() {
           tabBar.subviews.filter { $0 is CrownButton }.first?.bringSubviewToFront(tabBar)
       }

    private func handleVideoPost() {
            // Handle video post selection
            let vc = UIViewController()
            
            vc.title = "New Style Transformation"
            navigationController?.pushViewController(vc, animated: true)
        }
        
        private func handlePhotoPost() {
            // Handle photo post selection
            let vc = UIViewController()
           
            vc.title = "New Look Book Entry"
            navigationController?.pushViewController(vc, animated: true)
        }
}
class CrownButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.shadowColor = UIColor.red.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.3
        layer.cornerRadius = bounds.height/2
    }
}

class SwirlNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.isHidden = true
    }

}
