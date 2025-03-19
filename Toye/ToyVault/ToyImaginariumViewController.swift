//
//  ToyImaginariumViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/11.
//

import UIKit


class ToyImaginariumViewController: ToyeViewController {
    
    var toyeInfoWonders:[Int] = []
    
    @IBOutlet weak var toyeGems: UILabel!
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    @IBOutlet weak var toyeUser: UIImageView!
    @IBOutlet weak var toyeNameUser: UILabel!
    @IBOutlet weak var toyeFansUser: UILabel!
    @IBOutlet weak var toyeFollowUser: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        if toyeInfoWonders.count > 3 {
            collaborateOnCraftIdeasInWonderWorkbench()
        }
    }
    
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
    
    func collaborateOnCraftIdeasInWonderWorkbench(){
        if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
            if loginedCurrntToye.toyOwnerID == loginedCurrntToye.toyOwner {
                toyeUser.image = UIImage(named: "toyAbout")
            }else{
                toyeUser.image = UIImage(named: loginedCurrntToye.toyOwnerID)
            }
            
            toyeNameUser.text = loginedCurrntToye.toyOwner
            toyeFansUser.text = "\(loginedCurrntToye.toyFansNum)"
            toyeFollowUser.text = "\(loginedCurrntToye.toyFansNumF)"
            toyeGems.text = "\(loginedCurrntToye.toyGems)"
        }
    }
    
    @IBAction func gotoToyGoldController(_ sender: Any) {
        let toyVaultGoldController = ToyVaultGoldViewController(nibName: "ToyVaultGoldViewController", bundle: nil)
        toyVaultGoldController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(toyVaultGoldController, animated: true)
    }
    
    @IBAction func gotoToyeSetting(_ sender: Any) {
        
        let toyeSettingController = ToyeSettingViewController(nibName: "ToyeSettingViewController", bundle: nil)
        toyeSettingController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(toyeSettingController, animated: true)
    }
    
    @IBAction func hipsterToyeResultActon(_ sender: Any) {
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
            
            let toyPostController = ToyPostViewController(nibName: "ToyPostViewController", bundle: nil)
            toyPostController.aroundTotType = .aiResult
            toyPostController.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(toyPostController, animated: true)
        }
    }
    
    @IBAction func toyeUserpostAction(_ sender: Any) {
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
            
            let toyPostController = ToyPostViewController(nibName: "ToyPostViewController", bundle: nil)
            toyPostController.aroundTotType = .myPost
            toyPostController.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(toyPostController, animated: true)
        }
    }
    
    @IBAction func toyeUserCollectAction(_ sender: Any) {
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
            
            let toyUserCollectController = ToyUserCollectViewController(nibName: "ToyUserCollectViewController", bundle: nil)
            toyUserCollectController.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(toyUserCollectController, animated: true)
        }
    }
    
    
}
