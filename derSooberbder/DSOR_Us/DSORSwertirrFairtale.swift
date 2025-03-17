//
//  DSORSwertirrFairtale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Toast_Swift
class DSORSwertirrFairtale: UIViewController {
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

    @IBOutlet weak var photomineDSOR: UIImageView!
    
    @IBOutlet weak var nameomineDSOR: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photomineDSOR.image = DSORPujertLoafmuiner.shmured.mineuAvatorDS
        nameomineDSOR.text = DSORPujertLoafmuiner.shmured.mineDattarDS?.dsNAme
        
        
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
        photomineDSOR.layer.cornerRadius = 34
        photomineDSOR.layer.masksToBounds = true
        photomineDSOR.layer.borderColor = UIColor(red: 0.89, green: 0.77, blue: 0.7, alpha: 1).cgColor
        photomineDSOR.layer.borderWidth = 1.5
        
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


    
    @IBAction func peiognbcvCyDSOR(_ sender: UIButton) {
        if sender.tag ==  70{
            self.navigationController?.pushViewController(DSORKeyforDoorfairyTale.init(dsorGallary: [1,2]), animated: true)
            return
        }
        
        if sender.tag ==  71{
            self.navigationController?.pushViewController(DSORKeyforDoorfairyTale.init(dsorGallary:[1]), animated: true)
            return
        }
        
        
        if sender.tag ==  72{
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

            chairDSOR = securyDSOR.union(unfailureDSOR)

            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }

            if(securyDSOR.isEmpty == true){
                return
            }

           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                self.view.hideToastActivity()
                var toaststyyleDSOR = ToastStyle.init()
                if(chairDSOR.count >= unfailureDSOR.count ){
                    
                }
                if sufauker.count > 1 {
                    toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                    self.view.makeToast("Clear successful!", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
                }
               
            }))
            return
        }
        
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

        

        if(securyDSOR.isEmpty == true){
            return
        }
        
      
        
        if sender.tag ==  73{
            let DSORAaaalert = UIAlertController.init(title: "Account Deletion?", message: "Upon deletion, all information pertaining to your account will be wiped!", preferredStyle: .alert)
           
            DSORAaaalert.addAction(UIAlertAction(title: "Sure", style: .default, handler: { acv in
                
              self.view.makeToastActivity(.center)
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    var toaststyyleDSOR = ToastStyle.init()
                    toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                   
                    DSORPujertLoafmuiner.shmured.gogoginintDSOR  = false
                  
                    for item in chairDSOR {
                        if securyDSOR.contains(item) == false {
                            securyDSOR.insert(item)
                        }
                    }
                    if(chairDSOR.count >= unfailureDSOR.count ){
                        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  DSORGuideFairtale.init(rootViewController: DSORDoorfairyTale.init())
                    }
                    if sufauker.count > 1 {
                        
                    }
                    
                   
                    
                    self.view.window?.makeToast("TThe account has been erased!", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)

                }))
                
            }))
        
            DSORAaaalert.addAction(UIAlertAction(title: "Cancel", style: .default))
       
            self.present(DSORAaaalert, animated: true)
            return
        }
        
        if sender.tag ==  74{
            DSORPujertLoafmuiner.shmured.gogoginintDSOR  = false
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  DSORGuideFairtale.init(rootViewController: DSORDoorfairyTale.init())
            return
        }
        
        
    }
    
}
