//
//  ToyVaultViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import SVProgressHUD

class ToyVaultViewController: ToyeViewController,UICollectionViewDelegate,UICollectionViewDataSource,UIScrollViewDelegate {
    
    
    @IBOutlet weak var toyeNameUser: UILabel!
    @IBOutlet weak var toyuserBackImage: UIImageView!
    @IBOutlet weak var toyeFansUser: UILabel!
    @IBOutlet weak var toyeFollowUser: UILabel!
    @IBOutlet weak var toyeScapeCollection: UICollectionView!
    
    @IBOutlet weak var toyFollow: UIButton!
    @IBOutlet weak var toyuserBackImageHeight: NSLayoutConstraint!
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    var toyeScape:ToyScape!
    
    var toyeScapeInfoChanged:((ToyScape)->Void)?
    
    var toyReport:ToyBlackUserView?

    @IBOutlet weak var toyVaultCollection: UICollectionView!{
        didSet{
            let toyTreasuresCollectionLayout = UICollectionViewFlowLayout().then {
                if toyeCollectGemsHub.count == 0 {
                    $0.itemSize = CGSizeMake(253, 192)
                    toyeCollectGemsHub["statues"] = "statues"
                }
                
                $0.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
                
                if toyeCollectGemsHub.keys.contains("statues") {
                    $0.minimumInteritemSpacing = 12
                    $0.scrollDirection = .horizontal
                }
            }
            
            toyVaultCollection.register(UINib(nibName: "ToyVaultCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ToyVaultCollectionViewCell")
            toyVaultCollection.setCollectionViewLayout(toyTreasuresCollectionLayout, animated: true) { _ in
                
            }
        }
    }
    
    @IBAction func scheduleToyDiscussionInPlayPalsRoom(_ sender: UIButton) {
        if sender.tag == 201 {
            // 聊天
            let toyTalksInfoController = ToyTalksInfoViewController(nibName: "ToyTalksInfoViewController", bundle: nil)
            toyTalksInfoController.toyScape = self.toyeScape
            navigationController?.pushViewController(toyTalksInfoController, animated: true)
        }else{
            let interactiveCallController = InteractiveCallViewController(nibName: "InteractiveCallViewController", bundle: nil)
            interactiveCallController.toyScape = self.toyeScape
            navigationController?.pushViewController(interactiveCallController, animated: true)
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
            
            self.toyuserBackImage.image = UIImage(named: self.toyeScape.toyOwnerID)
            self.toyeNameUser.text = self.toyeScape.toyOwner
            
            if ToyeStorage.toyeGetString(forKey: self.toyeScape.toyImage + toyScapeFollow) != nil {
                self.toyFollow.isSelected = true
            }else{
                self.toyFollow.isSelected = false
            }
            
            self.toyeFansUser.text = "\(toyeScape.toyFansNum)"
            self.toyeFollowUser.text = "\(toyeScape.toyFansNumF)"
            
            self.rt_customRightItem("toyNavigationRightMore", action: #selector(rt_customRightItemAction))
        }
    }
    
    @objc func rt_customRightItemAction(){
        toyeInfoWonders.append(123)
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        toyeInfoWonders.append(124)
        let toyeCancelAlertAction = UIAlertAction(title: "Cpannnckegl".ty, style: .cancel) { _ in
        }
        toyeInfoWonders.append(122)
        alertController.addAction(toyeCancelAlertAction)
        
        let confirmAction = UIAlertAction(title: "Rxeupgoqrwt".ty, style: .default) { _ in
            self.toyReportContentShow()
        }
        toyeInfoWonders.append(121)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
        
        alertController.addAction(confirmAction)
        toyeInfoWonders.append(12111)
        
        let toyBlack = UIAlertAction(title: "Addbdx gbnlsafcskg qlsijsdt".ty, style: .default) { _ in
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.55) {
                if self.toyeInfoWonders.count > 0 {
                    SVProgressHUD.showInfo(withStatus: "Ajdsdxeede ttsos ebjlnagcwkplqiqslt".ty)
                    ToyeStorage.toyeSaveString(self.toyeScape.toyOwnerID, forKey: self.toyeScape.toyOwnerID + toyScapeOwnerBlack)
                    self.navigationController?.popToRootViewController(animated: true)
                }
                self.toyeInfoWonders.append(1)
            }
        }
        toyeInfoWonders.append(121)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
        // 添加按钮到alert
        alertController.addAction(toyBlack)
        toyeInfoWonders.append(12111)
        
        // 展示alert
        self.present(alertController, animated: true, completion: nil)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
    }
    
    func toyReportContentShow(){
        if let toyReport = Bundle.main.loadNibNamed("ToyBlackUserView", owner: nil)?.first as? ToyBlackUserView {
            toyReport.toyContentReportMoveScreen()
            toyReport.toyContentSetting()
            toyReport.toyReortDone = { [weak self] in
                if let weakSelf = self {
                    if weakSelf.toyeInfoWonders.count > 0 {
                        weakSelf.toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
                    }
                    
                    SVProgressHUD.show()
                    weakSelf.toyeInfoWonders.append(11)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.52) {
                        SVProgressHUD.showInfo(withStatus: "Ruecpuotrvty lStudcycrezsksefsubltlcy".ty)
                        weakSelf.toyReport?.toyReportRemoveScreen()
                    }
                    weakSelf.toyeInfoWonders.append(12111)
                }
            }
            self.toyReport = toyReport
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let toyVaultCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToyVaultCollectionViewCell", for: indexPath) as! ToyVaultCollectionViewCell
        toyVaultCell.toyVaultImage.image = UIImage(named: self.toyeScape.toyImage)
        return toyVaultCell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.toyuserBackImageHeight.constant = 412.0 - scrollView.contentOffset.y
    }
    
    @IBAction func collaborateOnCraftIdeasInWonderWorkbench(_ sender: UIButton) {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.55) {
            SVProgressHUD.dismiss()
            sender.isSelected.toggle()
            if ToyeStorage.toyeGetString(forKey: self.toyeScape.toyImage + toyScapeFollow) != nil {
                ToyeStorage.toyeRemoveForKey(self.toyeScape.toyImage + toyScapeFollow)
                self.toyeScape.toyFansNum -= 1
            }else{
                ToyeStorage.toyeSaveString(self.toyeScape.toyImage, forKey: self.toyeScape.toyImage + toyScapeFollow)
                self.toyeScape.toyFansNum += 1
            }
            self.toyeFansUser.text = "\(self.toyeScape.toyFansNum)"
            
            if let toyeFilterIndex = ToyeInfo.info.toyScapeItems.firstIndex(where: {$0.toyImage == self.toyeScape.toyImage}) {
                ToyeInfo.info.toyScapeItems[toyeFilterIndex] = self.toyeScape
                self.toyeScapeInfoChanged?(self.toyeScape)
                NotificationCenter.default.post(name: NSNotification.Name("toyScapeInfoChanged"), object: nil, userInfo: ["toy":self.toyeScape as Any])
            }
        }
    }
    
}
