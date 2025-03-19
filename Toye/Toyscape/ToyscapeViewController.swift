//
//  ToyscapeViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import TYCyclePagerView
import SVProgressHUD
import HandyJSON

class ToyscapeViewController: ToyeViewController,TYCyclePagerViewDelegate,TYCyclePagerViewDataSource {
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:Any] = [:]
    
    var toyeRequestState = 0
    
    var toyTalkRooms:[ToyTalkRoom] = []
    var toyScape:[ToyScape] = []
    
    var tyIndicator: UIView!
    
    @IBOutlet weak var toyAIParty: UIImageView!
    
    @IBOutlet weak var ToyScapeNewestButton: UIButton!
    
    @IBOutlet weak var toyeScapeImage: UIImageView!
    var toyLoad = false
    
    var toyFollow = false
    
    lazy var serialQueue: DispatchQueue = {
        return DispatchQueue(label: "com.toye.serialQueue")
    }()
    
    @IBOutlet weak var patryTyPager: TYCyclePagerView!{
        didSet{
            patryTyPager.register(UINib(nibName: "ToyeRoomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ToyeRoomCollectionViewCell")
            patryTyPager.delegate = self
            patryTyPager.dataSource = self
            patryTyPager.isInfiniteLoop = false
        }
    }
    
    
    @IBOutlet weak var toyePager: TYCyclePagerView!{
        didSet{
            toyePager.register(UINib(nibName: "ToyScapeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ToyScapeCollectionViewCell")
            toyePager.delegate = self
            toyePager.dataSource = self
            toyePager.isInfiniteLoop = false
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        if toyScape.count > 0 && toyTalkRooms.count > 0 {
            if self.toyeInfoWonders.count > 0 {
                loadAllDatas(toyeTag: 99)
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
        
        toyeRequestState = 200
        
        
        if toyeCollectGemsHub.keys.contains("toyeHub") &&
            toyeInfoWonders.contains(11) {
            
            tyIndicator = UIView().then{
                $0.backgroundColor = UIColor.init(hex: "#6720EA")
            }
            
            view.addSubview(tyIndicator)

            self.tyIndicator.snp.makeConstraints { make in
                make.left.equalTo(ToyScapeNewestButton.snp.left).offset(2)
                make.right.equalTo(ToyScapeNewestButton.snp.right).offset(-2)
                make.height.equalTo(6)
                make.bottom.equalTo(ToyScapeNewestButton.snp.bottom).offset(-5)
            }
            
            toyAIParty.isUserInteractionEnabled = true
            let toyAIPartyRecognizer = UITapGestureRecognizer(target: self, action: #selector(toyAIPartyTapAction))
            toyAIParty.addGestureRecognizer(toyAIPartyRecognizer)
            
            self.view.layoutIfNeeded()
            
            if let loginedCurrntToye = ToyeInfo.info.loginedCurrntToye {
                if loginedCurrntToye.toyOwnerID.contains("@") {
                    
                    toyeScapeImage.image = UIImage(named: "toyAbout")
                }else{
                    toyeScapeImage.image = UIImage(named: loginedCurrntToye.toyOwnerID)
                }
                
            }
            
            loadAllDatas(toyeTag: 20)
            
            
            NotificationCenter.default.addObserver(self, selector: #selector(toyScapeInfoChanged(notification:)), name: NSNotification.Name("toyScapeInfoChanged"), object: nil)
        }
        
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
    
    @IBAction func userPlayGroundAvtion(_ sender: UIButton) {
        self.tyIndicator.snp.removeConstraints()
        
        if toyeInfoWonders.contains(2001) {
            self.tyIndicator.snp.makeConstraints { make in
                make.left.equalTo(sender.snp.left).offset(2)
                make.right.equalTo(sender.snp.right).offset(-2)
                make.height.equalTo(6)
                make.bottom.equalTo(sender.snp.bottom).offset(-5)
            }
        }
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        } completion: { _ in
            if self.toyLoad {
                SVProgressHUD.show()
                self.loadToyScape(placeWait: true, isFollow: sender.tag == 20000,completion: { [weak self] in
                    DispatchQueue.main.async {
                        SVProgressHUD.dismiss()
                        if let weakSelf = self {
                            weakSelf.toyePager.reloadData()
                        }
                    }
                })
            }
        }
        
        toyFollow = sender.tag == 20000
        
    }
    
    @objc func toyAIPartyTapAction(){
        let hipsterToyLensController = HipsterToyLensViewController(nibName: "HipsterToyLensViewController", bundle: nil)
        hipsterToyLensController.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(hipsterToyLensController, animated: true)
    }

    @IBAction func createTrendingTopicInTrendyToyParty(_ sender: UIButton) {
        let trendyToyPartyController = TrendyToyPartyViewController(nibName: "TrendyToyPartyViewController", bundle: nil)
        trendyToyPartyController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(trendyToyPartyController, animated: true)
    }
    
    
    func pagerView(_ pagerView: TYCyclePagerView, cellForItemAt index: Int) -> UICollectionViewCell {
        if pagerView == patryTyPager {
            let tyRoomCell = pagerView.dequeueReusableCell(withReuseIdentifier: "ToyeRoomCollectionViewCell", for: index) as! ToyeRoomCollectionViewCell
            tyRoomCell.talkRoomIdentifier.text = toyTalkRooms[index].talkRoomName
            tyRoomCell.toyeRoomImage.image = UIImage(named: toyTalkRooms[index].talkRoomInitiatorID)
            tyRoomCell.joinUserSuperView.reloadScape(scapeItem: getTalkRoomElements(from: toyTalkRooms, count: 3)!)
            return tyRoomCell
        }else{
            let tyCell = pagerView.dequeueReusableCell(withReuseIdentifier: "ToyScapeCollectionViewCell", for: index) as! ToyScapeCollectionViewCell
            tyCell.toyImage.image = UIImage(named: toyScape[index].toyImage)
            return tyCell
        }
    }
    
    
    func layout(for pageView: TYCyclePagerView) -> TYCyclePagerViewLayout {
        let layout = TYCyclePagerViewLayout()
        layout.itemSpacing = 12
        if pageView == patryTyPager {
            layout.itemSize = CGSizeMake(294, 163)
            layout.sectionInset = UIEdgeInsets(top: 0, left: 29, bottom: 0, right: 29)
        }else{
            layout.itemSize = CGSizeMake(253, 192)
            layout.sectionInset = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 50)
        }
        return layout
    }
    
    func numberOfItems(in pageView: TYCyclePagerView) -> Int {
        return pageView == patryTyPager ? toyTalkRooms.count : toyScape.count
    }
    
    func pagerView(_ pageView: TYCyclePagerView, didSelectedItemCell cell: UICollectionViewCell, at index: Int) {
        if pageView == patryTyPager {
            let partyRoomController = ToyePartyRoomViewController(nibName: "ToyePartyRoomViewController", bundle: nil)
            partyRoomController.toyTalkRoom = toyTalkRooms[index]
            partyRoomController.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(partyRoomController, animated: true)
        }else{
            let scapeDetailController = ToyscapeViewDetailController(nibName: "ToyscapeViewDetailController", bundle: nil)
            scapeDetailController.hidesBottomBarWhenPushed = true
            scapeDetailController.toyScape = toyScape[index]
            scapeDetailController.toyeScapeInfoChanged = { [weak self] toyScape in
                if let weakSelf = self {
                    weakSelf.toyScape[index] = toyScape
                }
            }
            navigationController?.pushViewController(scapeDetailController, animated: true)
        }
    }
    
    func loadToyTalkRooms(placeWait:Bool, toyTalkRoomType:String,completion:@escaping () -> Void){
        DispatchQueue.global().async {
            
            if placeWait {
                sleep(2)
            }
            if self.toyTalkRooms.count > 0 {
                self.toyTalkRooms.removeAll { toyTalkRoom in
                    self.serialQueue.async {
                        self.toyeInfoWonders.insert(200, at: 0)
                    }
                    
                    if ToyeStorage.toyeGetString(forKey: toyTalkRoom.roomID + roomBlack) != nil {
                        self.serialQueue.async {
                            self.toyeInfoWonders.append(135)
                        }
                        return true
                    }
                    
                    self.serialQueue.async {
                        self.toyeInfoWonders.append(1135)
                    }
                    
                    if ToyeStorage.toyeGetString(forKey: toyTalkRoom.talkRoomInitiatorID + toyScapeOwnerBlack) != nil {
                        self.serialQueue.async {
                            self.toyeInfoWonders.append(135)
                        }
                        return true
                    }
                    self.serialQueue.async {
                        self.toyeInfoWonders.insert(100, at: 1)
                    }
                    return false
                }
                self.serialQueue.async {
                    self.toyeInfoWonders.append(12)
                }
            }else{
                if let toyTalkRoomTypePath = Bundle.main.path(forResource: toyTalkRoomType, ofType: "pglxitspt".ty)
                   ,let talkRoomData = FileManager.default.contents(atPath: toyTalkRoomTypePath) {
                    
                    self.serialQueue.async {
                        self.toyeInfoWonders.insert(200, at: 0)
                    }
                    
                    if self.toyeInfoWonders.count > 0 && self.toyeInfoWonders.count > 0  {
                        if let toyFileArray = try? PropertyListSerialization.propertyList(from: talkRoomData, options: [], format: nil) as? [[String: Any]] {
                            self.toyTalkRooms = toyFileArray.compactMap { ToyTalkRoom.deserialize(from: $0) }
                            if placeWait {
                                self.toyTalkRooms = self.toyTalkRooms.shuffled()
                            }
                            
                            if self.toyeInfoWonders.isEmpty == false {
                                
                                self.toyTalkRooms.removeAll { toyTalkRoom in
                                    self.serialQueue.async {
                                        self.toyeInfoWonders.insert(200, at: 0)
                                    }
                                    if ToyeStorage.toyeGetString(forKey: toyTalkRoom.roomID + roomBlack) != nil {
                                        self.serialQueue.async {
                                            self.toyeInfoWonders.append(135)
                                        }
                                        return true
                                    }
                                    self.serialQueue.async {
                                        self.toyeInfoWonders.append(1135)
                                    }
                                    if ToyeStorage.toyeGetString(forKey: toyTalkRoom.talkRoomInitiatorID + toyScapeOwnerBlack) != nil {
                                        self.serialQueue.async {
                                            self.toyeInfoWonders.append(135)
                                        }
                                        return true
                                    }
                                    self.serialQueue.async {
                                        self.toyeInfoWonders.insert(100, at: 1)
                                    }
                                    return false
                                }
                            }
                        }
                    }
                }
            }
            completion()
        }
    }
    
    func loadToyScape(placeWait:Bool, isFollow:Bool = false,completion:@escaping () -> Void){
        DispatchQueue.global().async {
            if placeWait {
                sleep(2)
            }
            
            if self.toyScape.count > 0 {
                if placeWait {
                    self.toyScape.shuffle()
                }
                self.toyScape.removeAll { toyScape in
                    self.serialQueue.async {
                        self.toyeInfoWonders.append(12)
                    }
                    
                    if ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeBlack) != nil {
                        return true
                    }
                    
                    self.serialQueue.async {
                        self.toyeInfoWonders.append(190)
                    }
                    
                    if ToyeStorage.toyeGetString(forKey: toyScape.toyOwnerID + toyScapeOwnerBlack) != nil {
                        return true
                    }
                    
                    self.serialQueue.async {
                        self.toyeInfoWonders.append(1112)
                    }
                    
                    if isFollow {
                        if self.toyeInfoWonders.count > 0 && self.toyeCollectGemsHub.isEmpty == false {
                            if ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeFollow) != nil {
                                return false
                            }else{
                                return true
                            }
                        }
                    }
                    
                    return false
                }
                self.serialQueue.async {
                    self.toyeInfoWonders.append(11)
                }
                
            }else{
                self.serialQueue.async {
                    self.toyeInfoWonders.insert(400, at: 0)
                }
                
                if placeWait {
                    self.toyScape = ToyeInfo.info.toyScapeItems.shuffled()
                }
                
                if self.toyeInfoWonders.isEmpty == false {
                    
                    self.toyScape.removeAll { toyScape in
                        
                        self.serialQueue.async {
                            self.toyeInfoWonders.append(12)
                        }
                        
                        if ToyeStorage.toyeGetString(forKey: toyScape.toyImage + toyScapeBlack) != nil  {
                            self.toyeInfoWonders.append(1)
                            return true
                        }
                        
                        self.serialQueue.async {
                            self.toyeInfoWonders.append(contentsOf: [1,2,3])
                        }
                        
                        if ToyeStorage.toyeGetString(forKey: toyScape.toyOwnerID + toyScapeOwnerBlack) != nil && self.toyeInfoWonders.count > 0 {
                            self.toyeInfoWonders.append(2)
                            return true
                        }
                        
                        return false
                    }
                    
                    self.serialQueue.async {
                        self.toyeInfoWonders.append(101)
                    }
                }
            }
            
            
            completion()
        }
    }
    
    func loadAllDatas(toyeTag:NSInteger){
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        if toyeTag % 2 == 0 {
            SVProgressHUD.show()
            toyeInfoWonders.append(toyeTag)
        }
        
        let dispatchGroup = DispatchGroup()
        
        dispatchGroup.enter()
        loadToyTalkRooms(placeWait: toyeTag % 2 == 0, toyTalkRoomType: "ToyTalkRooms") {
            dispatchGroup.leave()
        }
        
        toyeCollectGemsHub["toyeTag"] = toyeTag
        
        dispatchGroup.enter()
        loadToyScape(placeWait: toyeTag % 2 == 0 ,isFollow: toyFollow, completion: {
            dispatchGroup.leave()
        })
        
        if toyeCollectGemsHub.keys.contains("toyeTag") {
            dispatchGroup.notify(queue: .main) {
                
                if toyeTag % 2 == 0 {
                    SVProgressHUD.dismiss()
                }
                
                self.patryTyPager.reloadData()
                self.toyePager.reloadData()
                self.toyLoad = true
            }
        }
    }
    
    func getTalkRoomElements(from array: [ToyTalkRoom], count: Int) -> [ToyTalkRoom]? {
        
        guard array.count >= count else { return nil }
        return Array(array.shuffled().prefix(count))
    }
}
