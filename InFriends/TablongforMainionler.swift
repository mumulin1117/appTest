//
//  TablongforMainionler.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import UIKit

class TablongforMainionler: UITabBarController ,UINavigationControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 使用自定义的 tab bar
        self.setValue(CustomTabBar(), forKey: "tabBar")
        
        // 创建视图控制器
        let firstVC = UINavigationController(rootViewController: HosentimentRecognitionr())
        setupController(ctrl: firstVC, norImage: "icon_tabbar_sy_normal", selImage: "icon_tabbar_sy_select")
        let secondVC = UINavigationController(rootViewController: ColprosodyModelingler())
        setupController(ctrl: secondVC, norImage: "icon_tabbar_sc_normal", selImage: "icon_tabbar_sc_select")
        let thirdVC = UINavigationController(rootViewController: DisconversationFlower())
        setupController(ctrl: thirdVC, norImage: "icon_tabbar_fx_normal", selImage: "icon_tabbar_fx_select")
        
        // 隐藏 tab bar 项目的标题
        self.tabBar.items?.forEach { item in
            item.title = nil
        }
    }
    
    private func setupController(ctrl:UINavigationController,norImage:String,selImage:String){
        ctrl.tabBarItem.image = UIImage(named: norImage)?.withRenderingMode(.alwaysOriginal)
        ctrl.tabBarItem.selectedImage = UIImage(named: selImage)?.withRenderingMode(.alwaysOriginal)
        ctrl.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
        ctrl.tabBarItem.title = nil
        self.addChild(ctrl)
    }
    
}

class CustomTabBar: UITabBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // 获取屏幕的宽度
        let screenWidth = UIScreen.main.bounds.width
        
        // 设置自定义 tab bar 的 frame
        var tabBarFrame = self.frame
        tabBarFrame.size.width = screenWidth - 40
        tabBarFrame.size.height = 60
        tabBarFrame.origin.x = 24
        let scene = UIApplication.shared.connectedScenes.first
        guard let windowScene = scene as? UIWindowScene else { return  }
        guard let window = windowScene.windows.first else { return  }
        
        tabBarFrame.origin.y = UIScreen.main.bounds.height - window.safeAreaInsets.bottom - 60
        self.frame = tabBarFrame
        self.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        self.layer.cornerRadius = 30
        self.layer.masksToBounds = true
    }
}
