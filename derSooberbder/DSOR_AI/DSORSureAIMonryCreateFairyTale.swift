//
//  DSORSureAIMonryCreateFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/10.
//

import UIKit
import Toast_Swift

class DSORSureAIMonryCreateFairyTale: UIViewController {
    @IBOutlet weak var typeAvatorDSOR: UIImageView!
    
    @IBOutlet weak var AIINfoSure: UIButton!
    
    @IBOutlet weak var payperuserBackgDSOR: UIView!
    
    @IBOutlet weak var payperuserLabgDSOR: UILabel!
    
    @IBOutlet weak var payperuserEnterDSOR: UITextField!
    
    
    
    @IBOutlet weak var freeBackgDSOR: UIView!
    
    @IBOutlet weak var freeLabgDSOR: UILabel!
    
    var choiceWhichDSOR:Int?
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        AIINfoSure.layer.cornerRadius = 8
        AIINfoSure.layer.masksToBounds = true
        if cerateTypeDSOR == 1 {//ART
            typeAvatorDSOR.image = UIImage(named: "qingxinwhiterw")
        }
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
        payperuserEnterDSOR.keyboardType = .numberPad
        
        freeBackgDSOR.layer.borderColor = UIColor(red: 0.62, green: 0.08, blue: 0.04,alpha:1.000000).cgColor
        payperuserBackgDSOR.layer.borderColor =  UIColor(red: 1, green: 0.79, blue: 0.22, alpha: 1).cgColor
        payperuserBackgDSOR.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapWhteTypeBobertdsor(tapfin:))))
        
        freeBackgDSOR.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapWhteTypeBobertdsor(tapfin:))))
    }

    var cerateTypeDSOR:Int
    init(cerateTypeDSOR: Int) {
       
        self.cerateTypeDSOR = cerateTypeDSOR
        super.init(nibName: nil, bundle: nil)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
    
   @objc func tapWhteTypeBobertdsor(tapfin:UITapGestureRecognizer) {
       if tapfin.view == self.payperuserBackgDSOR {
           payperuserBackgDSOR.layer.borderWidth = 2
           freeBackgDSOR.layer.borderWidth = 0
           
           payperuserLabgDSOR.textColor = UIColor(red: 0.62, green: 0.08, blue: 0.04,alpha:1.000000)
           freeLabgDSOR.textColor = UIColor(red: 0.16, green: 0.02, blue: 0.02,alpha:1.000000)
           choiceWhichDSOR = 0
       }else if tapfin.view == self.freeBackgDSOR{
           
           payperuserBackgDSOR.layer.borderWidth = 0
           freeBackgDSOR.layer.borderWidth = 2
           payperuserLabgDSOR.textColor = UIColor(red: 0.16, green: 0.02, blue: 0.02,alpha:1.000000)
           freeLabgDSOR.textColor = UIColor(red: 0.62, green: 0.08, blue: 0.04,alpha:1.000000)
           choiceWhichDSOR = 1
       }
    }
    
    
    @IBAction func surescretupDSOR(_ sender: Any) {
        
        if choiceWhichDSOR == nil {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("Please click to select the charging mode for the robot", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            
            return
        }
        
        if choiceWhichDSOR == 0 &&  (payperuserEnterDSOR.text == nil || payperuserEnterDSOR.text?.count == 0){
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("Please enter the fee for the robot", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            return
        }
        
        self.view.makeToast("Data uploading in progress...", duration: 2.0, position: .top)
        self.view.makeToastActivity(.center)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 50, height: 50)
            
            self.view.window?.makeToast("Upload successful, your customized robot will be displayed for use after approval", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
            
            self.navigationController?.popToRootViewController(animated: true)
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
    
}
