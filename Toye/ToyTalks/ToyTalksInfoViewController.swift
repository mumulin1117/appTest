//
//  ToyTalksInfoViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/11.
//

import UIKit
import SVProgressHUD

class ToyTalksInfoViewController: ToyeViewController,UITableViewDelegate,UITableViewDataSource {
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var partyRoomMessages:[PartyRoomMessage] = [PartyRoomMessage]()
    
    var toyeRequestState = 0
    
    var toyScape:ToyScape!
    
    var toyReport:ToyBlackUserView?
    
    @IBOutlet weak var toyeScapeUserImage: UIImageView!
    @IBOutlet weak var toyeNameUser: UILabel!
    @IBOutlet weak var talkToyeInputField: UITextField!
    
    @IBOutlet weak var talkInfoTable: UITableView!{
        didSet{
            if toyeCollectGemsHub.count == 0  {
                talkInfoTable.rowHeight = UITableView.automaticDimension
                talkInfoTable.estimatedRowHeight = 99
                toyeCollectGemsHub["statues"] = "statues"
            }
            
            if toyeCollectGemsHub.keys.contains("statues") {
                talkInfoTable.register(UINib(nibName: "ToyTalksInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "ToyTalksInfoTableViewCell")
            }
            
        }
    }
    
    @IBAction func scheduleToyDiscussionInPlayPalsRoom(_ sender: UIButton) {
        
        if let partyERoomToyInputText = talkToyeInputField.text,partyERoomToyInputText.count > 0 {
            
            toyeInfoWonders.append(12)
            
            if toyeInfoWonders.count > 0 {
                toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
                if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                    let partyRoomMessage = PartyRoomMessage(partyMessageSender: loginedCurrntToye.toyOwnerID,partyMessageInfo:partyERoomToyInputText,partyMessageAt: Date().timeIntervalSince1970 ,partyRoomName: self.toyScape.toyOwner, isReceive: false,partyMessageFrom: toyScape.toyOwnerID)
                    partyRoomMessages.append(partyRoomMessage)
                    ToyeInfo.info.partyRoomMessages.append(partyRoomMessage)
                    if ToyeInfo.info.partyRoomToyeList.contains(where: { $0.partyRoomName == self.toyScape.toyOwner }) == false {
                        ToyeInfo.info.partyRoomToyeList.append(partyRoomMessage)
                    }
                    talkInfoTable.reloadData()
                    talkInfoTable.scrollToRow(at: IndexPath(row: 0, section: partyRoomMessages.count - 1), at: UITableView.ScrollPosition.bottom, animated: true)
                }
                
                
                toyeInfoWonders.append(2001)
                toyeInfoWonders.append(contentsOf: [20,33])
                
                if toyeInfoWonders.contains(12) {
                    toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
                    
                    talkToyeInputField.text = nil
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
            
            self.toyeNameUser.text = toyScape.toyOwner
            toyeScapeUserImage.image = UIImage(named: toyScape.toyOwnerID)
        }
        
        joinTrendingTopicInTrendyToyParty()
        
        self.rt_customRightItem("toyNavigationRightMore", action: #selector(rt_customRightItemAction))
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
                    ToyeStorage.toyeSaveString(self.toyScape.toyOwnerID, forKey: self.toyScape.toyOwnerID + toyScapeOwnerBlack)
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
    
    func joinTrendingTopicInTrendyToyParty(){
        toyeInfoWonders.append(121)
        if toyeInfoWonders.count > 1 {
            toyeCollectGemsHub["talkRoomInitiatorID"] = "talkRoomInitiatorID"
            let partyFilterMessages = ToyeInfo.info.partyRoomMessages.filter({$0.partyRoomName == toyScape.toyOwner})
            partyRoomMessages.append(contentsOf: partyFilterMessages)
            toyeInfoWonders.append(contentsOf: [20,33])
            
            if toyeInfoWonders.contains(12) {
                toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
            }
            talkInfoTable.reloadData()
            DispatchQueue.main.async {
                if self.partyRoomMessages.count > 0 && self.toyeCollectGemsHub.count > 0{
                    self.talkInfoTable.scrollToRow(at: IndexPath(row: 0, section: self.partyRoomMessages.count - 1), at: UITableView.ScrollPosition.middle, animated: true)
                }
                
            }
        }
    }
    
    @IBAction func toyeWebRtcCall(_ sender: Any) {
        let interactiveCallController = InteractiveCallViewController(nibName: "InteractiveCallViewController", bundle: nil)
        interactiveCallController.toyScape = self.toyScape
        navigationController?.pushViewController(interactiveCallController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section > 0 {
            return 0.01
        }else{
            return 32.0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if self.toyeInfoWonders.count > 0 {
            return 32.0
        }else{
            return 100.0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toyTalksInfoCell = tableView.dequeueReusableCell(withIdentifier: "ToyTalksInfoTableViewCell") as! ToyTalksInfoTableViewCell
        toyTalksInfoCell.talkInfo.text = partyRoomMessages[indexPath.section].partyMessageInfo
        toyTalksInfoCell.talkTime.text = convertTimestampToLocalTime(partyRoomMessages[indexPath.row].partyMessageAt)
        return toyTalksInfoCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return partyRoomMessages.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func convertTimestampToLocalTime(_ timestamp: TimeInterval) -> String {
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        let timestampDate = Date(timeIntervalSince1970: timestamp)
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm" // 根据需求调整格式
        dateFormatter.timeZone = TimeZone.current // 设置为本地时区
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        return dateFormatter.string(from: timestampDate)
    }
    
}
