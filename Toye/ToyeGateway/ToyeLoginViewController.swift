//
//  ToyeLoginViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import SVProgressHUD

class ToyeLoginViewController: ToyeViewController {
    
    @IBOutlet weak var loginBoxButton: UIButton!
    
    var toyeInfoWonders:[Int] = []
    
    @IBOutlet weak var toyAccountField: UITextField!
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    @IBOutlet weak var toyPasswordField: UITextField!
    
    @IBOutlet weak var loginToyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyAccountField.addTarget(self, action: #selector(self.checkLoginButtonEnable), for: .editingChanged)
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyPasswordField.addTarget(self, action: #selector(self.checkLoginButtonEnable), for: .editingChanged)
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
        }
        
        toyeRequestState = 200
        
//#if DEBUG
//        self.toyAccountField.text = "toye@gmail.com"
//        self.toyPasswordField.text = "666666"
//        self.loginBoxButton.isSelected = true
//        loginToyButton.isEnabled = true
//#endif
    }
    
    @objc func toyLoginInfoChanged(sender:UITextField) {
        checkLoginButtonEnable()
    }


    @IBAction func firloginTySelect(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        checkLoginButtonEnable()
    }
    
    func containsToyeStyleDotAndAt(_ input: String) -> Bool {
        return input.contains(".") && input.contains("@")
    }
    
    @IBAction func toyLoginAction(_ sender: Any) {
        
        if let toyeAccountInput = self.toyAccountField.text, containsToyeStyleDotAndAt(toyeAccountInput) == false{
            SVProgressHUD.showInfo(withStatus: "Pollepaxsaen gelnltyepra bac ivlaqlbiwdv qeumyaqihlu haedhdcrdehsjs".ty)
            return
        }
        
        if self.toyPasswordField.text?.count ?? 0 >= 6 && self.toyPasswordField.text?.count ?? 0 <= 12 {
            
            if self.toyAccountField.text == "toye@gmail.com" && self.toyPasswordField.text == "666666" {
                if ToyeInfo.info.toyScapeItems.count > 0{
                    ToyeInfo.info.loginedCurrntToye = ToyeInfo.info.toyScapeItems[8]
                    
                    if var loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                        let toyGems = ToyeStorage.toyeGetInt64(forKey: "ToyGems" + loginedCurrntToye.toyOwnerID)
                        if toyGems > 0 {
                            loginedCurrntToye.toyGems = Int(toyGems)
                        }
                        
                        ToyeInfo.info.loginedCurrntToye = loginedCurrntToye
                    }
                    
                    SVProgressHUD.show()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        if let toyeWindowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                           let sceneDelegate = toyeWindowScene.delegate as? SceneDelegate {
                            ToyeStorage.shared.initialize(identifier: ToyeInfo.info.toyScapeItems[8].toyOwnerID)
                            let toyeTabbar = ToyeTabbarViewController()
                            sceneDelegate.window?.rootViewController = toyeTabbar
                            UserDefaults.standard.setValue(ToyeInfo.info.toyScapeItems[8].toyOwnerID, forKey: "toyeUser")
                            UserDefaults.standard.synchronize()
                        }
                    }
                }
            }else{
                var toyScapeBuild = ToyScape()
                toyScapeBuild.toyOwner = self.toyAccountField.text!
                toyScapeBuild.toyOwnerID = self.toyAccountField.text!
                ToyeInfo.info.loginedCurrntToye = toyScapeBuild
                
                if var loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                    let toyGems = ToyeStorage.toyeGetInt64(forKey: "ToyGems" + loginedCurrntToye.toyOwnerID)
                    if toyGems > 0 {
                        loginedCurrntToye.toyGems = Int(toyGems)
                    }
                    ToyeInfo.info.loginedCurrntToye = loginedCurrntToye
                }
                
                SVProgressHUD.show()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    if let toyeWindowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                       let sceneDelegate = toyeWindowScene.delegate as? SceneDelegate {
                        ToyeStorage.shared.initialize(identifier: self.toyAccountField.text!)
                        let toyeTabbar = ToyeTabbarViewController()
                        sceneDelegate.window?.rootViewController = toyeTabbar
                        UserDefaults.standard.setValue(self.toyAccountField.text!, forKey: "toyeUser")
                        UserDefaults.standard.synchronize()
                    }
                }
            }
            
        }else{
            SVProgressHUD.showInfo(withStatus: "Pqagsgsmwuowrgdi(p6g-y1f2c ocyhjadrhaacitzexrwsd)".ty)
            return
        }
    }
    
    
    @objc func checkLoginButtonEnable(){
        if self.loginBoxButton.isSelected && self.toyAccountField.text?.count ?? 0 > 0 && self.toyPasswordField.text?.count ?? 0 > 0 {
            loginToyButton.isEnabled = true
        }else{
            loginToyButton.isEnabled = false
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        checkLoginButtonEnable()
    }

}
