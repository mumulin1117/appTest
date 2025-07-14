//
//  ChchoiceDrivenr.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit
import RealmSwift
import IQKeyboardManagerSwift
import Alamofire
import SnapKit

class ChchoiceDrivenr: BaexpressiveSyntler {
    var statusBarHeight:CGFloat{
         let scene = UIApplication.shared.connectedScenes.first
        guard let windowScene = scene as? UIWindowScene else { return 0 }
        guard let statusBarManager = windowScene.statusBarManager else { return 0 }
        return  statusBarManager.statusBarFrame.height
    }
    var Conversssages = [MsituationalS]()
    
    var robotModel:RCulturalSystem?
    
    var descBottom:Constraint?
    var avatarBottom:Constraint?
    
    lazy var alert:CumultimodalI = {
        let alert = CumultimodalI(frame: CGRectMake(0, 0, 280, 232))
        alert.selectClosure = { [weak self] in
            let rm = try! Realm()
            if let m = self?.robotModel {
                let items = rm.objects(MsituationalSObject.self).filter("robotID = '\(m.robotId)'")
                try! rm.write({
                    rm.delete(items)
                })
                self?.Conversssages.removeAll()
                self?.tableView.reloadData()
            }
        }
        return alert
    }()
    
    lazy var bubbleView:BBucontextualMemory = {
        
        let bubbleView = BBucontextualMemory(frame: CGRect(x: UIScreen.main.bounds.size.width - 15 - 172, y: statusBarHeight + 85 + 32, width: 172, height: 102))
        bubbleView.selectClosure = { [weak self] index in
            self?.hideBubble()
            
            if index.0 == true {
                
            }else{
                if index.1 == 0 {
                    
                    if self?.descLab.isHidden == true {
                        self?.descLab.isHidden = false
                        if let m = self?.robotModel {
                            self?.descLab.text = m.desc
                        }
                        self?.descLab.snp.updateConstraints({ make in
                            make.bottom.equalToSuperview().offset(-11)
                        })
                        self?.bubbleView.updataBtnTitle(isShow: false)
                    }else{
                        self?.descLab.text = ""
                        self?.descLab.snp.updateConstraints({ make in
                            make.bottom.equalToSuperview()
                        })
                        self?.descLab.isHidden = true
                        self?.bubbleView.updataBtnTitle(isShow: true)
                    }
                    UIView.animate(withDuration: 0.25) {
                        self?.view.layoutIfNeeded()
                    }
                }else{
                    if let aa = self?.alert {
                        AldialogueTree.phneLibrary.coherenceAlgorithm(aa)
                    }
                }
            }
            
        }
        return bubbleView
    }()
    
    
    lazy var maskView:UIView = {
        let v = UIView(frame: self.view.bounds)
        v.backgroundColor = .clear
        v.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideBubble)))
        v.isHidden = true
        return v
    }()
    
    lazy var tableView:UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        table.estimatedRowHeight = 100
        table.rowHeight = UITableView.automaticDimension
        table.estimatedSectionFooterHeight = 0.01
        table.estimatedSectionHeaderHeight = 0.01
        table.sectionFooterHeight = 0.01
        table.sectionHeaderHeight = 12
        table.separatorStyle = .none
        table.delegate = self
        table.dataSource = self
        table.register(ChvoiceCustomization.self, forCellReuseIdentifier: "ChvoiceCustomization")
        table.register(ChaLavatarPersonalization.self, forCellReuseIdentifier: "ChaLavatarPersonalization")
        return table
    }()
    
    lazy var closeBtn:UIButton = {
        let btn = UIButton.init(type: .custom)
        btn.setImage(UIImage(named: "icon_close"), for: .normal)
        btn.interfaceWithADesign { [weak self] sender in
            self?.navigationController?.popViewController(animated: true)
        }
        return btn
    }()
    
    lazy var item1:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "asernav"), for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            UIButton.realTimeGeneration(serth: "Rsebpkoirstc kSguncnctemsjsmfpuxlolxy".key)
        }
        return goalOriented
    }()
    
    lazy var item2:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "baduioonav_icon2"), for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            if let model = self?.robotModel {
                let rm = try! Realm()
                let items = rm.objects(RobotModelObject.self).filter("robotId == '\(model.robotId)'")
                try! rm.write {
                    rm.delete(items)
                }
                self?.navigationController?.popToRootViewController(animated: true)
                UIButton.realTimeGeneration(serth: "Success")
            }
        }
        return goalOriented
    }()
    
    lazy var robotAvatar:UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 8
        img.layer.masksToBounds = true
        return img
    }()
    
    lazy var robotName:UILabel = {
        let robotName = UILabel()
        robotName.text = "name"
        robotName.textColor = .white
        robotName.font = .systemFont(ofSize: 20,weight: .medium)
        return robotName
    }()
    
    lazy var descLab:UILabel = {
        let descLab = UILabel()
        descLab.text = "Story Master is your ultimate writing companion for crafting suspenseful, thrilling, and fantastical novels."
        descLab.numberOfLines = 0
        descLab.textColor = UIColor(red: 0.580, green: 0.518, blue: 0.651, alpha: 1.0)
        descLab.font = .systemFont(ofSize: 12)
        return descLab
    }()
    
    lazy var inputPlaceHoder:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        label.numberOfLines = 0
        label.text = "Type your message…"
        return label
    }()
    
    lazy var topView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 0.663, green: 0.596, blue: 0.773, alpha: 1.0)
        v.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        v.layer.cornerRadius = 20
        
        
        let bg = UIView()
        bg.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        bg.layer.cornerRadius = 16
        bg.layer.masksToBounds = true
        v.addSubview(bg)
        bg.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().offset(-15)
        }
        
        bg.addSubview(robotAvatar)
        robotAvatar.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(12)
            make.size.equalTo(CGSizeMake(32, 32))
        }
        
        let items = ["Chauwind","icon_fx","icon_sc_wsc"]
        var lastItem:UIButton?
        for i in 0..<items.count {
            let btn = UIButton(type: .custom)
            btn.setBackgroundImage(UIImage(named: items[i]), for: .normal)
            btn.tag = 1000 + i
            if i == 2 {
                if let m = robotModel {
                    btn.isSelected = m.isCollect
                }
                
                btn.setBackgroundImage(UIImage(named: "icon_sc_ysc"), for: .selected)
            }
            btn.interfaceWithADesign {[weak self] sender in
                let tag = sender.tag - 1000
                repeat {
                    
                    if tag == 0 {
                        self?.maskView.isHidden = false
                        UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                            self?.bubbleView.transform = .identity
                        }, completion: nil)
                        break
                    }
                    
                    if tag == 1 {
                        self?.serverShare()
                        break
                    }
                    
                    if tag == 2 {
                        sender.isSelected = !sender.isSelected
                        if var model = self?.robotModel {
                            model.isCollect = !model.isCollect
                            let rm = try! Realm()
                            try! rm.write({
                                rm.add(RobotModelObject(robotModel: model), update: .modified)
                            })
                        }
                        break
                    }
                    
                } while false
            }
            bg.addSubview(btn)
            btn.snp.makeConstraints { make in
                make.right.equalToSuperview().offset(-(10 + CGFloat(i) * 44))
                make.centerY.equalTo(robotAvatar.snp.centerY)
                make.size.equalTo(CGSizeMake(40, 32))
            }
            lastItem = btn
        }
        
        bg.addSubview(robotName)
        robotName.snp.makeConstraints { make in
            make.centerY.equalTo(robotAvatar.snp.centerY)
            make.left.equalTo(robotAvatar.snp.right).offset(8)
            if let btn = lastItem {
                make.right.equalTo(btn.snp.left).offset(-8)
            }
        }
        robotName.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        
        bg.addSubview(descLab)
        
        descLab.snp.makeConstraints { make in
            make.left.equalTo(robotName.snp.left)
            make.right.equalToSuperview().offset(-12)
            make.top.equalTo(robotName.snp.bottom).offset(15)
            make.bottom.equalToSuperview().offset(-11).priority(.required)
        }
        
        return v
    }()
    
    lazy var inputTextView:UITextView = {
        let textView = UITextView()
        textView.font = .systemFont(ofSize: 15)
        textView.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        textView.textColor = .white
        textView.layer.cornerRadius = 16
        textView.layer.masksToBounds = true
        textView.delegate = self
        textView.textContainerInset = UIEdgeInsets(top: 12, left: 13, bottom: 10, right: 8)
        return textView
    }()
    
    lazy var sendBtn:UIButton = {
        let btn = UIButton.init(type: .custom)
        btn.setBackgroundImage(UIImage(named: "icon_fs"), for: .normal)
        btn.interfaceWithADesign { [weak self] sender in
            self?.sendMesssage()
        }
        return btn
    }()
    
    lazy var bottomView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        
        v.addSubview(inputTextView)
        inputTextView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(14)
            make.top.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-70)
            make.height.equalTo(40)
            make.bottom.equalToSuperview().offset(-40)
        }
        
        v.addSubview(inputPlaceHoder)
        inputPlaceHoder.snp.makeConstraints { make in
            make.top.equalTo(inputTextView.snp.top).offset(10)
            make.left.equalTo(inputTextView.snp.left).offset(14)
            make.right.equalTo(inputTextView.snp.right).offset(-10)
        }
        
        v.addSubview(sendBtn)
        sendBtn.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-15)
            make.top.equalToSuperview().offset(10)
            make.size.equalTo(CGSizeMake(40, 40))
        }
        
        return v
    }()
    
    lazy var buyView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        if let model = robotModel {
            view.isHidden = model.buy
        }
        let viewLine = UIView()
        viewLine.backgroundColor = UIColor(red: 0.227, green: 0.161, blue: 0.333, alpha: 1.0)
        view.addSubview(viewLine)
        viewLine.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(2)
            make.top.equalToSuperview().offset(32)
        }
        
        var icon = UIImageView(image: UIImage(named: "tip_icon"))
        view.addSubview(icon)
        icon.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(9)
        }
        
        let lab = UILabel()
        lab.textColor = .white
        lab.font = .systemFont(ofSize: 12)
        view.addSubview(lab)
        lab.setContentHuggingPriority(.defaultLow, for: .horizontal)
        icon.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        lab.snp.makeConstraints { make in
            make.left.equalTo(icon.snp.right).offset(5)
            make.top.equalToSuperview()
            make.bottom.equalTo(viewLine.snp.top)
            make.right.equalToSuperview().offset(-20)
        }
        
        var str1 = "Aefjtsewrd ppxacypilnogc ".key
        var str2 = "1a9e9".key
        let str3 = " qghoqlzdp cctokicnrsk,c zyuojuf icvafnt ucyhvavth swyietnhz wmpej.".key
        var attr = NSMutableAttributedString(string: str1+str2+str3)
        attr.addAttribute(.foregroundColor, value:UIColor(red: 0.988, green: 0.980, blue: 0.588, alpha: 1.0), range: NSMakeRange(str1.count, str2.count))
        lab.attributedText = attr
        
        let priceLab = UILabel()
        priceLab.textColor = .white
        priceLab.font = .systemFont(ofSize: 15,weight: .bold)
        view.addSubview(priceLab)
        priceLab.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(viewLine.snp.bottom).offset(23)
        }
        
        str1 = "Required:"
        str2 = "1a9e9".key
        attr = NSMutableAttributedString(string: str1+str2)
        attr.addAttribute(.foregroundColor, value:UIColor(red: 0.988, green: 0.980, blue: 0.588, alpha: 1.0), range: NSMakeRange(str1.count, str2.count))
        priceLab.attributedText = attr
        
        icon = UIImageView(image: UIImage(named: "walllet_gold"))
        view.addSubview(icon)
        icon.snp.makeConstraints { make in
            make.left.equalTo(priceLab.snp.right).offset(4)
            make.centerY.equalTo(priceLab.snp.centerY)
            make.size.equalTo(CGSizeMake(20, 20))
        }
        
        let buyBtn = UIButton.init(type: .custom)
        buyBtn.setTitle("Pgakya xNsorw".key, for: .normal)
        buyBtn.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        buyBtn.setTitleColor(UIColor.white, for: .normal)
        buyBtn.layer.cornerRadius = 23
        buyBtn.layer.masksToBounds = true
        buyBtn.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0)
        buyBtn.interfaceWithADesign {[weak self] sender in
            if var model = self?.robotModel ,var mobaishiotd = UserInfoInstance.shared.haveRecovery{
                if mobaishiotd.zeroShot < 199 {
                    UIButton.realTimeGeneration(serth: "Iwnosbutfuftitcrifeqnktf tbeallrabnscte".key)
                    return
                }
                UIButton.fallbackHandler()
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    DispatchQueue.global(qos: .background).async {
                        model.buy = true
                        
                        let realm = try! Realm()
                        
                        try! realm.write {
                            realm.add(RobotModelObject(robotModel: model), update: .modified)
                        }
                        
                        mobaishiotd.zeroShot  = mobaishiotd.zeroShot - 199
                        
                        try! realm.write {
                            realm.add(UslocalSystem(modernShot: mobaishiotd), update: .modified)
                        }
                        
                        DispatchQueue.main.async {
                            UIButton.streamingInteraction()
                            self?.buyView.isHidden = true
                        }
                    }
                }
                
            }
        }
        view.addSubview(buyBtn)
        buyBtn.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-15)
            make.centerY.equalTo(priceLab.snp.centerY)
            make.size.equalTo(CGSizeMake(160, 46))
        }
        return view
    }()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        IQKeyboardManager.shared.isEnabled = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        IQKeyboardManager.shared.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.addSubview(closeBtn)
        closeBtn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(statusBarHeight + 2)
            make.right.equalToSuperview().offset(-10)
            make.size.equalTo(CGSizeMake(34, 34))
        }
        
        self.view.addSubview(item1)
        item1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(statusBarHeight + 2)
            make.right.equalTo(closeBtn.snp.left).offset(-15)
            make.size.equalTo(CGSizeMake(34, 34))
        }
        
        self.view.addSubview(item2)
        item2.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(statusBarHeight + 2)
            make.right.equalTo(item1.snp.left).offset(-15)
            make.size.equalTo(CGSizeMake(34, 34))
        }
        
        self.view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(closeBtn.snp.bottom).offset(20)
        }
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom)
            make.left.right.equalToSuperview()
        }
        
        self.view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(tableView.snp.bottom)
        }
        tableView.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        self.view.addSubview(buyView)
        buyView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(126)
        }
        
        setupBubbleView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        updataRobots()
        getAllMessage()
    }
    
    func getAllMessage(){
        if let m = self.robotModel {
            let rm = try! Realm()
            let items = rm.objects(MsituationalSObject.self).filter("robotID = '\(m.robotId)'")
            for obj in items {
                let item = obj.toStruct()
                Conversssages.append(item)
            }
            self.tableView.reloadData()
            DispatchQueue.main.async {
                if self.Conversssages.count > 0 {
                    UIView.performWithoutAnimation {
                        self.tableView.scrollToRow(at: IndexPath(row: 0, section: self.Conversssages.count - 1), at: UITableView.ScrollPosition.bottom, animated: false)
                    }
                }
            }
        }
        
    }
    
    private func setupBubbleView() {
        view.addSubview(maskView)
        bubbleView.arrowPosition = CGPoint(x: 0.85, y: 0)
        let originalFrame = bubbleView.frame
        
        bubbleView.layer.anchorPoint = CGPoint(x: bubbleView.arrowPosition.x, y: 0)
        bubbleView.frame = originalFrame
        
        bubbleView.transform = CGAffineTransform(scaleX: 0, y: 0)
        self.view.addSubview(bubbleView)
    }
    
    @objc private func hideBubble() {
        self.maskView.isHidden = true
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.bubbleView.transform = CGAffineTransform(scaleX: 0, y: 0)
        }, completion: nil)
    }
    
    deinit{
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        
        if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ,let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double{
            let keyboardHeight = keyboardFrame.height
            self.bottomView.snp.updateConstraints { make in
                make.bottom.equalToSuperview().offset(-keyboardHeight)
            }
            UIView.animate(withDuration: duration) {
                self.view.layoutIfNeeded()
            }
            guard Conversssages.count > 0 else {return}
            UIView.performWithoutAnimation {
                self.tableView.scrollToRow(at: IndexPath(row: 0, section: self.Conversssages.count - 1), at: UITableView.ScrollPosition.bottom, animated: true)
            }
        }
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        
        if let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double{
            self.bottomView.snp.updateConstraints { make in
                make.bottom.equalToSuperview()
            }
            UIView.animate(withDuration: duration) {
                self.view.layoutIfNeeded()
            }
        }
    }
    
    func updataRobots(){
        if let m = robotModel {
            robotAvatar.mySetImage(obj: m.pic)
            robotName.text = m.nickname
            descLab.text = m.desc
        }
    }
    
}

