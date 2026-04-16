//
//  EMOCLEBaseFlowController.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/9.
//

import UIKit

class EMOCLEBaseFlowController: UIViewController {
    let backTriggerEMOCLE = UIButton(type: .custom)
    lazy var regdsiterTitle: UILabel = {
        let signin = UILabel.init()
        signin.textColor = .black
        signin.font = UIFont(name: "Poppins-Bold Italic", size: 20)
        signin.textAlignment = .center
        signin.frame.size = CGSize(width: 200, height: 30)
        return signin
    }()
    let bgalayer  = UIImageView(image: UIImage.init(named: "EMOCLEARfantasyCharacter"))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        bgalayer.contentMode = .scaleAspectFill
        bgalayer.frame = UIScreen.main.bounds
        view.addSubview(bgalayer)
       
        self.navigationController?.navigationBar.isHidden = true
       
        setupCustomNavigationEMOCLE()
        self.view.addSubview(self.regdsiterTitle)
        regdsiterTitle.center.x = view.center.x
        regdsiterTitle.center.y = backTriggerEMOCLE.center.y
    }
    private func setupCustomNavigationEMOCLE() {
//        let navigationAppearanceEMOCLE = UINavigationBarAppearance()
//        navigationAppearanceEMOCLE.configureWithTransparentBackground()
//        navigationAppearanceEMOCLE.titleTextAttributes = [
//            .font: UIFont.systemFont(ofSize: 22, weight: .bold),
//            .foregroundColor: UIColor.black
//        ]
//        
//        navigationController?.navigationBar.standardAppearance = navigationAppearanceEMOCLE
//        navigationController?.navigationBar.scrollEdgeAppearance = navigationAppearanceEMOCLE
        
       
        backTriggerEMOCLE.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        backTriggerEMOCLE.tintColor = .black
        backTriggerEMOCLE.addTarget(self, action: #selector(revertFlowEMOCLE), for: .touchUpInside)
        backTriggerEMOCLE.frame = CGRect.init(x: 15, y: self.view.safeAreaInsets.top + 44, width: 30, height: 30)
        view.addSubview(backTriggerEMOCLE)
        
       
    }
//    private func setupNavigationEMOCLE() {
//        let backIconEMOCLE = UIButton(type: .system)
//        backIconEMOCLE.setImage(UIImage(systemName: "arrow.left"), for: .normal)
//        backIconEMOCLE.tintColor = .black
//        backIconEMOCLE.addTarget(self, action: #selector(revertFlowEMOCLE), for: .touchUpInside)
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backIconEMOCLE)
//    }
    
    @objc func revertFlowEMOCLE() {
        navigationController?.popViewController(animated: true)
    }
}
