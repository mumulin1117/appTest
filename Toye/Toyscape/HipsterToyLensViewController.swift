//
//  HipsterToyLensViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit
import SVProgressHUD

class HipsterToyLensViewController: ToyeViewController {

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

    @IBAction func startHipsterToyLens(_ sender: Any) {
        toyeInfoWonders.append(101)
        toyeCollectGemsHub["hipsterToyLens"] = "hipsterToyLens"
        
        if toyeCollectGemsHub["hipsterToyLens"]?.count ?? 0 > 0 {
            if var loginedCurrntToye = ToyeInfo.info.loginedCurrntToye{
                if loginedCurrntToye.toyGems > 100 {
                    SVProgressHUD.show()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        SVProgressHUD.dismiss()
                        loginedCurrntToye.toyGems -= 100
                        ToyeInfo.info.loginedCurrntToye = loginedCurrntToye
                        ToyeStorage.toyeSaveInt64(loginedCurrntToye.toyGems, forKey: "ToyGems" + loginedCurrntToye.toyOwnerID)
                        let uploadController = HipsterToyuploadViewController(nibName: "HipsterToyuploadViewController", bundle: nil)
                        self.navigationController?.pushViewController(uploadController, animated: true)
                    }
                }else{
                    let toyVaultGoldController = ToyVaultGoldViewController(nibName: "ToyVaultGoldViewController", bundle: nil)
                    toyVaultGoldController.hidesBottomBarWhenPushed = true
                    navigationController?.pushViewController(toyVaultGoldController, animated: true)
                }
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
