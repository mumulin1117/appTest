//
//  DSORHeaderAICreateFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/10.
//

import UIKit
import Toast_Swift

/// 创建头像
class DSORHeaderAICreateFairyTale: UIViewController,UITextViewDelegate{
    @IBOutlet weak var AIINfoSure: UIButton!
    
    
    @IBOutlet weak var enterDesctribtionDSOR: UITextView!
    
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
        enterDesctribtionDSOR.delegate = self
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
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    
    
    @IBAction func surenetcTransportDSOR(_ sender: Any) {
        if let contetnedsor = enterDesctribtionDSOR.text,contetnedsor.count > 0 {
            
            var dsorPauingRem =  Int(DSORPujertLoafmuiner.shmured.mineDattarDS?.blanceds ?? "0") ?? 0
            let minePaRem = 100
            
            if dsorPauingRem <  minePaRem{//金币不足
                let minerwtshingDSOR = UIAlertController(title: "Insufficient Blance", message: "", preferredStyle: .alert)
                minerwtshingDSOR.addAction(UIAlertAction(title: "Purchase now", style: .default, handler: { asldo in
                    self.navigationController?.pushViewController(DSORPiiiertirrFairtale.init(), animated: true)
                }))
                minerwtshingDSOR.addAction(UIAlertAction(title: "Cancel", style: .default))
                self.present(minerwtshingDSOR, animated: true)
                return
            }
            
            dsorPauingRem = dsorPauingRem - minePaRem
            DSORPujertLoafmuiner.shmured.mineDattarDS?.blanceds = "\(dsorPauingRem)"
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("successful pay!", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
            self.navigationController?.pushViewController(DSORHeaderAIResultCreateFairyTale.init(getingDescsribtion: contetnedsor), animated: true)
            
            return
        }
        var toaststyyleDSOR = ToastStyle.init()
        toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
        self.view.makeToast("Please enter the image description you want", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
        
        
        
        
        
    }
    
    
}