extension ChchoiceDrivenr:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.Conversssages.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = Conversssages[indexPath.section]
        if model.direction == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChaLavatarPersonalization") as! ChaLavatarPersonalization
            if let m = self.robotModel {
                cell.avatarImg.mySetImage(obj: m.pic)
            }
            let model = Conversssages[indexPath.section]
            cell.model = model
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChvoiceCustomization") as! ChvoiceCustomization
            cell.message.text = model.messageContent
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.endEditing(true)
    }
}

extension ChchoiceDrivenr:UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        let size = inputTextView.sizeThatFits(CGSize(width: UIScreen.main.bounds.size.width - 84, height: CGFloat.greatestFiniteMagnitude))
        inputTextView.snp.updateConstraints { make in
            make.height.equalTo(size.height > 40 ? size.height : 40)
        }
        UIView.animate(withDuration: 0.25) {
            self.view.layoutIfNeeded()
        }
        
        inputPlaceHoder.isHidden = textView.text.count > 0
    }
}

extension ChchoiceDrivenr{
    
    func sendMesssage(){
        
        if let text = self.inputTextView.text ,text.count > 0,let rm = robotModel{
            var msg = MsituationalS()
            msg.messageContent = text
            msg.direction = 1
            msg.robotID = rm.robotId
            
            var Converdaession = CcontextSystem()
            Converdaession.robotID = rm.robotId
            Converdaession.name = rm.nickname
            Converdaession.avatar = rm.pic
            Converdaession.messageContent = text
            
            let realm = try! Realm()
            try! realm.write{
                realm.add(MsituationalSObject(model: msg))
                realm.add(CcontextSystemObject(model: Converdaession), update: .modified)
            }
            let lastIdx = self.Conversssages.count
            self.Conversssages.append(msg)
            
            UIView.performWithoutAnimation {
                self.tableView.insertSections(IndexSet(integer: lastIdx), with: UITableView.RowAnimation.automatic)
                DispatchQueue.main.async {
                    self.tableView.scrollToRow(at: IndexPath(row: 0, section: lastIdx), at: UITableView.ScrollPosition.bottom, animated: true)
                    self.sendQuestion(question: text)
                    self.inputTextView.text = nil
                    self.inputTextView.insertText("")
                }
            }
        }
    }
    
