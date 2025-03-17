//
//  LiSSpBArBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit


class LiSSpBArBootomrbucue:UITabBarController {
   
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
        
        ssuipCreaNet()
        
        let ewHomePage = LiSSpNavitSnmingertips.init(rootViewController: LiSSpHomeBootomrbucue())

        let olkaoPageSSiptroller = LiSSpNavitSnmingertips.init(rootViewController: LiSSpDynamicBootomrbucue())
        let meaadhepageller = LiSSpNavitSnmingertips.init(rootViewController: LiSSpMeaddgeBootomrbucue())
 
        let hijioHome = "HoOuMkE".oranApolWothCharrterString()
        
        let ilisat = [
           
            UITabBarItem.init(title: hijioHome, image: UIImage(named: "LiSSphome_black"), selectedImage: UIImage(named: "LiSSphome_pink")!.withRenderingMode(.alwaysOriginal)),
            UITabBarItem.init(title: "PkOnSxT".oranApolWothCharrterString(), image: UIImage(named: "LiSSp_posBar_black"), selectedImage: UIImage(named: "LiSSp_posBar_pink")!.withRenderingMode(.alwaysOriginal)),
            UITabBarItem.init(title: "MxEaSoSiAjGoE".oranApolWothCharrterString(), image: UIImage(named: "LiSSMeag_black"), selectedImage: UIImage(named: "LiSSMeag_pink")!.withRenderingMode(.alwaysOriginal))
            
        ]
        
        ewHomePage.tabBarItem = ilisat[0]
        olkaoPageSSiptroller.tabBarItem = ilisat[1]
        meaadhepageller.tabBarItem = ilisat[2]
       
        ssuitreatNet()
          
        viewControllers = [ewHomePage, olkaoPageSSiptroller,meaadhepageller]
    }
    
   
    private func ssuipCreaNet() {
        let appearenceLIpad = UITabBarAppearance()
        
        
        appearenceLIpad.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor:  UIColor(red: 0.36, green: 0.18, blue: 0.32, alpha: 1)
        ]
        appearenceLIpad.backgroundColor = UIColor(red: 0.06, green: 0.05, blue: 0.13, alpha: 1)
        appearenceLIpad.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor:UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        ]
        tabBar.standardAppearance = appearenceLIpad
        tabBar.scrollEdgeAppearance = appearenceLIpad
    }
    
    private func ssuitreatNet() {
        self.tabBar.backgroundColor = UIColor(red: 0.06, green: 0.05, blue: 0.13, alpha: 1)
    }
}




class LiSSpNavitSnmingertips: UINavigationController {
    private var entrtSSIPOEmail:UITextField = UITextField.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        entrtSSIPOEmail.isHidden = true
        ssuipCreaNet()
    }
    
    private func ssuipCreaNet() {
        self.navigationBar.isHidden = true
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title
        
        if children.count > 0   {
            if !viewController.isMember(of:LiSSpNOrmalSnmingertips.self) {
                transfortSIEP(hiddentroller:viewController)
            }
           
        }
        labeSiop.textColor = view.backgroundColor
        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if entrtSSIPOEmail.isHidden  {
            entrtSSIPOEmail.addSubview(labeSiop)
        }
        super.pushViewController(viewController, animated: false)
    }
    
    
    
    
    private func transfortSIEP(hiddentroller:UIViewController) {
        hiddentroller.hidesBottomBarWhenPushed = true
    }
}




class LiSSpNOrmalSnmingertips: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        ssuipCreaNet()
    }
    private func ssuipCreaNet() {
        view.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)
    }
    
   
}
