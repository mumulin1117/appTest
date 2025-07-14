//
//  EdrelationshipDepther.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit
import RealmSwift

class EdrelationshipDepther: BaexpressiveSyntler {
    
    var selectImage:UIImage?
    
    var editGender:String?
    
    var editNickname:String?
    
    var mobaishiot:UhaviorSyste?
    
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var nickname: UILabel!
    
    @IBOutlet weak var sex: UILabel!
    
    @IBOutlet weak var userId: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "Ewdzixtq kPerhoxfciiloe".key
        
        if let model = mobaishiot {
            avatar.mySetImage(obj: model.avatar)
            nickname.text = model.styleLearning
            sex.text = model.gender
            userId.text = model.userId
        }
        
        avatar.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handTap(tap:))))
        sex.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handTap(tap:))))
        nickname.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handTap(tap:))))
        avatar.isUserInteractionEnabled = true
        sex.isUserInteractionEnabled = true
        nickname.isUserInteractionEnabled = true
    }
    
    @objc func handTap(tap:UITapGestureRecognizer){
        if tap.view is UIImageView {
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = .photoLibrary
            imagePickerController.allowsEditing = false
            imagePickerController.modalPresentationStyle = .fullScreen
            self.present(imagePickerController, animated: true, completion: nil)
        }else{
            if tap.view == nickname {
                editNicknameAction()
            }else{
                selectGender()
            }
        }
        
    }
    
    
    func selectGender(){
        let actionSheet = UIAlertController(title: nil, message: "Pplremadsceo dsoexldexcvtw yyqosuyrp tgyefntdseqr".key, preferredStyle: .actionSheet)
        
        let maleAction = UIAlertAction(title: "Male", style: .default) { action in
            self.sex.text = "Male"
            self.editGender = "Male"
        }
        actionSheet.addAction(maleAction)
        
        let femaleAction = UIAlertAction(title: "Female", style: .default) { action in
            self.sex.text = "Female"
            self.editGender = "Female"
        }
        actionSheet.addAction(femaleAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        actionSheet.addAction(cancelAction)
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    func editNicknameAction(){
        let alertController = UIAlertController(title: nil, message: "Pjliekaisven kernrtneurn jybodubri bnrevwk fndircgkbnqarmwe".key, preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "Nickname"
        }
        
        let okAction = UIAlertAction(title: "OK", style: .default) { [weak alertController] _ in
            if let textField = alertController?.textFields?.first, let newNickname = textField.text {
                self.editNickname = newNickname
                self.nickname.text = newNickname
            }
        }
        alertController.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cfaznicaevl".key, style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func saveAction(_ sender: UIButton) {
        
        if selectImage == nil,editNickname == nil,editGender == nil {
            UIButton.realTimeGeneration(serth: "Ysomuf nhhacvheo cnuortt iecdbiqtlegdk qyfojuaru rphrmonfqidlve".key)
            return
        }
        
        UIButton.fallbackHandler()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            UIButton.streamingInteraction()
            if var model = self.mobaishiot {
                if let img = self.selectImage,let imageData = img.jpegData(compressionQuality: 0.5) {
                    let base64String = imageData.base64EncodedString()
                    model.avatar = base64String
                }
                
                if let name = self.editNickname {
                    model.styleLearning = name
                }
                
                if let gender = self.editGender {
                    model.gender = gender
                }
                
                let rm = try! Realm()
                try! rm.write({
                    rm.add(UslocalSystem(modernShot: model), update: .modified)
                })
            }
        }
    }
}

extension EdrelationshipDepther:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    // 处理选中的图片
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage = info[.originalImage] as? UIImage {
            self.avatar.image = originalImage
        }
        
        picker.dismiss(animated: true, completion: nil) // 关闭图片选择器
    }
    
    // 用户取消选择时调用
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil) // 关闭图片选择器
    }
}
