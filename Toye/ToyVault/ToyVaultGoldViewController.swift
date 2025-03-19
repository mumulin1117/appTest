//
//  ToyVaultGoldViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit
import SwiftyStoreKit
import SVProgressHUD

class ToyVaultGoldViewController: ToyeViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var toyeGems: UILabel!
    
    static let toyeStateInfo:[[String:[String:Any]]] = [
        [
            "mziptobdffjrkwop":[
                "toyeIdentifier":"mziptobdffjrkwop",
                "toyeCountNumber":"4u0b0".ty,
                "toyeOwnerFlag":"0o.s9o9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "typggtcdcactexxz":[
                "toyeIdentifier":"typggtcdcactexxz",
                "toyeCountNumber":"8u0b0".ty,
                "toyeOwnerFlag":"1o.s9o9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "hztfywacequnjyex":[
                "toyeIdentifier":"hztfywacequnjyex",
                "toyeCountNumber":"1k2y0y0".ty,
                "toyeOwnerFlag":"2o.s9o9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "qasbwittmrkyaoeb":[
                "toyeIdentifier":"qasbwittmrkyaoeb",
                "toyeCountNumber":"2u4u5f0".ty,
                "toyeOwnerFlag":"4o.s9o9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "aeoyntegsumkrzek":[
                "toyeIdentifier":"aeoyntegsumkrzek",
                "toyeCountNumber":"4e9p0k0".ty,
                "toyeOwnerFlag":"9o.s9o9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "bwricclminynikml":[
                "toyeIdentifier":"bwricclminynikml",
                "toyeCountNumber":"9x8l0d0".ty,
                "toyeOwnerFlag":"1l9l.y9w9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "vsmqwdgzkpxjlrnea":[
                "toyeIdentifier":"vsmqwdgzkpxjlrnea",
                "toyeCountNumber":"1h5o0q0m0".ty,
                "toyeOwnerFlag":"2l9l.y9w9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "svgqcfknmveefdhi":[
                "toyeIdentifier":"svgqcfknmveefdhi",
                "toyeCountNumber":"2e4c5j0o0".ty,
                "toyeOwnerFlag":"4l9l.y9w9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "fobtcunvwsxhdkelz":[
                "toyeIdentifier":"fobtcunvwsxhdkelz",
                "toyeCountNumber":"3o6c0p0z0".ty,
                "toyeOwnerFlag":"6l9l.y9w9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
        [
            "pdigcxzrfymzptly":[
                "toyeIdentifier":"pdigcxzrfymzptly",
                "toyeCountNumber":"4k9h0j0o0".ty,
                "toyeOwnerFlag":"9l9l.y9w9".ty,
                "toyeState":1,
                "toyeType":"0"
            ]
        ],
    ]
    
    @IBOutlet weak var toyGoldCollection: UICollectionView!{
        didSet{
            
            let toyTreasuresCollectionLayout = UICollectionViewFlowLayout().then {
                if toyeCollectGemsHub.count == 0 {
                    $0.itemSize = CGSizeMake((UIScreen.main.bounds.size.width - 48)/3, 130)
                    toyeCollectGemsHub["statues"] = "statues"
                }
                
                $0.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
                
                if toyeCollectGemsHub.keys.contains("statues") {
                    $0.minimumInteritemSpacing = 12
                    $0.minimumLineSpacing = 12
                }
            }
            
            
            if toyeCollectGemsHub.count > 0 {
                toyGoldCollection.register(UINib(nibName: "ToyVaultGoldCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ToyVaultGoldCollectionViewCell")
            }
            
            toyGoldCollection.setCollectionViewLayout(toyTreasuresCollectionLayout, animated: true) { _ in}
        }
    }
    
    
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
            
            toyeGems.text = "\(ToyeInfo.info.loginedCurrntToye!.toyGems)"
        }
        
        toyeRequestState = 200
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let toyVaultGoldCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToyVaultGoldCollectionViewCell", for: indexPath) as! ToyVaultGoldCollectionViewCell
        
        if let toyValueItem = ToyVaultGoldViewController.toyeStateInfo[indexPath.row].values.first {
            if let toyeCountNumber = toyValueItem["toyeCountNumber"] as? String {
                toyVaultGoldCell.toyeCountNumber.text = "+ " + toyeCountNumber
            }
            
            if let toyeOwnerFlag = toyValueItem["toyeOwnerFlag"] as? String {
                toyVaultGoldCell.toyeOwnerFlagButton.setTitle("$ " + toyeOwnerFlag, for: .normal)
            }
            toyVaultGoldCell.toyFlagAction = { [weak self] in
                if let weakSelf = self {
                    
                    if let toyeIdentifier = toyValueItem["toyeIdentifier"] as? String {
                        SVProgressHUD.show()
                        SwiftyStoreKit.purchaseProduct(toyeIdentifier, quantity: 1, atomically: true) { toyeStoreKitResult in
                            SVProgressHUD.dismiss()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.235) {
                                
                                if weakSelf.toyeInfoWonders.count > 0 {
                                    weakSelf.toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
                                }
                                
                                if case .success(purchase: let _) = toyeStoreKitResult {
                                    weakSelf.toyeInfoWonders.append(12)
                                    if var loginedCurrntToye = ToyeInfo.info.loginedCurrntToye,let toyeCountNumber = toyValueItem["toyeCountNumber"] as? String ,let toyeCountNumberInt = Int(toyeCountNumber) {
                                        loginedCurrntToye.toyGems += toyeCountNumberInt
                                        ToyeStorage.toyeSaveInt64(loginedCurrntToye.toyGems, forKey: "ToyGems" + loginedCurrntToye.toyOwnerID)
                                        ToyeInfo.info.loginedCurrntToye =  loginedCurrntToye
                                        weakSelf.toyeGems.text = "\(loginedCurrntToye.toyGems)"
                                        
                                        weakSelf.toyeInfoWonders.append(2001)
                                        weakSelf.toyeInfoWonders.append(contentsOf: [20,33])
                                        
                                        if weakSelf.toyeInfoWonders.contains(12) {
                                            weakSelf.toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
                                        }
                                    }
                                    return
                                }
                                
                                
                                
                                weakSelf.toyeInfoWonders.append(contentsOf: [11,35])
                                if case .error(error: let toyeStoreError) = toyeStoreKitResult {
                                    
                                    weakSelf.toyeRequestState = 200
                                    weakSelf.toyeInfoWonders.append(20)
                                    if toyeStoreError.code.rawValue == 2 {
                                        SVProgressHUD.showInfo(withStatus: "Ugsvezre fczaynhcqeelmegdg rpmaxytmaegnst".ty)
                                    }else {
                                        SVProgressHUD.showInfo(withStatus: toyeStoreError.localizedDescription)
                                    }
                                    
                                    if weakSelf.toyeCollectGemsHub.count > 0 {
                                        weakSelf.toyeCollectGemsHub["toyeHub"] = "toyeHub"
                                    }
                                    
                                    weakSelf.toyeRequestState = 200
                                }
                                
                            }
                        }
                    }
                }
            }
        }
        
        return toyVaultGoldCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ToyVaultGoldViewController.toyeStateInfo.count
    }
    
}
