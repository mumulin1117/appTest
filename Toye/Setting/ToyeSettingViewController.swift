//
//  ToyeSettingViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit
import SVProgressHUD
import RTRootNavigationController


class ToyeSettingViewController: ToyeViewController {
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
        }
        
        toyeRequestState = 200
    }
    
    @IBAction func privacyToyePolicyAction(_ sender: Any) {
        userAgreementShow(state: 1)
    }
    
    @IBAction func userToyeAgreement(_ sender: Any) {
        userAgreementShow(state: 0)
    }
    
    @IBAction func clearCacheToyeAction(_ sender: Any) {
        SVProgressHUD.showProgress(0.0, status: "Cqlyeiarnriwnyg".ty + "...")
        
        // Simulate loading process
        DispatchQueue.global().async {
            for i in 0...10 {
                DispatchQueue.main.async {
                    // Update progress
                    SVProgressHUD.showProgress(Float(i) / 10.0, status:"Cqlyeiarnriwnyg".ty + " \(i * 10)%...")
                }
                // Simulate work by sleeping for 0.5 seconds
                Thread.sleep(forTimeInterval: 0.25)
            }
            
            // Dismiss the progress HUD after loading
            DispatchQueue.main.async {
                SVProgressHUD.showInfo(withStatus: "Ctlxeoabnoecdw ouvp".ty)
            }
        }
    }
    
    @IBAction func toyeAboutAvtion(_ sender: Any) {
        let toyAboutController = ToyAboutViewController(nibName: "ToyAboutViewController", bundle: nil)
        navigationController?.pushViewController(toyAboutController, animated: true)
    }
    
    
    @IBAction func toyeBlockAction(_ sender: Any) {
        
        let toyBlackListController = ToyBlackListViewController(nibName: "ToyBlackListViewController", bundle: nil)
        navigationController?.pushViewController(toyBlackListController, animated: true)
    }
    
    func userAgreementShow(state:Int){
        if let agreementView = Bundle.main.loadNibNamed("ToyeUserAgreementView", owner: nil)?.first as? ToyeUserAgreementView{
            agreementView.fullToyeCancelButton.isHidden = false
            agreementView.agreementShow(state: state)
        }
    }
    
    @IBAction func toyeDeleteAction(_ sender: Any) {
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
            
            showToyeAlert(message: "Tuhrej baecjcxoqusnqtd hcwasnfnhohtp nbvez jrrecshtuodrregdg sabfdteeare kbfegirntgo cduevlieztyefdo.o bAhrseo uylonul qszugreed vywojur gwaabngtl dtyoq oddeclqehtwei oihtl?".ty) { [weak self] in
                if let weakSelf = self {
                    ToyeStorage.shared.mmkv?.clearAll()
                    if let toyeSceneDelegate = UIApplication.shared.connectedScenes.first as? UIWindowScene,let toyeCurrentWindow = (toyeSceneDelegate.delegate as? SceneDelegate)?.window {
                        weakSelf.toyeCollectGemsHub["clean"] = "clean"
                        if weakSelf.toyeCollectGemsHub.count > 0 {
                            weakSelf.toyeCollectGemsHub["clean"] = "uhrej baecjcxoqusnqtd hcwasnfnhohtp"
                        }
                        
                        SVProgressHUD.show()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            SVProgressHUD.dismiss()
                            UserDefaults.standard.removeObject(forKey: "toyeUser")
                            UserDefaults.standard.synchronize()
                            let inLoginControl = ToyeFirstLoginViewController(nibName: "ToyeFirstLoginViewController", bundle: nil)
                            toyeCurrentWindow.rootViewController = RTRootNavigationController(rootViewController: inLoginControl)
                            
                        }
                        
                    }
                }
            }
        }
    }
    
    @IBAction func toyeLoginoutAction(_ sender: Any) {
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
            
            showToyeAlert(message: "Alreeu cybomul hsbutrlee lysorug wwuatnzta ytmow ylnovgf iozuytj?".ty) { [weak self] in
                if let weakSelf = self {
                    if let toyeSceneDelegate = UIApplication.shared.connectedScenes.first as? UIWindowScene,let toyeCurrentWindow = (toyeSceneDelegate.delegate as? SceneDelegate)?.window {
                        weakSelf.toyeCollectGemsHub["clean"] = "clean"
                        if weakSelf.toyeCollectGemsHub.count > 0 {
                            weakSelf.toyeCollectGemsHub["clean"] = "uhrej baecjcxoqusnqtd hcwasnfnhohtp"
                        }
                        
                        SVProgressHUD.show()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            SVProgressHUD.dismiss()
                            UserDefaults.standard.removeObject(forKey: "toyeUser")
                            UserDefaults.standard.synchronize()
                            let inLoginControl = ToyeFirstLoginViewController(nibName: "ToyeFirstLoginViewController", bundle: nil)
                            toyeCurrentWindow.rootViewController = RTRootNavigationController(rootViewController: inLoginControl)
                        }
                        
                    }
                }
            }
        }
    }
    
    func showToyeAlert(message: String, confirmHandler: @escaping () -> Void) {
        toyeInfoWonders.append(123)
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        toyeInfoWonders.append(124)
        let toyeCancelAlertAction = UIAlertAction(title: "Cpannnckegl".ty, style: .default) { _ in
        }
        toyeInfoWonders.append(122)
        alertController.addAction(toyeCancelAlertAction)
        
        // 创建一个确认按钮
        let confirmAction = UIAlertAction(title: "Cfodnsfxibrbm".ty, style: .default) { _ in
            confirmHandler()  // 调用回调事件
        }
        toyeInfoWonders.append(121)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
        // 添加按钮到alert
        alertController.addAction(confirmAction)
        toyeInfoWonders.append(12111)
        // 展示alert
        self.present(alertController, animated: true, completion: nil)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
    }
    
}
