//
//  HosentimentRecognitionr.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import UIKit
import RealmSwift

class HosentimentRecognitionr: BaexpressiveSyntler {
    
    var myRobots:[RCulturalSystem]?
    var sessionArray:[CcontextSystem]?
    
    lazy var subscriptView:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.layer.cornerRadius = 14.5
        goalOriented.layer.masksToBounds = true
        goalOriented.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        goalOriented.setImage(UIImage(named: "walllet_gold"), for: .normal)
        goalOriented.contentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        goalOriented.setTitle("  0  ", for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            if let model = UserInfoInstance.shared.haveRecovery {
                let ctrl = WalplotTwistler()
                if let u = UserInfoInstance.shared.haveRecovery{
                    ctrl.mobaishiot = model
                }
                self?.navigationController?.pushViewController(ctrl, animated: true)
            }
        }
        return goalOriented
    }()
    
    lazy var settingBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "icon_home_sz"), for: .normal)
        goalOriented.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        goalOriented.layer.cornerRadius = 14.5
        goalOriented.layer.masksToBounds = true
        goalOriented.interfaceWithADesign { [weak self] sender in
            // 跳转设置
            if let ctrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SeadaptiveResponse") as? SeadaptiveResponse {
                self?.navigationController?.pushViewController(ctrl, animated: true)
            }
        }
        return goalOriented
    }()
    
    lazy var newConverBot:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "icon_xj"), for: .normal)
        goalOriented.setTitle(" y znfewwj scbhuahtobdoqt".key, for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        goalOriented.setTitleColor(UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0), for: .normal)
        return goalOriented
    }()
    
    lazy var tableView:UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(HoreferenceSys.self, forHeaderFooterViewReuseIdentifier: "HoreferenceSys")
        table.register(HomeRoempathicReply.self, forCellReuseIdentifier: "HomeRoempathicReply")
        table.register(HomconversationalAill.self, forCellReuseIdentifier: "HomconversationalAill")
        table.register(NoMoreDataCell.self, forCellReuseIdentifier: "NoMoreDataCell")
        table.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        table.separatorStyle = .none
        table.delegate = self
        table.dataSource = self
        return table
    }()
    
    var isFirst = true
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        getMyRobot()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func getMyRobot(){
        
        
        
        if let userid = UserDefaults.standard.string(forKey: "userId") {
            
            
            getAllSession(userId: userid)
            
            if isFirst {
                UIButton.fallbackHandler()
            }
            
            let realm = try! Realm()
            let items = realm.objects(RobotModelObject.self).filter("robotAuther == '\(userid)'")
            guard items.count > 0 else {
                UIButton.streamingInteraction()
                return
            }
            var arr = [RCulturalSystem]()
            for i in items {
                arr.append(i.toStruct())
            }
            self.myRobots = arr
            if isFirst {
                UIButton.streamingInteraction()
            }
            UIButton.performWithoutAnimation {
                self.tableView.reloadSections(IndexSet(integer: 0), with: .automatic)
            }
            isFirst = false
        }
       
    }
    
    func getAllSession(userId:String){
        let realm = try! Realm()
        let items = realm.objects(CcontextSystemObject.self).sorted(byKeyPath: "timespam", ascending: false).filter("local == '\(userId)'")

        var arr = [CcontextSystem]()
        for item in items {
            arr.append(item.toStruct())
        }
        self.sessionArray = arr
        UIView.performWithoutAnimation {
            self.tableView.reloadSections(IndexSet(integer: 1), with: .automatic)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        initSubViews()
        
        let realm = try! Realm()
        let users = realm.objects(UslocalSystem.self).filter("enteredMailbox != ''")
        
        guard users.count > 0 else {return}
        if let m = users.first?.toStruct(){
            UserInfoInstance.shared.haveRecovery = m
            subscriptView.setTitle("  \(m.zeroShot)  ", for: .normal)
        }
    }
    
    func initSubViews(){
        let scene = UIApplication.shared.connectedScenes.first
        
        guard let windowScene = scene as? UIWindowScene else { return  }
        guard let statusBarManager = windowScene.statusBarManager else { return  }
        self.view.addSubview(subscriptView)
        subscriptView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height)
            make.height.equalTo(44)
        }
        
        self.view.addSubview(settingBtn)
        settingBtn.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.centerY.equalTo(subscriptView.snp.centerY)
            make.size.equalTo(CGSizeMake(44, 44))
        }
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(subscriptView.snp.bottom)
            make.bottom.equalToSuperview()
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

extension HosentimentRecognitionr:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 1
        if let arr = sessionArray,arr.count > 0{
            count = arr.count
        }
        return section == 0 ? 1 : count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeRoempathicReply") as! HomeRoempathicReply
            cell.createView.isHidden = self.myRobots?.count ?? 0 > 0
            cell.collectionView.isHidden = self.myRobots?.count ?? 0 == 0
            cell.createClosure = { [weak self] in
                let ctrl = CrealatencyOptimization()
                self?.tabBarController?.tabBar.isHidden = true
                self?.navigationController?.pushViewController(ctrl, animated: true)
            }
            if let arr = self.myRobots {
                cell.datas = arr
            }
            cell.selectRobotIndex = { [weak self] idx in
                if let arr = self?.myRobots{
                    let rm = arr[idx]
                    let ctrl = ChchoiceDrivenr()
                    ctrl.robotModel = rm
                    self?.navigationController?.pushViewController(ctrl, animated: true)
                }
            }
            return cell
        }else{
            if let arr = sessionArray,arr.count > 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "HomconversationalAill") as! HomconversationalAill
                let model = arr[indexPath.row]
                cell.model = model
                return cell
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "NoMoreDataCell") as! NoMoreDataCell
                return cell
            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HoreferenceSys") as! HoreferenceSys
        if section == 0 {
            header.aiLabel.text = "My AI"
            header.newConverBot.isHidden = false
            header.btnClosure = { [weak self] in
                let ctrl = CrealatencyOptimization()
                self?.tabBarController?.tabBar.isHidden = true
                self?.navigationController?.pushViewController(ctrl, animated: true)
            }
        }else{
            header.newConverBot.isHidden = true
            header.aiLabel.text = "Message"
        }
        return header
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 65
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 322 : 72
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let arr = self.sessionArray,arr.count > 0 {
            let model = arr[indexPath.row]
            let rm = try! Realm()
            let items =  rm.objects(RobotModelObject.self).filter("robotId == '\(model.robotID)'")
            guard items.count > 0 else {return}
            let m = items.first?.toStruct()
            let ctrl = ChchoiceDrivenr()
            ctrl.robotModel = m
            self.navigationController?.pushViewController(ctrl, animated: true)
            
        }
    }
}




