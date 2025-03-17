//
//  DSORDoorfairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import Toast_Swift
class DSORDoorfairyTale: UIViewController {
    
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()



  


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

    
    @IBOutlet weak var dsorCEnterDoor: UIButton!
    
    
    @IBOutlet weak var eladReadDSOR: UIButton!
    
    @IBOutlet weak var keyStausDSOR: UIButton!
    
    static var fineDSORIF:Bool = false
    static var fineFinnallyDSORIF:Bool = false
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = .clear
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
        if DSORDoorfairyTale.fineDSORIF == false && DSORDoorfairyTale.fineFinnallyDSORIF == false {
          
            self.navigationController?.pushViewController(DSORKeyforDoorfairyTale.init(dsorGallary: []), animated: true)
            chatTeViDSOR.textColor = .clear
            sceneDSORLbel.textColor = .clear
            DSORDoorfairyTale.fineDSORIF = true
        }
        keyStausDSOR.isSelected = DSORDoorfairyTale.fineFinnallyDSORIF 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dsorCEnterDoor.layer.cornerRadius = 8
        dsorCEnterDoor.layer.masksToBounds = true
        sceneDSORLbel.text = "current scene: \(selSceneDSOR)"
        
        chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)"
        if self.view.isHidden == true {
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
        eladReadDSOR.layer.cornerRadius = 8
        eladReadDSOR.layer.masksToBounds = true
    }

    @IBAction func noingNextStemDSOR(_ sender: UIButton) {
        let segmentDSOR = UISegmentedControl.init()

        segmentDSOR.backgroundColor = .clear
        if selSceneDSOR.count > 3 {
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }else{
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }
        if DSORDoorfairyTale.fineFinnallyDSORIF == false {
            self.view.makeToast("Please read and agree to our app's terms of use first", duration: 2.5, position: .center)
            return
        }
        
        self.navigationController?.pushViewController(DSORStadDoorfairyTale.init(), animated: true)
    }
    
    @IBAction func eluaingGOINGDSOR(_ sender: Any) {
        let segmentDSOR = UISegmentedControl.init()

        segmentDSOR.backgroundColor = .clear
        if selSceneDSOR.count > 3 {
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }else{
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }
        self.navigationController?.pushViewController(DSORKeyforDoorfairyTale.init(dsorGallary: []), animated: true)
       
    }
    
    
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
    
    @IBAction func comfiremOKayKnowednDSOR(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        let segmentDSOR = UISegmentedControl.init()

        segmentDSOR.backgroundColor = .clear
        if selSceneDSOR.count > 3 {
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }else{
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }
        DSORDoorfairyTale.fineFinnallyDSORIF = sender.isSelected
        
    }
    

}
