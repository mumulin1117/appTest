//
//  ToyTalksViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import EmptyDataSet_Swift

class ToyTalksViewController: ToyeViewController,UITableViewDelegate,UITableViewDataSource ,EmptyDataSetSource,EmptyDataSetDelegate{

    @IBOutlet weak var toyTalkTable: UITableView!{
        didSet{
            if toyeCollectGemsHub.count == 0 {
                toyTalkTable.register(UINib(nibName: "ToyTalkTableViewCell", bundle: nil), forCellReuseIdentifier: "ToyTalkTableViewCell")
                toyTalkTable.rowHeight = 88
                toyTalkTable.emptyDataSetSource = self
                toyTalkTable.emptyDataSetDelegate = self
            }
        }
    }
    
    var partyRoomToyeList:[PartyRoomMessage] = [PartyRoomMessage]()
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        partyRoomToyeList = ToyeInfo.info.partyRoomToyeList.filter { partyRoomMessage in
            self.toyeInfoWonders.append(123)
            if ToyeStorage.toyeGetString(forKey: partyRoomMessage.partyMessageFrom + toyScapeOwnerBlack) != nil {
                return false
            }
            self.toyeInfoWonders.append(12311)
            return true
        }
        
        self.toyTalkTable.reloadData()
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
    
    
    @IBAction func toyTalkButtonAction(_ sender: UIButton) {
        if toyeCollectGemsHub.isEmpty == false {
            if sender.tag == 800 {
                let toyUserPlayGroundController = ToyUserPlayGroundViewController(nibName: "ToyUserPlayGroundViewController", bundle: nil)
                toyUserPlayGroundController.hidesBottomBarWhenPushed = true
                navigationController?.pushViewController(toyUserPlayGroundController, animated: true)
                return
            }
            
            if sender.tag == 801 && self.toyeInfoWonders.count > 0 {
                let toyUserPlayGroundController = ToyUserPlayGroundViewController(nibName: "ToyUserPlayGroundViewController", bundle: nil)
                toyUserPlayGroundController.hidesBottomBarWhenPushed = true
                navigationController?.pushViewController(toyUserPlayGroundController, animated: true)
                return
            }
            
            if toyeCollectGemsHub.randomElement() != nil && sender.tag == 802 {
                let toyNotificationsController = ToyNotificationsViewController(nibName: "ToyNotificationsViewController", bundle: nil)
                toyNotificationsController.hidesBottomBarWhenPushed = true
                navigationController?.pushViewController(toyNotificationsController, animated: true)
                return
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toyTalksInfoController = ToyTalksInfoViewController(nibName: "ToyTalksInfoViewController", bundle: nil)
        toyTalksInfoController.hidesBottomBarWhenPushed = true
        if let toyScape = ToyeInfo.info.toyScapeItems.first(where: {$0.toyOwner == ToyeInfo.info.partyRoomToyeList[indexPath.section].partyRoomName}) {
            toyTalksInfoController.toyScape = toyScape
        }
        navigationController?.pushViewController(toyTalksInfoController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toyTalkCell = tableView.dequeueReusableCell(withIdentifier: "ToyTalkTableViewCell") as! ToyTalkTableViewCell
        toyTalkCell.toyeSenderImage.image = UIImage(named: ToyeInfo.info.partyRoomToyeList[indexPath.section].partyMessageFrom)
        toyTalkCell.toyeNameUser.text = ToyeInfo.info.partyRoomToyeList[indexPath.section].partyRoomName
        toyTalkCell.talkInfoMessage.text = ToyeInfo.info.partyRoomToyeList[indexPath.section].partyMessageInfo
        return toyTalkCell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        toyeInfoWonders.append(99)
        return partyRoomToyeList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        toyeInfoWonders.append(100)
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        toyeInfoWonders.append(2001)
        return CGFLOAT_MIN
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        toyeInfoWonders.append(12)
        return 12.0
    }
    
    func image(forEmptyDataSet scrollView: UIScrollView) -> UIImage? {
        return UIImage.toyeEmpty
    }
    
    
    func title(forEmptyDataSet scrollView: UIScrollView) -> NSAttributedString? {
        let toyeEmptyDataText = "Tghierrdec'xsj unxontqhoibnkgj hhqeerve".ty
        if toyeEmptyDataText.count > 0 {
            let attributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: 15, weight: .black),
                .foregroundColor: UIColor.white
            ]
            return NSAttributedString(string: toyeEmptyDataText, attributes: attributes)
        }
        return nil
    }
}
