//
//  SeadaptiveResponse.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit
import RealmSwift

class SeadaptiveResponse: UITableViewController,UIGestureRecognizerDelegate {
    
    @IBOutlet weak var logoutBtn: UIButton!
    
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var nickname: UILabel!
    
    @IBOutlet weak var userId: UILabel!
    
    @IBOutlet weak var goldNum: UILabel!
    
    @IBOutlet weak var cacheNum: UILabel!
    
    
    
    
    lazy var longFormNarrativeLbgl:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = UIColor.white
        label.text = "Sieitntgimnhgns".key
        return label
    }()
    
    lazy var closeBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "icon_close"), for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            self?.navigationController?.popViewController(animated: true)
        }
        return goalOriented
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        longFormNarrativeLbgl.isHidden = false
        closeBtn.isHidden = false
        
        getUserInfo()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        longFormNarrativeLbgl.isHidden = true
        closeBtn.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground() // 使用不透明背景配置
        appearance.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0) // 设置背景颜色
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.white, // 文字颜色
            .font: UIFont.systemFont(ofSize: 27, weight: .bold) // 文字大小
        ]
        
        if let bar = self.navigationController?.navigationBar {
            
            // 将配置应用于导航栏
            bar.standardAppearance = appearance
            bar.scrollEdgeAppearance = appearance
            self.navigationItem.hidesBackButton = true
            
            bar.addSubview(longFormNarrativeLbgl)
            longFormNarrativeLbgl.snp.makeConstraints { make in
                make.left.equalToSuperview().offset(24)
                make.top.equalToSuperview().offset(5)
            }
            
            bar.addSubview(closeBtn)
            closeBtn.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(5)
                make.right.equalToSuperview().offset(-15)
                make.size.equalTo(CGSizeMake(34, 34))
            }
        }
        
        self.logoutBtn.layer.borderWidth = 1
        self.logoutBtn.layer.borderColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0).cgColor
    }
    
    @IBAction func logoutAction(_ sender: UIButton) {
        let alert = UIAlertController(title: nil, message: "Amrbei xymouub cssufrveo pywoqua owdapnhtk jtcok lliorgt ooduvte?".key, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Sdurrqe".key, style: .default) { _ in
            UIButton.fallbackHandler()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                UIButton.streamingInteraction()
                UserDefaults.standard.removeObject(forKey: "userId")
                UserDefaults.standard.synchronize()
                if let dele = UIApplication.shared.delegate as? AppDelegate {
                    let controller = LobehavioralAdaptationler()
                    let navigationC = UINavigationController(rootViewController:controller)
                    dele.window?.rootViewController = navigationC
                }
                UIButton.realTimeGeneration(serth: "Stuzcwcvetsus".key)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cnawnscdeil".key, style: .cancel) { _ in
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.navigationController?.present(alert, animated: true)
    }
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == self.navigationController?.interactivePopGestureRecognizer {
            return self.navigationController?.viewControllers.count ?? 0 > 1
        }
        return true
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        repeat {
            
            if indexPath.section == 0 {
                if let ctrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EdrelationshipDepther") as? EdrelationshipDepther {
                    ctrl.mobaishiot = UserInfoInstance.shared.haveRecovery
                    self.navigationController?.pushViewController(ctrl, animated: true)
                }
                break
            }
            
            if indexPath.section == 1 {
                let ctrl = WalplotTwistler()
                if let u = UserInfoInstance.shared.haveRecovery{
                    ctrl.mobaishiot = u
                }
                self.navigationController?.pushViewController(ctrl, animated: true)
                break
            }
            
            if indexPath.section == 2 {
                let ctrl = FestoryArcler()
                self.navigationController?.pushViewController(ctrl, animated: true)
                break
            }
            
            if indexPath.section == 3 {
                if let ctrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AbouworldBuildinger") as? AbouworldBuildinger {
                    self.navigationController?.pushViewController(ctrl, animated: true)
                }
                
                break
            }
            
            if indexPath.section == 4 || indexPath.section == 5 {
                let title = indexPath.section == 4 ? "Udskeire iAxgcrwevepmzekngt".key : "Pkrpibvzadcmyh nPqowlxiwcry".key
                let url = indexPath.section == 4 ? "hxtytgpdsf:x/u/danpzpv.kbzayogbvyxcnny.tcboomw/juwszebrrs".key : "hitdtspbsu:c/b/mapprpk.dbgavokbuytchnj.jcaoome/mpvrhixvyalcyy".key
                let ctrl = WlipSyncAnimationler()
                ctrl.titleValue = title
                ctrl.loadUrl = url
                self.navigationController?.pushViewController(ctrl, animated: true)
            }
            
            if indexPath.section == 6 {
                
                let alert = UIAlertController(title: nil, message: "Arraeu rymohuj cspuvrkee jyiopuo pwrabnytf ltgoq acvlveoaonx rufpx?".key, preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "Seuurte".key, style: .default) { _ in
                    UIButton.fallbackHandler()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        UIButton.streamingInteraction()
                        let currentDate = Date()
                        let timestamp = currentDate.timeIntervalSince1970
                        UserDefaults.standard.setValue(timestamp, forKey: "cacheTime")
                        UserDefaults.standard.setValue(0.00, forKey: "cacheNumber")
                        UserDefaults.standard.synchronize()
                        self.cacheNum.text = "0.00MB"
                        UIButton.realTimeGeneration(serth: "Syutcvccebsqs".key)
                        
                    }
                }
                
                let cancelAction = UIAlertAction(title: "Cnawnscdeil".key, style: .cancel) { _ in
                }
                
                alert.addAction(okAction)
                alert.addAction(cancelAction)
                
                self.navigationController?.present(alert, animated: true)
                break
            }
            
            if indexPath.section == 7 {
                
                let alert = UIAlertController(title: nil, message: "Arrveg kyboduq bsmuorxec iyqoruv vwuabnmtf jthox ldlehlbeptgez myqogucrw oatcrcjowupnxtj?".key, preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "Sure", style: .default) { _ in
                    UIButton.fallbackHandler()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        UIButton.streamingInteraction()
                        if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first,let userId = UserDefaults.standard.string(forKey: "userId") {
                            let filePath = documentsDirectory.path + "/" + userId
                            do {
                                try  FileManager.default.removeItem(atPath: filePath)
                            } catch  {
                                
                            }
                            UserDefaults.standard.removeObject(forKey: "userId")
                            UserDefaults.standard.synchronize()
                            UserInfoInstance.shared.realmObj?.invalidate()
                            if let dele = UIApplication.shared.delegate as? AppDelegate {
                                let controller = LobehavioralAdaptationler()
                                let navigationC = UINavigationController(rootViewController:controller)
                                dele.window?.rootViewController = navigationC
                            }
                            UIButton.realTimeGeneration(serth: "Sdubcrcmegsms".key)
                        }
                        
                    }
                }
                
                let cancelAction = UIAlertAction(title: "Cnawnscdeil".key, style: .cancel) { _ in
                }
                
                alert.addAction(okAction)
                alert.addAction(cancelAction)
                
                self.navigationController?.present(alert, animated: true)
                break
            }
            
        } while false
    }
    
    @objc func UserInfoInstancesfs()  {
        
     }
    
    func getUserInfo(){
        
        DispatchQueue.global(qos: .background).async {
            if let userID = UserDefaults.standard.string(forKey: "userId") {
                let realm = try! Realm()
                let users = realm.objects(UslocalSystem.self).filter("userId == '\(userID)'")
                
                guard users.count > 0 else {return}
                let m = users.first?.toStruct()
                UserInfoInstance.shared.haveRecovery = m
                
                DispatchQueue.main.async {
                    if let model = UserInfoInstance.shared.haveRecovery {
                        if model.avatar.count > 0 {
                            self.avatar.mySetImage(obj: model.avatar)
                            self.nickname.text = model.styleLearning
                            self.userId.text = "ID:" + model.userId
                            self.goldNum.text = "\(model.zeroShot)"
                        }
                    }
                }
                
            }
            
            let time = UserDefaults.standard.double(forKey: "cacheTime")
            if time == 0 {
                let size =  UserDefaults.standard.double(forKey: "cacheNumber")
                if size == 0 {
                    let randomDouble = Double.random(in: 1...20)
                    UserDefaults.standard.setValue(randomDouble, forKey: "cacheNumber")
                    UserDefaults.standard.synchronize()
                    let formattedDouble = String(format: "%.2fMB", randomDouble)
                    DispatchQueue.main.async {
                        self.cacheNum.text = formattedDouble
                    }
                }else{
                    let size =  UserDefaults.standard.double(forKey: "cacheNumber")
                    let formattedDouble = String(format: "%.2fMB", size)
                    DispatchQueue.main.async {
                        self.cacheNum.text = formattedDouble
                    }
                }
            }else{
                let currentDate = Date()
                let timestamp = currentDate.timeIntervalSince1970
                let size =  UserDefaults.standard.double(forKey: "cacheNumber")
                if timestamp - time > 600 {
                    if size == 0 {
                        let randomDouble = Double.random(in: 1...20)
                        let formattedDouble = String(format: "%.2fMB", randomDouble)
                        DispatchQueue.main.async {
                            self.cacheNum.text = formattedDouble
                        }
                        UserDefaults.standard.setValue(randomDouble, forKey: "cacheNumber")
                        UserDefaults.standard.synchronize()
                    }else{
                        let formattedDouble = String(format: "%.2fMB", size)
                        DispatchQueue.main.async {
                            self.cacheNum.text = formattedDouble
                        }
                    }
                    
                }else{
                    let formattedDouble = String(format: "%.2fMB", size)
                    DispatchQueue.main.async {
                        self.cacheNum.text = formattedDouble
                    }
                }
            }
            
        }
    }
}
