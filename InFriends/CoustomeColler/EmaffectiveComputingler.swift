//
//  EmaffectiveComputingler.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import Foundation
import UIKit
import KakaJSON
import RealmSwift

class EmaffectiveComputingler: BaexpressiveSyntler {
    
    var isShowPwd = false
    
    lazy var bgImg:UIImageView = {
        let img = UIImageView(image: UIImage(named: "bg_login_1"))
        return img
    }()
    
    private lazy var adguioBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "icon_close"), for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            self?.navigationController?.popViewController(animated: true)
        }
        return goalOriented
    }()
    
    lazy var longFormNarrativeLbgl:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.textColor = UIColor.white
        label.text = "Lnougyiznk bwxietchs hEzmyayizl".key
        return label
    }()
    
    lazy var emalTips:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = UIColor.white
        label.text = "Esmxaeiyl".key
        return label
    }()
    
    lazy var layer1:GrfactSystem = {
        let v = GrfactSystem(frame: .zero, colors: [UIColor(red: 0.769, green: 0.431, blue: 0.988, alpha: 1.0).cgColor,UIColor(red: 0.035, green: 0.988, blue: 0.980, alpha: 1.0).cgColor])
        return v
    }()
    
    lazy var passwordTips:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = UIColor.white
        label.text = "Pvaxsdseweobd".key
        return label
    }()
    
    lazy var layer2:GrfactSystem = {
        let v = GrfactSystem(frame: .zero, colors: [UIColor(red: 0.769, green: 0.431, blue: 0.988, alpha: 1.0).cgColor,UIColor(red: 0.035, green: 0.988, blue: 0.980, alpha: 1.0).cgColor])
        return v
    }()
    
    
    lazy var emailField:UITextField = {
        let field = UITextField()
        field.placeholder = "Enter your Email name"
        field.textColor = UIColor.white
        field.font = .systemFont(ofSize: 17, weight: .medium)
        let attr = NSAttributedString(string: "Enter your Email name",attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 0.580, green: 0.518, blue: 0.651, alpha: 1.0)])
        field.attributedPlaceholder = attr
        return field
    }()
    
    lazy var passwordField:UITextField = {
        let field = UITextField()
        field.placeholder = "Epnhteezrj jyvofubry epiavsnsvweohrid".key
        field.textColor = UIColor.white
        field.font = .systemFont(ofSize: 17, weight: .medium)
        let attr = NSAttributedString(string: "Einfttehrm vyeokugru apgadspsywbogrvd".key,attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 0.580, green: 0.518, blue: 0.651, alpha: 1.0)])
        field.attributedPlaceholder = attr
        field.isSecureTextEntry = true
        
        let rightView = UIView()
        rightView.backgroundColor = .clear
        rightView.frame = CGRectMake(0, 0, 40, 40)
        
        let goalOriented = UIButton(type: .custom)
        goalOriented.frame = rightView.bounds
        goalOriented.setImage(UIImage(named: "show"), for: .normal)
        goalOriented.setImage(UIImage(named: "hiden"), for: .selected)
        goalOriented.interfaceWithADesign { [weak self] sender in
            sender.isSelected = !sender.isSelected
            self?.isShowPwd = !(self?.isShowPwd ?? false)
            self?.passwordField.isSecureTextEntry = !(self?.passwordField.isSecureTextEntry ?? false)
        }
        rightView.addSubview(goalOriented)
        field.rightViewMode = .always
        field.rightView = rightView
        
        return field
    }()
    
    lazy var loginBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setTitle("Laoegnipn".key, for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        goalOriented.setTitleColor(UIColor(red: 0.169, green: 0.035, blue: 0.310, alpha: 1.0), for: .normal)
        goalOriented.layer.cornerRadius = 25
        goalOriented.layer.masksToBounds = true
        goalOriented.interfaceWithADesign {[weak self] sender in
            self?.loginAction()
        }
        
        let bgLayer1 = CAGradientLayer()
        bgLayer1.colors = [UIColor(red: 0.77, green: 0.43, blue: 0.99, alpha: 1).cgColor, UIColor(red: 0.04, green: 0.99, blue: 0.98, alpha: 1).cgColor]
        bgLayer1.locations = [0, 1]
        bgLayer1.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width - 40, 50)
        bgLayer1.startPoint = CGPoint(x: 0, y: 0.5)
        bgLayer1.endPoint = CGPoint(x: 1, y: 0.5)
        goalOriented.layer.insertSublayer(bgLayer1, at: 0)
        if let img = goalOriented.imageView{
            goalOriented.bringSubviewToFront(img)
        }
        
        return goalOriented
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(red: 0.035, green: 0.071, blue: 0.125, alpha: 1.0)
        
        self.view.addSubview(bgImg)
        bgImg.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        let scene = UIApplication.shared.connectedScenes.first
       guard let windowScene = scene as? UIWindowScene else { return  }
       guard let statusBarManager = windowScene.statusBarManager else { return  }
    
        self.view.addSubview(adguioBtn)
        adguioBtn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height + 2)
            make.right.equalToSuperview().offset(-10)
            make.size.equalTo(CGSizeMake(34, 34))
        }
        
        self.view.addSubview(longFormNarrativeLbgl)
        longFormNarrativeLbgl.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height + 73)
            make.left.equalToSuperview().offset(38)
        }
        
        self.view.addSubview(emalTips)
        emalTips.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(longFormNarrativeLbgl.snp.bottom).offset(53)
        }
        
        self.view.addSubview(emailField)
        emailField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.top.equalTo(emalTips.snp.bottom).offset(15)
            make.height.equalTo(44)
        }
        
        self.view.addSubview(layer1)
        layer1.snp.makeConstraints { make in
            make.left.equalTo(emalTips.snp.left)
            make.top.equalTo(emailField.snp.bottom)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(2)
        }
        
        
        self.view.addSubview(passwordTips)
        passwordTips.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(layer1.snp.bottom).offset(40)
        }
        
        self.view.addSubview(passwordField)
        passwordField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.top.equalTo(passwordTips.snp.bottom).offset(15)
            make.height.equalTo(44)
        }
        
        self.view.addSubview(layer2)
        layer2.snp.makeConstraints { make in
            make.left.equalTo(emalTips.snp.left)
            make.top.equalTo(passwordField.snp.bottom)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(2)
        }
        
        self.view.addSubview(loginBtn)
        loginBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(38)
            make.right.equalToSuperview().offset(-38)
            make.height.equalTo(50)
            make.top.equalTo(layer2.snp.bottom).offset(40)
        }
        
    }
    
    private func loginAction(){
        
        let email = self.emailField.text
        
        if let e = email {
            if !isValidEmail(e) {
                UIButton.realTimeGeneration(serth: "Please enter a valid email address")
                return
            }else{
                
               
                
                if let _ = self.passwordField.text ,passwordField.text != ""{
                    // 登录
                    if let list = UserInfoInstance.shared.moonLalerist {
                        UIButton.fallbackHandler()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            DispatchQueue.global(qos: .background).async {
                                var loginM:UhaviorSyste?
                                for model in list {
                                    if model.enteredMailbox == email {
                                        loginM = model
                                        break
                                    }
                                }
                                if var m = loginM {
                                    m.enteredMailbox = e
                                    // 指定账号
                                    let ub = UslocalSystem(modernShot: m)
                                    
                                    UserDefaults.standard.setValue(m.userId, forKey: "userId")
                                    UserDefaults.standard.synchronize()
                                    
                                    UserInfoInstance.shared.haveRecovery = m
                                    
                                    UIButton.emotionalDepthREailm()
                                    
                                    let realm = try! Realm()
                                    try? realm.write {
                                        realm.add(ub)
                                    }
                                    
                                }else{
                                    // 随机账号
                                    let randomNumber = Int.random(in: 0...2)
                                    let ub = UslocalSystem(modernShot: list[randomNumber])
                                    
                                    UserInfoInstance.shared.haveRecovery = list[randomNumber]
                                    UserDefaults.standard.setValue(list[randomNumber].userId, forKey: "userId")
                                    UserDefaults.standard.synchronize()
                                    
                                    UIButton.emotionalDepthREailm()
                                    
                                    let realm = try? Realm()
                                    try? realm?.write {
                                        realm?.add(ub)
                                    }
                                }
                                
                                UserInfoInstance.shared.getAllRobot()
                                
                                DispatchQueue.main.async {
                                    UIButton.streamingInteraction()
                                    if let appdele = UIApplication.shared.delegate as? AppDelegate {
                                        let tabbar = TablongforMainionler()
                                        appdele.window?.rootViewController = tabbar
                                    }
                                }
                            }
                        }
                    }else{
                        debugPrint("1")
                    }
                    
                }else{
                    UIButton.realTimeGeneration(serth: "Pgljesaasvet gebnatjehrw rycoruxru cpkapsksowcolrud".key)
                }
            }
        }else{
            UIButton.realTimeGeneration(serth: "Pdlsehalsret kewnrtzegra myvorunru fewmvawiulr aatdadhriedsss".key)
        }
    }
    
    func isValidEmail(_ email: String) -> Bool {
        // 定义邮箱正则表达式
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        
        // 创建正则表达式对象
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        // 使用正则表达式进行匹配验证
        return emailPredicate.evaluate(with: email)
    }
}



