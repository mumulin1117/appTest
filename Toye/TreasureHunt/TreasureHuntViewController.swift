//
//  TreasureHuntViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import Then
import SVProgressHUD

class TreasureHuntViewController: ToyeViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    var toyeWondersButton:UIButton?
    
    var toyScape:[ToyScape] = []
    
    
    @IBOutlet weak var toyTreasuresCollection: UICollectionView!{
        didSet{
            
            let toyTreasuresCollectionLayout = UICollectionViewFlowLayout().then {
                if toyeCollectGemsHub.count == 0 {
                    $0.itemSize = CGSizeMake((UIScreen.main.bounds.size.width - 36)/2, 288)
                    toyeCollectGemsHub["statues"] = "statues"
                }
                
                $0.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 24, right: 12)
                
                if toyeCollectGemsHub.keys.contains("statues") {
                    $0.minimumLineSpacing = 12
                    $0.minimumInteritemSpacing = 12
                    
                }
            }
            
            toyTreasuresCollection.register(UINib(nibName: "TreasureHuntCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TreasureHuntCollectionViewCell")
            toyTreasuresCollection.setCollectionViewLayout(toyTreasuresCollectionLayout, animated: true) { _ in
                
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        if self.toyScape.count > 0 && toyeCollectGemsHub.keys.count > 0 {
            loadToyScape(placeWait: false) { [weak self] in
                if let weakSelf = self {
                    weakSelf.toyTreasuresCollection.reloadData()
                }
            }
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
        
        if toyeInfoWonders.contains(2001) && toyeCollectGemsHub.keys.contains("toyeHub") {
            toyeWondersButton = self.view.viewWithTag(2001) as? UIButton
        }
        
        loadToyScape(placeWait: true) { [weak self] in
            if let weakSelf = self {
                weakSelf.toyTreasuresCollection.reloadData()
            }
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(toyScapeInfoChanged(notification:)), name: NSNotification.Name("toyScapeInfoChanged"), object: nil)
        
    }
    
    @objc func toyScapeInfoChanged(notification: Notification){
        
        if let toyeNotificationObj = notification.userInfo,
           let toyScape = toyeNotificationObj["toy"] as? ToyScape {
            
            if let toyeFilterIndex = ToyeInfo.info.toyScapeItems.firstIndex(where: {$0.toyImage == toyScape.toyImage}) {
                ToyeInfo.info.toyScapeItems[toyeFilterIndex] = toyScape
            }
            
            if let toyeFilterIndex = self.toyScape.firstIndex(where: {$0.toyImage == toyScape.toyImage}) {
                self.toyScape[toyeFilterIndex] = toyScape
            }
        }
    }
    
    func loadToyScape(placeWait:Bool, completion:@escaping () -> Void){
        DispatchQueue.global().async {
            if placeWait {
                SVProgressHUD.show()
                sleep(2)
            }
            
            if self.toyScape.count > 0 {
                if placeWait {
                    self.toyScape.shuffle()
                }
                self.toyScape.removeAll { toyScape in
                    self.toyeInfoWonders.append(12)
                    if ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeBlack) != nil {
                        return true
                    }
                    
                    self.toyeInfoWonders.append(1111)
                    if ToyeStorage.toyeGetString(forKey: toyScape.toyOwnerID + toyScapeOwnerBlack) != nil {
                        return true
                    }
                    
                    return false
                }
                self.toyeInfoWonders.append(11)
                
            }else{
                if placeWait {
                    self.toyScape = ToyeInfo.info.toyScapeItems.shuffled()
                }
                
                if self.toyeInfoWonders.isEmpty == false {
                    
                    self.toyScape.removeAll { toyScape in
                        self.toyeInfoWonders.append(12)
                        if ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeBlack) != nil {
                            return true
                        }
                        
                        self.toyeInfoWonders.append(1111)
                        if ToyeStorage.toyeGetString(forKey: toyScape.toyOwnerID + toyScapeOwnerBlack) != nil {
                            return true
                        }
                        
                        return false
                    }
                    self.toyeInfoWonders.append(101)
                }
            }
            DispatchQueue.main.async {
                if placeWait {
                    SVProgressHUD.dismiss()
                }
                completion()
            }
        }
    }
    
    @IBAction func postToyTaleToMemoryLaneBo(_ sender: Any) {
        let toyspireController = ToyspireViewController(nibName: "ToyspireViewController", bundle: nil)
        toyspireController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(toyspireController, animated: true)
    }
    
    
    @IBAction func submitToyCustomizationRequestToImaginarium(_ sender:UIButton){
        
        toyeInfoWonders.append(contentsOf: [11,35])
        if toyeInfoWonders.count > 0 {
            sender.isSelected = !sender.isSelected
            sender.isUserInteractionEnabled = false
            toyeWondersButton?.isSelected = false
            toyeWondersButton?.isUserInteractionEnabled = true
            toyeInfoWonders.append(contentsOf: [99,135])
            
            toyeWondersButton = sender
        }
        
        toyeRequestState += 1
        
        loadToyScape(placeWait: true) { [weak self] in
            if let weakSelf = self {
                weakSelf.toyTreasuresCollection.reloadData()
                DispatchQueue.main.async {
                    if weakSelf.toyScape.count > 0 {
                        weakSelf.toyTreasuresCollection.scrollToItem(at: IndexPath(row: 0, section: 0), at: .top, animated: false)
                    }
                }
            }
        }
    }
    
    func toyTreasuresExplorer(toyType:Int){
        SVProgressHUD.show()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let scapeDetailController = ToyscapeViewDetailController(nibName: "ToyscapeViewDetailController", bundle: nil)
        scapeDetailController.hidesBottomBarWhenPushed = true
        scapeDetailController.toyScape = toyScape[indexPath.row]
        scapeDetailController.toyeScapeInfoChanged = { [weak self] toyScape in
            if let weakSelf = self {
                weakSelf.toyScape[indexPath.row] = toyScape
            }
        }
        navigationController?.pushViewController(scapeDetailController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let treasureHuntCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TreasureHuntCollectionViewCell", for: indexPath) as! TreasureHuntCollectionViewCell
        
        treasureHuntCell.toyScapeImage.image = UIImage(named: toyScape[indexPath.row].toyImage)
        treasureHuntCell.toyIntroduction.text = toyScape[indexPath.row].toyIntroduction
        treasureHuntCell.toyUserInfoImage.image = UIImage(named: toyScape[indexPath.row].toyOwnerID)
        treasureHuntCell.toyOwner.text = toyScape[indexPath.row].toyOwner
        
        treasureHuntCell.gotoToyUsercenterClosure = { [weak self] in
            if let weakSelf = self {
                
                if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                    if loginedCurrntToye.toyOwnerID == weakSelf.toyScape[indexPath.row].toyOwnerID {
                        return
                    }
                }
                
                let toyValutController = ToyVaultViewController(nibName: "ToyVaultViewController", bundle: nil)
                toyValutController.toyeScape = weakSelf.toyScape[indexPath.row]
                toyValutController.hidesBottomBarWhenPushed = true
                toyValutController.toyeScapeInfoChanged = { [weak self] toyScape in
                    if let weakSelf = self {
                        weakSelf.toyScape[indexPath.row] = toyScape
                    }
                }
                weakSelf.navigationController?.pushViewController(toyValutController, animated: true)
            }
        }
        return treasureHuntCell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return toyScape.count
    }
    
}
