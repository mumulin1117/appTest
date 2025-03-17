//
//  DSORKeyforDoorfairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import Toast_Swift

class DSORKeyforDoorfairyTale: UIViewController {
    
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

    
    var dsorGallary:Set<Int>
    
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
    
    
    init(dsorGallary: Set<Int>) {
        self.dsorGallary = dsorGallary
        super.init(nibName: nil, bundle: nil)
    }
    
    @IBOutlet weak var titlFLAYDsOR: UILabel!
    
    @IBOutlet weak var contetnFlayDSOR: UITextView!
    
    @IBOutlet weak var agreenOkayDSOR: UIButton!
    
    @IBOutlet weak var priOkayDSOR: UIButton!
    @IBOutlet weak var termenOkayDSOR: UIButton!
    
    
    
    @IBAction func agreenFlayDSOR(_ sender: UIButton) {
        if sender.tag == 40 {
            
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
            return
        }
        
        
        if sender.tag == 41 {
            
            if self.dsorGallary.count == 0 {
                DSORDoorfairyTale.fineFinnallyDSORIF = true
            }
            
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
            return
        }
        
        
        
        if sender.tag == 42 {
            if charaDescDSOR == nil {
                charaDescDSOR = self.selSceneDSOR
            }
            
            if charaDescDSOR?.count ?? 0 > 12 {
                charaDescDSOR?.removeLast()
            }
            
            self.navigationController?.pushViewController(DSORKeyforDoorfairyTale.init(dsorGallary:[1]), animated: true)
            return
        }
        
        
        
        if sender.tag == 43 {
            if charaDescDSOR == nil {
                charaDescDSOR = self.selSceneDSOR
            }
            
            if charaDescDSOR?.count ?? 0 > 12 {
                charaDescDSOR?.removeLast()
            }
            
            self.navigationController?.pushViewController(DSORKeyforDoorfairyTale.init(dsorGallary:[1,2]), animated: true)
            return
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        agreenOkayDSOR.layer.cornerRadius = 8
        agreenOkayDSOR.layer.masksToBounds = true
        if dsorGallary.count != 0 {
            priOkayDSOR.isHidden = true
            termenOkayDSOR.isHidden = true
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
        
        if dsorGallary.count == 2 {
            if self.view.isHidden {
                view.addSubview(chatTeViDSOR)
                view.addSubview(sceneDSORLbel)
                view.addSubview(haraInputDSORField)
                chatTeViDSOR.isHidden = self.view.isHidden
                sceneDSORLbel.isHidden = self.view.isHidden
                haraInputDSORField.isHidden = self.view.isHidden
            }
            titlFLAYDsOR.text = "Hayki Privacy Policy"
            contetnFlayDSOR.text = """
     1. Information Collection

     We collect the following types of information:

     Personal Information: Information you provide directly, such as username, email address, and any other details when creating an account.
     Usage Data: Information about how you use the App, including interactions with chatbots and customizations made.
     2. Use of Information

     We use your information to:

     Improve our App and develop new features.
     Communicate with you about updates, promotions, and services.
     3. Sharing of Information

     Hayki does not sell or rent your personal information. We may share information with trusted third parties for the purpose of improving our services, under strict confidentiality obligations.

     4. Security

     We take reasonable measures to protect your personal information from unauthorized access, use, or disclosure. However, no method of transmission over the internet is 100% secure.

     5. Children's Privacy

     The App is not intended for children under the age of 13. We do not knowingly collect personal information from children. If we become aware of such data collection, we will take steps to delete it.

     6. Changes to This Policy

     Hayki reserves the right to update this privacy policy at any time. We will notify users of significant changes via the App or through email.

     7. Contact Us

     If you have any questions about this policy, please contact us at [HaykiTale33@gmail.com].
"""
        }
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        
        if dsorGallary.count == 1 {
            titlFLAYDsOR.text = "Hayki Terms of Use"
            
            if self.view.isHidden {
                view.addSubview(chatTeViDSOR)
                view.addSubview(sceneDSORLbel)
                view.addSubview(haraInputDSORField)
                chatTeViDSOR.isHidden = self.view.isHidden
                sceneDSORLbel.isHidden = self.view.isHidden
                haraInputDSORField.isHidden = self.view.isHidden
            }
            
            
            contetnFlayDSOR.text = """
         1. General Usage

         Users must comply with all applicable laws while using the App. You are solely responsible for your actions within the App.

         2. Community Guidelines

         Engagement within the community should remain respectful and inclusive. Hate speech, bullying, and harassment will not be tolerated.

         3. Intellectual Property

         All materials provided by Hayki, including images, text, and software, are owned by Hayki or its licensors. Unauthorized copying or distribution is prohibited.

         4. Third-Party Links

         The App may contain links to third-party websites. Hayki is not responsible for the content or practices of these sites.

         5. Dispute Resolution

         Any disputes related to these terms will be resolved through binding arbitration in accordance with the rules of [Insert Arbitration Association] in [Insert Location].

         6. Entire Agreement

         These terms constitute the entire agreement between you and Hayki regarding the App and supersede any prior agreements.
"""
        }
    }


  

     
    

}
