//
//  ToyeViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import RTRootNavigationController

class ToyeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.backgroundColor = .clear
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 17, weight: .black)
        ]
    }
    

    override func rt_customBackItem(withTarget target: Any!, action: Selector!) -> UIBarButtonItem! {
        let toyeBack = UIBarButtonItem(image: UIImage.tyBack.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(toyeBackItemAction))
        return toyeBack
    }
    
    func rt_customRightItem(_ image:String , action: Selector) {
        let toyeRightMoreBarButton = UIBarButtonItem(image: UIImage(named: image)!.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: action)
        self.navigationItem.rightBarButtonItem = toyeRightMoreBarButton
    }

    
    @objc func toyeBackItemAction(){
        self.navigationController?.popViewController(animated: true)
    }

}
