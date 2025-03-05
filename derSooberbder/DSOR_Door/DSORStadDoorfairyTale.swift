//
//  DSORStadDoorfairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import Toast_Swift
class DSORStadDoorfairyTale: UIViewController {
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

    
    @IBOutlet weak var emiakfinLaDSOR: UITextField!
    @IBOutlet weak var paswwordinLaDSOR: UITextField!
    
    
    @IBOutlet weak var backjDSOR: UIView!
    
    @IBOutlet weak var bueontDSOR: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bueontDSOR.layer.cornerRadius = 12
        bueontDSOR.layer.masksToBounds = true
        chatTeViDSOR.textColor = view.backgroundColor
        sceneDSORLbel.textColor = view.backgroundColor
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = view.backgroundColor
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
        
        backjDSOR.layer.cornerRadius = 12
        backjDSOR.layer.masksToBounds = true
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
    @IBAction func atefterLoafinDSOR(_ sender: Any) {
      
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

       
        guard let emaikDSOR = emiakfinLaDSOR.text,
        emaikDSOR.count != 0,
              let dsorPASD = paswwordinLaDSOR.text,
        dsorPASD.count != 0 else {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 25, height: 25)
            self.view.makeToast("Password or Email is empty!", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            return
        }
        
        if dsorPASD.count < 6 {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
            self.view.makeToast("Password should be in 6-12 characters", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            return
        }
    
        if emaikDSOR == "sintale@gmail.com" {
            self.view.makeToast("Sign  in......", duration: 2.0, position: .top)
            self.view.makeToastActivity(.center)
            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }

           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                self.view.makeToast("Welcome back!", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
                
                
                if(securyDSOR.isEmpty == false){
                    DSORPujertLoafmuiner.shmured.gogoginintDSOR = true
                }

                if(chairDSOR.count >= unfailureDSOR.count ){
                    DSORPujertLoafmuiner.shmured.demouserinitDSOR()
                }
                if sufauker.count > 1 {
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  DSORGuideFairtale.init(rootViewController: DSORContainerfairyTale.init())
                }
               
                
              
               
              
            }
            
            return

        }
        
        let dalsefkDSOR = NSPredicate(format:"SELF MATCHES %@", "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: emaikDSOR)
        
        if chairDSOR.count < 2 {
            return
        }
        if dalsefkDSOR == false {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("email format is incorrect!", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
           
        }else{
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("Create new and log in...", duration: 2.0, position: .top,style: toaststyyleDSOR)
            self.view.makeToastActivity(.center)
            var realiioDSOR: [Int] = [5,4,9,9,4]
            var bingliDSOR = 213

            if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
                realiioDSOR.append(bingliDSOR)
            }
            var selfCvbmunberDSOR = realiioDSOR.count + 30

           
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                self.view.hideToastActivity()
                DSORPujertLoafmuiner.shmured.gogoginintDSOR = true
                DSORPujertLoafmuiner.shmured.mineDattarDS =  (dsNAme:"Empty Name",dsPic:"dsorchaingtx",dsID:"\(Int.random(in: 100...300))",blanceds:"0",emailDS:emaikDSOR)
                DSORPujertLoafmuiner.shmured.mineuAvatorDS = UIImage(named: "dsorchaingtx")
                if let lasterding = realiioDSOR.last  {
                    bingliDSOR += lasterding
                }else{
                    bingliDSOR += 23
                    
                    let sindure = UIView(frame: .init(x: 9, y: 9, width: 0, height: 1))
                    sindure.backgroundColor = .clear
                    self.view.addSubview(sindure)
                    sindure.isHidden = true
                }

                if bingliDSOR > 20 && realiioDSOR.count > 2{
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  DSORGuideFairtale.init(rootViewController: DSORContainerfairyTale.init())
                }
               
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                self.view.makeToast("successful login!", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
            }
            
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

}
