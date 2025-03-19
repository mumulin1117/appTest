//
//  ToyscapeViewDetailController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import SVProgressHUD

class ToyscapeViewDetailController: ToyeViewController , UITextFieldDelegate{
    
    @IBOutlet weak var toyImge: UIImageView!
    @IBOutlet weak var toyownerImage: UIImageView!
    @IBOutlet weak var toyOwnerNAme: UILabel!
    @IBOutlet weak var toyCreateAt: UILabel!
    @IBOutlet weak var toyIntroduction: UILabel!
    
    @IBOutlet weak var toyeStartButton: UIButton!
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    var toyScape:ToyScape!
    
    var toyeScapeInfoChanged:((ToyScape)->Void)?
    
    var toyReport:ToyContntReport?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
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
        
        reloadToyscapeDetail()
        
        if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
            if toyScape.toyImage != loginedCurrntToye.toyImage && loginedCurrntToye.toyOwnerID != loginedCurrntToye.toyOwner {
                self.rt_customRightItem("toyNavigationRightMore", action: #selector(rt_customRightItemAction))
            }
        }
        
        self.toyownerImage.isUserInteractionEnabled = true
        self.toyownerImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gotoToyeUserInfoCenter)))
    }
    
    @objc func gotoToyeUserInfoCenter(){
        if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
            if loginedCurrntToye.toyOwnerID == self.toyScape.toyOwnerID {
                return
            }
        }
        
        let toyValutController = ToyVaultViewController(nibName: "ToyVaultViewController", bundle: nil)
        toyValutController.toyeScape = self.toyScape
        toyValutController.hidesBottomBarWhenPushed = true
        toyValutController.toyeScapeInfoChanged = { [weak self] toyScape in
            if let weakSelf = self {
                if let toyeFilterIndex = ToyeInfo.info.toyScapeItems.firstIndex(where: {$0.toyImage == weakSelf.toyScape.toyImage}) {
                    ToyeInfo.info.toyScapeItems[toyeFilterIndex] = weakSelf.toyScape
                    weakSelf.toyScape = toyScape
                    weakSelf.toyeScapeInfoChanged?(toyScape)
                }
            }
        }
        self.navigationController?.pushViewController(toyValutController, animated: true)
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
                    ToyeStorage.toyeSaveString(self.toyScape.toyImage, forKey: self.toyScape.toyImage + toyScapeBlack)
                    self.navigationController?.popViewController(animated: true)
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
        if let toyReport = Bundle.main.loadNibNamed("ToyContntReport", owner: nil)?.first as? ToyContntReport {
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
    
    func reloadToyscapeDetail(){
        toyeInfoWonders.append(12)
        toyImge.image = UIImage(named: toyScape.toyImage)
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        toyownerImage.image = UIImage(named: toyScape.toyOwnerID)
        toyOwnerNAme.text = toyScape.toyOwner
        toyeCollectGemsHub["toyeHub"] = "toyeHub"
        toyCreateAt.text = toyScape.toyCreateAt
        toyIntroduction.text = toyScape.toyIntroduction
        toyeInfoWonders.append(contentsOf: [11,35])
        if toyeInfoWonders.contains(35) {
            toyeStartButton.isSelected = ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeImage) != nil
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.text = nil
        textField.resignFirstResponder()
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.75) {
            SVProgressHUD.showInfo(withStatus: "Cxotmameehnaty wsyuqcucaejssshfquilu,l xpdlaecarsbeq owsauidti ffjovrd jrtetvbirenw".ty)
        }
        return false
    }
    
    @IBAction func highlightRetroToysInNostalgiaVault(_ sender: UIButton) {
        if self.toyeInfoWonders.count > 0 && self.toyeCollectGemsHub.count > 0 {
            sender.isSelected = !sender.isSelected
            toyeCollectGemsHub["toyeHub"] = "toyeCollectGemsHub"
            if sender.isSelected && toyeCollectGemsHub["toyeHub"] != nil {
                ToyeStorage.toyeSaveString(toyScape.toyImage, forKey: toyScape.toyImage + toyScapeImage)
            }else{
                ToyeStorage.toyeRemoveForKey(toyScape.toyImage + toyScapeImage)
            }
        }
    }

}

