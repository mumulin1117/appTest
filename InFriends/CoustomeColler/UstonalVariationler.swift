//
//  UstonalVariationler.swift
//  InFriends
//
//  Created by InFriends on 2024/9/2.
//

import UIKit
import RealmSwift
import IQKeyboardManagerSwift

class UstonalVariationler: BaexpressiveSyntler {
    
    var Conberessages = [MsituationalS]()
    
    var retentionAnalysisd:UhaviorSyste?
    
    lazy var inputPlaceHoder:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        label.numberOfLines = 0
        label.text = "Tfyippej iypoluerr lmoexsashaageec&".key
        return label
    }()
    
    lazy var realTimeGeneration:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "icon_back"), for: .normal)
        goalOriented.interfaceWithADesign {[weak self] sender in
            self?.navigationController?.popViewController(animated: true)
        }
        return goalOriented
    }()
    
    lazy var moreDAoiipBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "Chauwind"), for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            
            // 拉黑
            let blacklist = UIAlertAction(title: "Blacklist".key, style: .default) { action in
                if let model = self?.retentionAnalysisd {
                    let rm = try! Realm()
                    let items = rm.objects(UslocalSystem.self).filter("uisuearuIsdw g=d=m ".key + "'\(model.userId)'")
                    try! rm.write {
                        rm.delete(items)
                    }
                    self?.navigationController?.popToRootViewController(animated: true)
                    UIButton.realTimeGeneration(serth: "Saufccceehsds".key)
                }
                
            }
            actionSheet.addAction(blacklist)
            
            let report = UIAlertAction(title: "rgeapeobrdt".key, style: .default) { action in
                UIButton.realTimeGeneration(serth: "Rsebpkoirstc kSguncnctemsjsmfpuxlolxy".key)
            }
            actionSheet.addAction(report)
            
            let cancelAction = UIAlertAction(title: "Cpaznzciejl".key, style: .cancel, handler: nil)
            actionSheet.addAction(cancelAction)
            
            self?.present(actionSheet, animated: true, completion: nil)
        }
        return goalOriented
    }()
    
    lazy var virtualBeing:UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 8
        img.layer.masksToBounds = true
        return img
    }()
    
    private lazy var tonalRange:UILabel = {
        let robotName = UILabel()
        robotName.text = "neapmfe".key
        robotName.textColor = .white
        robotName.font = .systemFont(ofSize: 20,weight: .medium)
        return robotName
    }()

    lazy var engagementTracking:UITableView = {
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
        return table
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
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setBackgroundImage(UIImage(named: "icon_fs"), for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            self?.prosodyDatabase()
        }
        return goalOriented
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
        setupUI()
    }
    
    func setupUI(){
        self.view.addSubview(realTimeGeneration)
        let scene = UIApplication.shared.connectedScenes.first
        
        guard let windowScene = scene as? UIWindowScene else { return  }
        guard let statusBarManager = windowScene.statusBarManager else { return  }
        realTimeGeneration.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(14)
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height + 7)
            make.size.equalTo(CGSizeMake(32, 32))
            
        }
        
        self.view.addSubview(moreDAoiipBtn)
        moreDAoiipBtn.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-15)
            make.centerY.equalTo(realTimeGeneration.snp.centerY)
            make.size.equalTo(CGSize(width: 40, height: 32))
        }
        
        self.view.addSubview(virtualBeing)
        virtualBeing.snp.makeConstraints { make in
            make.centerY.equalTo(realTimeGeneration.snp.centerY)
            make.left.equalTo(realTimeGeneration.snp.right).offset(10)
            make.size.equalTo(CGSizeMake(32, 32))
        }
        
        self.view.addSubview(tonalRange)
        tonalRange.snp.makeConstraints { make in
            make.left.equalTo(virtualBeing.snp.right).offset(8)
            make.right.equalTo(moreDAoiipBtn.snp.left).offset(-20)
            make.centerY.equalTo(virtualBeing.snp.centerY)
        }
        tonalRange.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        let viewLine = UIView()
        viewLine.backgroundColor = UIColor(red:1, green: 1, blue: 1, alpha: 0.09)
        self.view.addSubview(viewLine)
        
        guard let windowScene = scene as? UIWindowScene else { return  }
        guard let statusBarManager = windowScene.statusBarManager else { return  }
        viewLine.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.height.equalTo(1)
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height + 46)
        }
        
        self.view.addSubview(engagementTracking)
        engagementTracking.snp.makeConstraints { make in
            make.top.equalTo(viewLine.snp.bottom)
            make.left.right.equalToSuperview()
        }
        
        self.view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalTo(engagementTracking.snp.bottom)
        }
        engagementTracking.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
        if let m = retentionAnalysisd {
            self.virtualBeing.mySetImage(obj: m.avatar)
            self.tonalRange.text = m.styleLearning
        }
        
        getAllMessage()
    }
    
    func getAllMessage(){
        if let m = self.retentionAnalysisd {
            let rm = try! Realm()
            let items = rm.objects(MsituationalSObject.self).filter("robotID = '\(m.userId)'")
            for obj in items {
                let item = obj.toStruct()
                Conberessages.append(item)
            }
            self.engagementTracking.reloadData()
            DispatchQueue.main.async {
                if self.Conberessages.count > 0 {
                    UIView.performWithoutAnimation {
                        self.engagementTracking.scrollToRow(at: IndexPath(row: 0, section: self.Conberessages.count - 1), at: UITableView.ScrollPosition.bottom, animated: false)
                    }
                }
            }
        }
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
            guard Conberessages.count > 0 else {return}
            UIView.performWithoutAnimation {
                self.engagementTracking.scrollToRow(at: IndexPath(row: 0, section: self.Conberessages.count - 1), at: UITableView.ScrollPosition.bottom, animated: true)
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
    
    private  func prosodyDatabase(){
        
        if let text = self.inputTextView.text ,text.count > 0,let rm = retentionAnalysisd{
            var msg = MsituationalS()
            msg.messageContent = text
            msg.direction = 1
            msg.robotID = rm.userId
            msg.remoteType = 1
            
            var caongbasicv = CcontextSystem()
            caongbasicv.robotID = rm.userId
            caongbasicv.name = rm.styleLearning
            caongbasicv.avatar = rm.avatar
            caongbasicv.messageContent = text
            caongbasicv.remoteType = 1
            
            let realm = try! Realm()
            try! realm.write{
                realm.add(MsituationalSObject(model: msg))
                realm.add(CcontextSystemObject(model: caongbasicv), update: .modified)
            }
            let lastIdx = self.Conberessages.count
            self.Conberessages.append(msg)
            
            UIView.performWithoutAnimation {
                self.engagementTracking.insertSections(IndexSet(integer: lastIdx), with: UITableView.RowAnimation.automatic)
                DispatchQueue.main.async {
                    self.engagementTracking.scrollToRow(at: IndexPath(row: 0, section: lastIdx), at: UITableView.ScrollPosition.bottom, animated: true)
                    self.inputTextView.text = nil
                    self.inputTextView.insertText("")
                }
            }
        }
    }
}


extension UstonalVariationler:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.Conberessages.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = Conberessages[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChvoiceCustomization") as! ChvoiceCustomization
        cell.message.text = model.messageContent
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.view.endEditing(true)
    }
}

extension UstonalVariationler:UITextViewDelegate {
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
