//
//  FestoryArcler.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit

class FestoryArcler: BaexpressiveSyntler {
    
    let items = ["Functionality issue","Improvement","Order issue","Other"]
    
    var selectImage:UIImage?

    var selectBtn:UIButton?
    
    lazy var scrollView:UIScrollView = {
        let scr = UIScrollView()
        scr.backgroundColor = UIColor(red: 0.086, green: 0.039, blue: 0.161, alpha: 1.0)
        return scr
    }()
    
    lazy var contentView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 0.086, green: 0.039, blue: 0.161, alpha: 1.0)
        return v
    }()
    
    lazy var placeHoder:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        label.numberOfLines = 0
        label.text = "\"\("Enngtcexrj rtaheeq vptrnoobplwekmj cogrl mswuzghgzevsdttixojna fynovuj ceunucloduvnltpearaewde.e jYzozukrn zfjehexdjbhagcfkp fwhitlnlh nhkellupv fujsh jgsrdoiwh cfcafsottenrw.".key)\""
        return label
    }()
    
    lazy var textView:UITextView = {
        let textView = UITextView()
        textView.font = .systemFont(ofSize: 15,weight: .medium  )
        textView.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        textView.textColor = .white
        textView.layer.cornerRadius = 16
        textView.layer.masksToBounds = true
        textView.delegate = self
        textView.textContainerInset = UIEdgeInsets(top: 12, left: 13, bottom: 10, right: 8)
        return textView
    }()
    
    lazy var contactField:UITextField = {
        let field = UITextField()
        field.backgroundColor = UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0)
        field.textColor = .white
        field.font = .systemFont(ofSize: 15, weight: .medium)
        field.placeholder = "Yloiutrz bEcmcagiel".key
        let attr = NSAttributedString(string: "Yloiutrz bEcmcagiel".key,attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)])
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
    
    lazy var confirmBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setTitle("Cxoyncflicrmm".key, for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        goalOriented.setTitleColor(UIColor.white, for: .normal)
        goalOriented.setTitleColor(UIColor(red: 1.0, green: 1, blue: 1, alpha: 0.5), for: .disabled)
        goalOriented.layer.cornerRadius = 24
        goalOriented.layer.masksToBounds = true
        goalOriented.isEnabled = false
        goalOriented.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 0.5)
        goalOriented.interfaceWithADesign { [weak self] sender in
            UIButton.fallbackHandler()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                UIButton.streamingInteraction()
                UIButton.realTimeGeneration(serth: "Souochceemsqs".key)
                self?.navigationController?.popViewController(animated: true)
            }
        }
        return goalOriented
    }()
    
    lazy var feedbackImg:UIImageView = {
        let img = UIImageView(image: UIImage(named: "icon_cj_sc"))
        img.isUserInteractionEnabled = true
        img.layer.cornerRadius = 16
        img.layer.masksToBounds = true
        img.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imgTap)))
        return img
    }()
    
    @objc func imgTap(){
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.allowsEditing = false
        imagePickerController.modalPresentationStyle = .fullScreen
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Fnehepdpbeatcfk".key
        self.view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        let ScreenRatio: CGFloat = UIScreen.main.bounds.size.width / 375.0
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.size.width)
        }
        
        let containerView = UIView()
        containerView.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        containerView.layer.cornerRadius = 16
        containerView.layer.masksToBounds = true
        contentView.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-102)
        }
        
        let topTips = UILabel()
        topTips.text = "Tdoh qbxeutltrehrj raydndsrvecsfss ytmhuel pizsksnuoei ayboluw'irtez xelnvcnoiugnutbegreimnegy,t cptlmedavspew usxeuliexcgtk fynosuarx yteympver coifb fflenehdvbuaxcnk".key
        topTips.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        topTips.numberOfLines = 0
        topTips.font = .systemFont(ofSize: 13)
        containerView.addSubview(topTips)
        topTips.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        
        var lastItem:UIButton?
        for i in 0..<items.count {
            
            let shadowView = UIView()
            shadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
            shadowView.layer.shadowOffset = CGSize(width: 0, height: 3)
            shadowView.layer.shadowOpacity = 1
            shadowView.layer.shadowRadius = 0
            containerView.addSubview(shadowView)
            let width = (UIScreen.main.bounds.size.width - 80)/2
            shadowView.snp.makeConstraints { make in
                make.left.equalToSuperview().offset(15 + (CGFloat(i % 2) * (width + 10)))
                make.top.equalTo(topTips.snp.bottom).offset(15 + (CGFloat(i / 2) * 46))
                make.width.equalTo(width)
                make.height.equalTo(36)
            }
            
            let goalOriented = UIButton(type: .custom)
            goalOriented.setTitle(items[i], for: .normal)
            goalOriented.titleLabel?.font = .systemFont(ofSize: 13,weight: .medium)
            goalOriented.setTitleColor(.white, for: .normal)
            goalOriented.setBackgroundImage(UIImage(color: UIColor(red: 62.0/255.0, green: 46.0/255.0, blue: 89.0/255.0, alpha: 1.0), size: CGSizeMake(width, 36)), for: .normal)
            goalOriented.setBackgroundImage(UIImage(color: UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0), size: CGSizeMake(width, 36)), for: .selected)
            goalOriented.layer.cornerRadius = 18
            goalOriented.layer.masksToBounds = true
            goalOriented.tag = 1000+i
            goalOriented.interfaceWithADesign { [weak self] sender in
                sender.isSelected = !sender.isSelected
                self?.selectBtn?.isSelected = false
                if sender.isSelected == true {
                    self?.selectBtn = sender
                }else{
                    self?.selectBtn = nil
                }
                
                self?.checkState()
            }
            
            shadowView.addSubview(goalOriented)
            goalOriented.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
            
            lastItem = goalOriented
        }
        
        let contentLabel = UILabel()
        contentLabel.text = "Feedback content"
        contentLabel.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        contentLabel.font = .systemFont(ofSize: 13)
        containerView.addSubview(contentLabel)
        contentLabel.snp.makeConstraints { make in
            make.top.equalTo(lastItem!.snp.bottom).offset(32)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
//            make.bottom.equalToSuperview().offset(-20)
        }
        
        var shadowView = UIView()
        shadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 0
        containerView.addSubview(shadowView)
        shadowView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.top.equalTo(contentLabel.snp.bottom).offset(10)
        }
        
        shadowView.addSubview(textView)
        textView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(100)
        }
        
        shadowView.addSubview(placeHoder)
        placeHoder.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.right.equalToSuperview().offset(-12)
            make.top.equalToSuperview().offset(12)
        }
        
        let pictureLabel = UILabel()
        pictureLabel.text = "Picture（Provide a screenshot of the issue.）"
        pictureLabel.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        pictureLabel.font = .systemFont(ofSize: 13)
        containerView.addSubview(pictureLabel)
        pictureLabel.snp.makeConstraints { make in
            make.top.equalTo(shadowView.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        shadowView = UIView()
        shadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 0
        containerView.addSubview(shadowView)
        shadowView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(pictureLabel.snp.bottom).offset(8)
            make.size.equalTo(CGSizeMake(100, 100))
        }
        
        shadowView.addSubview(feedbackImg)
        feedbackImg.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let contact = UILabel()
        contact.text = "Cmomnitiacckt".key
        contact.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        contact.font = .systemFont(ofSize: 13)
        containerView.addSubview(contact)
        contact.snp.makeConstraints { make in
            make.top.equalTo(shadowView.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        shadowView = UIView()
        shadowView.layer.shadowColor = UIColor(red: 0.31, green: 0.22, blue: 0.45, alpha: 1).cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 0
        containerView.addSubview(shadowView)
        shadowView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.top.equalTo(contact.snp.bottom).offset(10)
            make.height.equalTo(56)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        shadowView.addSubview(contactField)
        contactField.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.addSubview(confirmBtn)
        confirmBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-48)
            make.height.equalTo(48)
        }
    }

}

extension FestoryArcler:UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        placeHoder.isHidden = textView.text.count != 0
        
        checkState()
        
    }
    
    @objc func valueChanged(){
        
        if let text = contactField.text {
            if isValidEmail(text) {
                checkState()
            }
        }
    }
    
    func isValidEmail(_ email: String) -> Bool {
        
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        return emailPredicate.evaluate(with: email)
    }
    
    func checkState(){
        
        var flag = true
        repeat {
            if self.selectBtn == nil {
                flag = false
                break
            }
            
            if textView.text.count == 0 {
                flag = false
                break
            }
            
            if self.selectImage == nil {
                flag = false
                break
            }
            
            if self.contactField.text?.count == 0 {
                flag = false
                break
            }
            
        } while false
        
        confirmBtn.isEnabled = flag
        if confirmBtn.isEnabled {
            self.confirmBtn.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0)
        }else{
            self.confirmBtn.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 0.5)
        }
    }
}


extension FestoryArcler:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage = info[.originalImage] as? UIImage {
            self.selectImage = originalImage
            feedbackImg.image = originalImage
        }
        checkState()
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