    func sendQuestion(question:String){
        let url = "http://bhj.jilinhuanbingculturemedia.com/talktwo/askQuestionv2"
        let params = ["qluteesatwiuojn".key:question,"qxufevsntgigownrToyrpze".key:1,"epqeNvo".key:"5e5k5f5".key] as [String : Any]
        AF.request(url, method: .post, parameters: params, encoding: JSONEncoding.default).validate().responseData { response in
            switch response.result {
            case .success(let data):
                if let dd = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) {
                    if let dic = dd as? [String:Any],let text = dic["data"] as? String,let rm = self.robotModel{
                        var msg = MsituationalS()
                        msg.messageContent = text
                        msg.direction = 0
                        msg.robotID = rm.robotId
                        
                        var converfaussion = CcontextSystem()
                        converfaussion.robotID = rm.robotId
                        converfaussion.name = rm.nickname
                        converfaussion.avatar = rm.pic
                        converfaussion.messageContent = text
                        if let uModel = UserInfoInstance.shared.haveRecovery {
                            converfaussion.local = uModel.userId
                        }
                
                        let realm = try! Realm()
                        try! realm.write{
                            realm.add(MsituationalSObject(model: msg))
                            realm.add(CcontextSystemObject(model: converfaussion), update: .modified)
                        }
                        let lastIdx = self.Conversssages.count
                        self.Conversssages.append(msg)
                        
                        UIView.performWithoutAnimation {
                            self.tableView.insertSections(IndexSet(integer: lastIdx), with: UITableView.RowAnimation.automatic)
                            DispatchQueue.main.async {
                                self.tableView.scrollToRow(at: IndexPath(row: 0, section: lastIdx), at: UITableView.ScrollPosition.bottom, animated: true)
                            }
                        }
                    }
                }
            break
            case .failure(_): break
                
            }
        }
    }
    
    func serverShare(){
        
        var itemsToShare: [Any] = []
        
        let urlToShare = URL(string: "hbtdtspesg:d/t/waxpwpl.dbhamobbyyccgnm.ccnobmb/".key)
        if let url = urlToShare {
            itemsToShare.append(url)
        }
        let activityViewController = UIActivityViewController(activityItems: itemsToShare, applicationActivities: nil)
        self.present(activityViewController, animated: true) {
            
        }
    }
}
