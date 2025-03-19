//
//  ToyeTabbarViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import RTRootNavigationController

class ToyeTabbarViewController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tyControllers = [UIViewController]()
        
        let toyscapeController = RTRootNavigationController(rootViewController: ToyscapeViewController(nibName: "ToyscapeViewController", bundle: nil))
        toyscapeController.tabBarItem.image = UIImage(named: "Toyscape")!.withRenderingMode(.alwaysOriginal)
        toyscapeController.tabBarItem.title = "HgOqMhE".ty
        toyscapeController.tabBarItem.selectedImage = UIImage(named: "ToyscapeSe")!.withRenderingMode(.alwaysOriginal)
        tyControllers.append(toyscapeController)
        
        let treasureHuntController = RTRootNavigationController(rootViewController: TreasureHuntViewController(nibName: "TreasureHuntViewController", bundle: nil))
        treasureHuntController.tabBarItem.image = UIImage(named: "TreasureHunt")!.withRenderingMode(.alwaysOriginal)
        treasureHuntController.tabBarItem.title = "FfIcNhD".ty
        treasureHuntController.tabBarItem.selectedImage = UIImage(named: "TreasureHuntSe")!.withRenderingMode(.alwaysOriginal)
        
        tyControllers.append(treasureHuntController)
        
        let toyTalksController = RTRootNavigationController(rootViewController: ToyTalksViewController(nibName: "ToyTalksViewController", bundle: nil))
        toyTalksController.tabBarItem.image = UIImage(named: "ToyTalks")!.withRenderingMode(.alwaysOriginal)
        toyTalksController.tabBarItem.title = "MlEvSeStAiGtE".ty
        toyTalksController.tabBarItem.selectedImage = UIImage(named: "ToyTalksSe")!.withRenderingMode(.alwaysOriginal)
        tyControllers.append(toyTalksController)
        
        let toyImaginariumController = RTRootNavigationController(rootViewController: ToyImaginariumViewController(nibName: "ToyImaginariumViewController", bundle: nil))
        toyImaginariumController.tabBarItem.image = UIImage(named: "ToyVault")!.withRenderingMode(.alwaysOriginal)
        toyImaginariumController.tabBarItem.title = "PpRhOvFnIzLbE".ty
        toyImaginariumController.tabBarItem.selectedImage = UIImage(named: "ToyVaultSe")!.withRenderingMode(.alwaysOriginal)
        tyControllers.append(toyImaginariumController)
        
        self.viewControllers = tyControllers
        self.delegate = self
        tabBar.backgroundColor = UIColor.black
        tabBar.tintColor = UIColor.init(hex: "#E854F8")
        tabBar.unselectedItemTintColor = UIColor.init(hex: "#4D2693")
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if tabBarController.isKind(of: UITabBarController.self) {
            if viewController.isKind(of: UIViewController.self) {
                UIView.setAnimationsEnabled(false)
            }
        }
        return true
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if tabBarController.isKind(of: UITabBarController.self) {
            if viewController.isKind(of: UIViewController.self) {
                UIView.setAnimationsEnabled(true)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
