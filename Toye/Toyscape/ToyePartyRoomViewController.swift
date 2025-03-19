//
//  ToyePartyRoomViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit
import Then
import SVProgressHUD

struct PartyRoomMessage {
    var partyMessageSender = ""
    var partyMessageInfo = ""
    var partyMessageAt:Double = 0.0
    var partyRoomName = ""
    var isReceive = true
    var partyMessageFrom = ""
}

class ToyePartyRoomViewController: ToyeViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var partyERoomToyInput: UITextField!
    @IBOutlet weak var partyRoomTableView: UITableView!{
        didSet{
            partyRoomTableView.register(UINib(nibName: "PartyRoomLeftDTableViewCell", bundle: nil), forCellReuseIdentifier: "PartyRoomLeftDTableViewCell")
            partyRoomTableView.register(UINib(nibName: "PartyRoomRightDTableViewCell", bundle: nil), forCellReuseIdentifier: "PartyRoomRightDTableViewCell")
            partyRoomTableView.rowHeight = UITableView.automaticDimension
            partyRoomTableView.estimatedRowHeight = 80
            
            if let partyHeader = Bundle.main.loadNibNamed("PartyRoomTableHeader", owner: nil)?.first as? PartyRoomTableHeader {
//                partyHeader.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width, 544)
                self.partyHeader = partyHeader
                partyRoomTableView.tableHeaderView = partyHeader
                
                let backgroundImageView = UIImageView().then {
                    $0.frame = UIScreen.main.bounds
                    $0.image = UIImage.partyRoomBackground
                    $0.contentMode = .scaleAspectFill
                }
                
                let partyRoomBackground = UIView(frame: UIScreen.main.bounds).then{
                    $0.addSubview(backgroundImageView)
                }
        
                partyRoomTableView.backgroundView = partyRoomBackground
            }
        }
    }
    
    var partyHeader:PartyRoomTableHeader?
    
    var toyTalkRoom:ToyTalkRoom!
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    var toyReport:ToyContntReport?
    
    var partyRoomMessages:[PartyRoomMessage] = [PartyRoomMessage]()
    
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
            self.rt_customRightItem("toyNavigationRightMore", action: #selector(rt_customRightItemAction))
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
            
            if let partyHeader = partyHeader {
                partyHeader.partyRoom = toyTalkRoom
                self.title = toyTalkRoom.talkRoomName + "(\(toyTalkRoom.talkRoomChild + 1))"
            }
        }
        
        joinTrendingTopicInTrendyToyParty()
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
                self.toyeInfoWonders.append(12111)
                if self.toyeInfoWonders.count > 0 {
                    SVProgressHUD.showInfo(withStatus: "Ajdsdxeede ttsos ebjlnagcwkplqiqslt".ty)
                    ToyeStorage.toyeSaveString(self.toyTalkRoom.roomID, forKey: self.toyTalkRoom.roomID + roomBlack)
                    self.navigationController?.popViewController(animated: true)
                }
                
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
    
    func joinTrendingTopicInTrendyToyParty(){
        toyeInfoWonders.append(121)
        if toyeInfoWonders.count > 1 {
            toyeCollectGemsHub["partyRoomMessage"] = "partyRoomMessage"
            let partyRoomMessage = PartyRoomMessage(partyMessageSender: toyTalkRoom.talkRoomInitiatorID,partyMessageInfo:toyTalkRoom.talkRoomWelcome,partyMessageAt: 0)
            partyRoomMessages.append(partyRoomMessage)
            toyeCollectGemsHub["talkRoomInitiatorID"] = "talkRoomInitiatorID"
            let partyFilterMessages = ToyeInfo.info.partyRoomMessages.filter({$0.partyRoomName == toyTalkRoom.talkRoomName})
            partyRoomMessages.append(contentsOf: partyFilterMessages)
            toyeInfoWonders.append(contentsOf: [20,33])
            
            if toyeInfoWonders.contains(12) {
                toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
            }
            partyRoomTableView.reloadData()
            DispatchQueue.main.async {
                self.partyRoomTableView.scrollToRow(at: IndexPath(row: self.partyRoomMessages.count - 1, section: 0), at: UITableView.ScrollPosition.middle, animated: true)
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRoomMessages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let partyRoomMessage = partyRoomMessages[indexPath.row]
        if partyRoomMessage.isReceive {
            let partyRoomLeftCell = tableView.dequeueReusableCell(withIdentifier: "PartyRoomLeftDTableViewCell") as! PartyRoomLeftDTableViewCell
            partyRoomLeftCell.partyRoomMessageInfo.text = partyRoomMessage.partyMessageInfo
            partyRoomLeftCell.partySenderImage.image = UIImage(named: partyRoomMessage.partyMessageSender)
            return partyRoomLeftCell
        }else{
            let partyRoomRightCell = tableView.dequeueReusableCell(withIdentifier: "PartyRoomRightDTableViewCell") as! PartyRoomRightDTableViewCell
            partyRoomRightCell.partyRoomMessageInfo.text = partyRoomMessage.partyMessageInfo
            
            if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                if loginedCurrntToye.toyOwnerID == loginedCurrntToye.toyOwner{
                    partyRoomRightCell.partySenderImage.image = UIImage(named: "toyAbout")
                }else{
                    partyRoomRightCell.partySenderImage.image = UIImage(named: loginedCurrntToye.toyOwnerID)
                }
            }
            return partyRoomRightCell
        }
    }
    
    @IBAction func scheduleToyDiscussionInPlayPalsRoom(_ sender: UIButton) {
        
        if let partyERoomToyInputText = partyERoomToyInput.text,partyERoomToyInputText.count > 0 {
            
            toyeInfoWonders.append(12)
            
            if toyeInfoWonders.count > 0 {
                toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
                if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                    let partyRoomMessage = PartyRoomMessage(partyMessageSender: loginedCurrntToye.toyOwnerID,partyMessageInfo:partyERoomToyInputText,partyMessageAt: 0,partyRoomName: toyTalkRoom.talkRoomName, isReceive: false)
                    partyRoomMessages.append(partyRoomMessage)
                    ToyeInfo.info.partyRoomMessages.append(partyRoomMessage)
                    partyRoomTableView.reloadData()
                    partyRoomTableView.scrollToRow(at: IndexPath(row: partyRoomMessages.count - 1, section: 0), at: UITableView.ScrollPosition.bottom, animated: true)
                }
                
                
                toyeInfoWonders.append(2001)
                toyeInfoWonders.append(contentsOf: [20,33])
                
                if toyeInfoWonders.contains(12) {
                    toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
                    
                    partyERoomToyInput.text = nil
                }
            }
            
            
        }
        
    }
    

}
