//
//  DSORAiCreateFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/10.
//

import UIKit
import Toast_Swift
class DSORAiCreateFairyTale: UIViewController ,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var typeAvatorDSOR: UIImageView!
    
    
    @IBOutlet weak var robertDSORICon: UIButton!
    
    @IBOutlet weak var AIINfoSure: UIButton!
    
    @IBOutlet weak var eoberanmeDSOR: UITextField!
    
    @IBOutlet weak var eoberDsccibDSOR: UITextField!
    
    
    
    @IBOutlet weak var tyoingRobert0: UIButton!
    @IBOutlet weak var tyoingRobert1: UIButton!
    @IBOutlet weak var tyoingRobert2: UIButton!
    @IBOutlet weak var tyoingRobert3: UIButton!
    
    var ARTimageDSOR:UIImage?
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()



    private func changeDPudingDESORScene(_ sender: UISegmentedControl,ifaddDSOR:Bool) {
        switch sender.selectedSegmentIndex {
        case 0:
            selSceneDSOR = "Dreamy DSOR Opera House"
        case 1:
            selSceneDSOR = "Mysterious Forest  DSOR Opera House"
        case 2:
            selSceneDSOR = "Luxurious Classical DSOR Opera House"
        default:
            break
        }
        
        sceneDSORLbel.text = "current scene: \(selSceneDSOR)" 
        
        chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)" 
        if ifaddDSOR {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = ifaddDSOR
            sceneDSORLbel.isHidden = ifaddDSOR
            haraInputDSORField.isHidden = ifaddDSOR
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        
    }


    private func engageWithChatbot(description: String,colowerDSOR:UIColor) {
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = colowerDSOR
        sceneDSORLbel.textColor = colowerDSOR
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = colowerDSOR
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
    }


    private   func shareStoryWithFriends(ifShareDSOR:Bool) {
           
        guard let story = chatTeViDSOR.text, !story.isEmpty else {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("There are no stories to share", duration: 2.0,position: .center, image: UIImage(named: ""),style: toaststyyleDSOR)
            return
        }
        
        
        if ifShareDSOR {
            let activityVC = UIActivityViewController(activityItems: [story], applicationActivities: nil)
            present(activityVC, animated: true, completion: nil) // 打开分享对话框
        }
           
      
    }

    var cerateTypeDSOR:Int
    init(cerateTypeDSOR: Int,_ ARTimageDSOR:UIImage?) {
        self.ARTimageDSOR = ARTimageDSOR
        self.cerateTypeDSOR = cerateTypeDSOR
        super.init(nibName: nil, bundle: nil)
    }
    
    var recordDSORImg:UIImage?
    var ifPickONeType:Bool = false
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func nextstepSEtupDSOR(_ sender: Any) {
        if recordDSORImg == nil {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("The created robot avatar has not been added yet", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            
            return
        }
        
        
        if eoberanmeDSOR.text == nil || eoberanmeDSOR.text?.count == 0{
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("The name of the created robot has not been added yet", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            
            return
        }
        
        
        if eoberDsccibDSOR.text == nil || eoberDsccibDSOR.text?.count == 0{
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("The description of the created robot has not been added yet", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            return
        }
        
        
        if ifPickONeType == false{
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("The robot type has not been set yet", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            
            return
        }
        
        self.navigationController?.pushViewController(DSORSureAIMonryCreateFairyTale.init(cerateTypeDSOR: self.cerateTypeDSOR), animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AIINfoSure.layer.cornerRadius = 8
        AIINfoSure.layer.masksToBounds = true
        if self.view.isHidden  {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = self.view.isHidden
            sceneDSORLbel.isHidden = self.view.isHidden
            haraInputDSORField.isHidden = self.view.isHidden
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        if cerateTypeDSOR == 1 {//ART
            typeAvatorDSOR.image = UIImage(named: "qingxinwhiterw")
            robertDSORICon.isUserInteractionEnabled = false
            robertDSORICon.setImage(ARTimageDSOR, for: .normal)
            recordDSORImg = ARTimageDSOR
        }
        
        
        
        
    }


    @IBAction func awaythisRoolmDSOR(_ sender: UIButton) {
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
          
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
    
    @IBAction func uoloadDSOR(_ sender: Any) {
        self.view.makeToastActivity(.center)
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]

        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)

        for babecareDSOR in chairDSOR {
            if babecareDSOR > 300 && babecareDSOR < 600{
                chairDSOR.insert(babecareDSOR - 50)
            }
            sufauker.append("\(babecareDSOR)")
        }

        
        if sufauker.count < 1 {
            return
        }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoPicker = UIImagePickerController()
            photoPicker.delegate = self
            let cameraPickerddsor = UIImagePickerController()
            cameraPickerddsor.delegate = self
            chairDSOR = securyDSOR.union(unfailureDSOR)

            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }

            if(securyDSOR.isEmpty == true){
                return
            }

            if(chairDSOR.count >= unfailureDSOR.count ){
                photoPicker.sourceType = .photoLibrary
            }
            
           
            self.present(photoPicker, animated: true, completion: nil)
            return
        }
        var toaststyyleDSOR = ToastStyle.init()
        toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
        self.view.makeToast("No album permission", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
    }
    
     
    
    @IBAction func changeTypweradDSOR(_ sender: UIButton) {
        
        tyoingRobert0.isSelected = false
        tyoingRobert1.isSelected = false
        tyoingRobert2.isSelected = false
        tyoingRobert3.isSelected = false
        
        tyoingRobert0.backgroundColor = UIColor.white
        tyoingRobert1.backgroundColor = UIColor.white
        tyoingRobert2.backgroundColor = UIColor.white
        tyoingRobert3.backgroundColor = UIColor.white
        
        sender.isSelected = true
        sender.backgroundColor = UIColor(red: 0.62, green: 0.08, blue: 0.04, alpha: 1)
        
        ifPickONeType = true
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      
        var securyDSOR:Set<CGFloat> = [122,344,566,588]
        var sufauker = ["securyDSOR","unfailureDSOR"]

        var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
        var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)

        for babecareDSOR in chairDSOR {
            if babecareDSOR > 300 && babecareDSOR < 600{
                chairDSOR.insert(babecareDSOR - 50)
            }
            sufauker.append("\(babecareDSOR)")
        }

        chairDSOR = securyDSOR.union(unfailureDSOR)

        for item in chairDSOR {
            if securyDSOR.contains(item) == false {
                securyDSOR.insert(item)
            }
        }
        
        if let image : UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }

            if(securyDSOR.isEmpty == true){
                return
            }

            
            DispatchQueue.main.async {
                self.robertDSORICon.setImage(image, for: .normal)
                self.recordDSORImg = image
                if(chairDSOR.count >= unfailureDSOR.count ){
                    picker.dismiss(animated: true)
                }
               
               
            }
        }
       
        
        
    }
}
