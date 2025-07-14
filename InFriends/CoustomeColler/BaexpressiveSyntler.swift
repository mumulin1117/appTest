//
//  BaexpressiveSyntler.swift
//  InFriends
//
//  Created by InFriends on 2024/8/26.
//

import UIKit


class BaexpressiveSyntler: UIViewController,UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground() // 使用不透明背景配置
        appearance.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0) // 设置背景颜色
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.white, // 文字颜色
            .font: UIFont.systemFont(ofSize: 24, weight: .bold) // 文字大小
        ]
        
        if let bar = self.navigationController?.navigationBar {
            
            bar.standardAppearance = appearance
            bar.scrollEdgeAppearance = appearance
            
        }
        
        if self.navigationController?.viewControllers.count ?? 0 > 0 {
            let bar = UIBarButtonItem(image: UIImage(named: "icon_back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backAction))
            self.navigationItem.leftBarButtonItem = bar 
        }
    }
    
    @objc func backAction(){
        self.navigationController?.popViewController(animated: true)
    }
    
    // UIGestureRecognizerDelegate 方法，允许识别器开始识别手势
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == self.navigationController?.interactivePopGestureRecognizer {
            return self.navigationController?.viewControllers.count ?? 0 > 1
        }
        return true
    }
    
}

class BaseTableViewController: UITableViewController,UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground() // 使用不透明背景配置
        appearance.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0) // 设置背景颜色
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.white, // 文字颜色
            .font: UIFont.systemFont(ofSize: 24, weight: .bold) // 文字大小
        ]
        
        if let bar = self.navigationController?.navigationBar {
            
            bar.standardAppearance = appearance
            bar.scrollEdgeAppearance = appearance
            
        }
        
        if self.navigationController?.viewControllers.count ?? 0 > 0 {
            let bar = UIBarButtonItem(image: UIImage(named: "icon_back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(backAction))
            self.navigationItem.leftBarButtonItem = bar
        }
    }
    
    @objc func backAction(){
        self.navigationController?.popViewController(animated: true)
    }
    
    // UIGestureRecognizerDelegate 方法，允许识别器开始识别手势
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == self.navigationController?.interactivePopGestureRecognizer {
            return self.navigationController?.viewControllers.count ?? 0 > 1
        }
        return true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
}


extension UINavigationController {
    
    // 在 Swift 中进行 method swizzling
    static let swizzlePushViewControllerImplementation: Void = {
        // 获取系统的 pushViewController(_:animated:) 方法
        let originalSelector = #selector(UINavigationController.pushViewController(_:animated:))
        let swizzledSelector = #selector(UINavigationController.swizzled_pushViewController(_:animated:))
        
        guard let originalMethod = class_getInstanceMethod(UINavigationController.self, originalSelector),
              let swizzledMethod = class_getInstanceMethod(UINavigationController.self, swizzledSelector) else {
            return
        }
        
        // 进行方法交换
        method_exchangeImplementations(originalMethod, swizzledMethod)
    }()
    
    // 定义一个替代方法
    @objc func swizzled_pushViewController(_ viewController: UIViewController, animated: Bool) {
        // 在这里设置 hidesBottomBarWhenPushed 属性
        if self.viewControllers.count > 0 {
            //            viewController.hidesBottomBarWhenPushed = true
            self.tabBarController?.tabBar.isHidden = true
        }else{
            //            viewController.hidesBottomBarWhenPushed = false
            self.tabBarController?.tabBar.isHidden = false
        }
        
        // 调用原始的 pushViewController(_:animated:) 方法
        swizzled_pushViewController(viewController, animated: animated)
    }
}
