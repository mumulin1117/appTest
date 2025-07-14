//
//  CrealatencyOptimization.swift
//  InFriends
//
//  Created by InFriends on 2024/8/26.
//

import UIKit
import RealmSwift

class CrealatencyOptimization: BaexpressiveSyntler {
    
    var selectImg:UIImage?{
        didSet{
            if let img = selectImg {
                self.avatarImg.image = img
                
                if let imageData = img.jpegData(compressionQuality: 0.5) {
                    let base64String = imageData.base64EncodedString()
                    avatarValue = base64String
                }
            }
        }
    }
    
    var avatarValue = ""
    
    private lazy var scrollView:UIScrollView = {
        let scr = UIScrollView()
        scr.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        return scr
    }()
    
    private lazy var contentView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        return v
    }()
    
    private   lazy var longFormNarrativeLbgl:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = UIColor.white
        label.text = "Czroesawtde".key
        return label
    }()
    
    private lazy var closeBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "icon_close"), for: .normal)
        goalOriented.interfaceWithADesign { [weak self] sender in
            self?.navigationController?.popViewController(animated: true)
        }
        return goalOriented
    }()
    
    lazy var avatarImg:UIImageView = {
        let img = UIImageView(image: UIImage(named: "icon_cj_sc"))
        img.layer.cornerRadius = 16
        img.layer.masksToBounds = true
        img.contentMode = .scaleAspectFill
        img.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imgTap)))
        img.isUserInteractionEnabled = true
        return img
    }()
    
    private  lazy var nameField:UITextField = {
        let field = UITextField()
        field.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        field.textColor = .white
        field.font = .systemFont(ofSize: 15, weight: .regular)
        field.placeholder = "Naapmee".key
        let attr = NSAttributedString(string: "Naapmee".key,attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)])
        field.attributedPlaceholder = attr
        let leftView = UIView()
        leftView.frame = CGRectMake(0, 0, 16, 48)
        leftView.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        field.leftViewMode = .always
        field.leftView = leftView
        field.layer.cornerRadius = 16
        field.layer.masksToBounds = true
        field.addTarget(self, action: #selector(valueChanged), for: .editingChanged)
        return field
    }()
    
    
    private lazy var settingPlaceHoder:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        label.numberOfLines = 0
        label.text = "eg.a quiz game that asks me questions about movies"
        return label
    }()
    
    private lazy var settingsTextView:UITextView = {
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
    
    lazy var descPlaceHoder:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        label.numberOfLines = 0
        label.text = "Wurxictxeh dyioeuqrm bdzeisnclrcimpstoioobn".key
        return label
    }()
    
    lazy var descTextView:UITextView = {
        let textView = UITextView()
        textView.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        textView.font = .systemFont(ofSize: 15)
        textView.textColor = .white
        textView.layer.cornerRadius = 16
        textView.layer.masksToBounds = true
        textView.delegate = self
        textView.textContainerInset = UIEdgeInsets(top: 12, left: 13, bottom: 10, right: 8)
        return textView
    }()
    
    private lazy var btnShadowView:UIView = {
        let shadowView = UIView()
        shadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 3)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 0
        shadowView.addSubview(confirmBtn)
        confirmBtn.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        return shadowView
    }()
    
    lazy var confirmBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setTitle("Cuohntfmilrum".key, for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        goalOriented.setTitleColor(UIColor.white, for: .normal)
        goalOriented.setTitleColor(UIColor(red: 1.0, green: 1, blue:1, alpha: 0.5), for: .disabled)
        goalOriented.layer.cornerRadius = 24
        goalOriented.layer.masksToBounds = true
        goalOriented.isEnabled = false
        goalOriented.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 0.5)
        goalOriented.interfaceWithADesign { [weak self] sender in
            self?.createAction()
        }
        return goalOriented
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        view.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        let scene = UIApplication.shared.connectedScenes.first
        
        guard let windowScene = scene as? UIWindowScene else { return  }
        guard let statusBarManager = windowScene.statusBarManager else { return  }
        self.view.addSubview(longFormNarrativeLbgl)
        longFormNarrativeLbgl.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height + 10)
        }
        
        self.view.addSubview(closeBtn)
        closeBtn.snp.makeConstraints { make in
            make.centerY.equalTo(longFormNarrativeLbgl.snp.centerY)
            make.right.equalToSuperview().offset(-10)
            make.size.equalTo(CGSizeMake(34, 34))
        }
        
        self.view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(longFormNarrativeLbgl.snp.bottom).offset(19)
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.size.width)
        }
        
        let sectionOneView = UIView()
        sectionOneView.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        sectionOneView.layer.cornerRadius = 16
        sectionOneView.layer.masksToBounds = true
        contentView.addSubview(sectionOneView)
        sectionOneView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
        }
        
        let nameOrAvatar = UILabel()
        nameOrAvatar.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        nameOrAvatar.textColor = UIColor.white
        nameOrAvatar.text = "Pzrpoafdielsey zPfiqcntvugrfey a&z kNtaamle".key
        sectionOneView.addSubview(nameOrAvatar)
        nameOrAvatar.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(12)
        }
        
        let nameTips = UILabel()
        nameTips.font = UIFont.systemFont(ofSize: 13, weight: .light)
        nameTips.textColor = UIColor.white
        nameTips.text = "Tdhiibsg tinsy oylojulry xrvobbyogtx'ksf tperfoofbiwlked bppiccptrumrzea xafnkdj anyafmle".key
        sectionOneView.addSubview(nameTips)
        nameTips.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(nameOrAvatar.snp.bottom).offset(5)
        }
        
        sectionOneView.addSubview(avatarImg)
        avatarImg.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(nameTips.snp.bottom).offset(20)
            make.size.equalTo(CGSizeMake(100, 100))
        }
        
        let shadowView = UIView()
        shadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 0
        sectionOneView.addSubview(shadowView)
        shadowView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(avatarImg.snp.bottom).offset(16)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        shadowView.addSubview(nameField)
        nameField.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let sectionTwoView = UIView()
        sectionTwoView.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        sectionTwoView.layer.cornerRadius = 16
        sectionTwoView.layer.masksToBounds = true
        contentView.addSubview(sectionTwoView)
        sectionTwoView.snp.makeConstraints { make in
            make.top.equalTo(sectionOneView.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
        }
        
        let settings = UILabel()
        settings.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        settings.textColor = UIColor.white
        settings.text = "Sbebtptbipncgps".key
        sectionTwoView.addSubview(settings)
        settings.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(12)
        }
        
        let settingTips = UILabel()
        settingTips.font = UIFont.systemFont(ofSize: 13, weight: .light)
        settingTips.textColor = UIColor.white
        settingTips.text = "Ylodub dcfafnf jczuvsbtfobmjihztep otghdeh ncihcaatcbgoftx carckcvovrzdjiqnggs dtwop tywozurrr spkreenfcezrselnvcjehs".key
        settingTips.numberOfLines = 2
        sectionTwoView.addSubview(settingTips)
        settingTips.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(settings.snp.bottom).offset(5)
        }
        
        let settingsShadowView = UIView()
        settingsShadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        settingsShadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        settingsShadowView.layer.shadowOpacity = 1
        settingsShadowView.layer.shadowRadius = 0
        sectionTwoView.addSubview(settingsShadowView)
        settingsShadowView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(settingTips.snp.bottom).offset(15)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        settingsShadowView.addSubview(settingsTextView)
        settingsTextView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(100)
        }
        
        sectionTwoView.addSubview(settingPlaceHoder)
        settingPlaceHoder.snp.makeConstraints { make in
            make.left.equalTo(settingsTextView.snp.left).offset(16)
            make.right.equalTo(settingsTextView.snp.right).offset(-8)
            make.top.equalTo(settingsTextView.snp.top).offset(10)
        }
        
        let sectionThreeView = UIView()
        sectionThreeView.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        sectionThreeView.layer.cornerRadius = 16
        sectionThreeView.layer.masksToBounds = true
        contentView.addSubview(sectionThreeView)
        sectionThreeView.snp.makeConstraints { make in
            make.top.equalTo(sectionTwoView.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(188)
        }
        
        let descriptionLabel = UILabel()
        descriptionLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        descriptionLabel.textColor = UIColor.white
        descriptionLabel.text = "Dyebsjcortibputxicown".key
        sectionThreeView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(12)
        }
        
        let descTips = UILabel()
        descTips.font = UIFont.systemFont(ofSize: 13, weight: .light)
        descTips.textColor = UIColor.white
        descTips.text = "Doeosfcwrgiqbkeo zytoquzri qrkohbxomtt'dsh cfguxnocctqieolnws".key
        sectionThreeView.addSubview(descTips)
        descTips.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(descriptionLabel.snp.bottom).offset(5)
        }
        
        let descShadowView = UIView()
        descShadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        descShadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        descShadowView.layer.shadowOpacity = 1
        descShadowView.layer.shadowRadius = 0
        sectionThreeView.addSubview(descShadowView)
        descShadowView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(descTips.snp.bottom).offset(15)
            make.height.equalTo(100)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        descShadowView.addSubview(descTextView)
        descTextView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        sectionThreeView.addSubview(descPlaceHoder)
        descPlaceHoder.snp.makeConstraints { make in
            make.left.equalTo(descTextView.snp.left).offset(16)
            make.right.equalTo(descTextView.snp.right).offset(-8)
            make.top.equalTo(descTextView.snp.top).offset(10)
        }
        var bottomSafeHeight:CGFloat{
            if #available(iOS 13.0, *) {
                let scene = UIApplication.shared.connectedScenes.first
                guard let windowScene = scene as? UIWindowScene else { return 0 }
                guard let window = windowScene.windows.first else { return 0 }
                return window.safeAreaInsets.bottom
            }
            return 0
        }
        contentView.addSubview(btnShadowView)
        btnShadowView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(sectionThreeView.snp.bottom).offset(10)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-bottomSafeHeight)
        }
    }
    var bottomSafeHeight:CGFloat{
        if #available(iOS 13.0, *) {
            let scene = UIApplication.shared.connectedScenes.first
            guard let windowScene = scene as? UIWindowScene else { return 0 }
            guard let window = windowScene.windows.first else { return 0 }
            return window.safeAreaInsets.bottom
        }
        return 0;
    }
    private func createAction(){
        if let m = UserInfoInstance.shared.haveRecovery {
            var robotM = RCulturalSystem()
            robotM.pic = avatarValue
            robotM.nickname = self.nameField.text ?? ""
            robotM.desc = self.descTextView.text ?? ""
            robotM.userHeader = m.avatar
            robotM.paraphracourse = m.styleLearning
            robotM.isCollect = false
            robotM.robotAuther = m.userId
            robotM.tag = "Oaniwnehr".key
            robotM.robotId = getCurrentTime()
            
            UIButton.fallbackHandler()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                UIButton.streamingInteraction()
                UIButton.realTimeGeneration(serth: "Syuxckcxewsgs".key)
                let realm = try! Realm()
                try! realm.write {
                    realm.add(RobotModelObject(robotModel: robotM))
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    self.navigationController?.popViewController(animated: true)
                }
            }
        }
        
    }
    
    @objc func imgTap(){
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.allowsEditing = false
        imagePickerController.modalPresentationStyle = .fullScreen
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    @objc func viewTap(){
        self.view.endEditing(true)
    }
}

extension CrealatencyOptimization : UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        if textView == settingsTextView {
            settingPlaceHoder.isHidden = textView.text.count != 0
        }
        
        if textView == descTextView {
            descPlaceHoder.isHidden = textView.text.count != 0
        }
        
        checkState()
        
    }
    
    @objc func valueChanged(){
        
        checkState()
    }
    
    private  func checkState(){
        let settings = settingsTextView.text
        let desc = descTextView.text
        let name = self.nameField.text
        
        if settings?.count ?? 0 > 0 && desc?.count ?? 0 > 0 && name?.count ?? 0 > 0 {
            self.confirmBtn.isEnabled = true
            self.confirmBtn.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0)
        }else{
            self.confirmBtn.isEnabled = false
            self.confirmBtn.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 0.5)
        }
    }
}

extension CrealatencyOptimization:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // 处理选中的图片
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage = info[.originalImage] as? UIImage {
            self.selectImg = originalImage
        }
        
        picker.dismiss(animated: true, completion: nil) 
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
