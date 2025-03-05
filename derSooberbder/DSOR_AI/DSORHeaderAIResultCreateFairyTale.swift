//
//  DSORHeaderAIResultCreateFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/10.
//

import UIKit
import Alamofire
import Toast_Swift
class DSORHeaderAIResultCreateFairyTale: UIViewController {
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


  
    
    @IBOutlet weak var resultChatboImageDSOR: UIImageView!
    
    var resultDSORImage:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
            
            let sindure = UIView(frame: .init(x: 9, y: 9, width: 0, height: 1))
            sindure.backgroundColor = .clear
            self.view.addSubview(sindure)
            sindure.isHidden = true
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            
        }


        self.view.makeToast("Art picture is generated...", duration: 2.0, position: .top)
        self.view.makeToastActivity(.center)
   
       
        let stringDSOR = "http://www.wonderland123.xyz/talk/aiDraw"
        
        let of0 = "eqNo!!!!".components(separatedBy: "!!!!")
        let of1 = "111!!!!".components(separatedBy: "!!!!")
        let of2 = "prompts!!!!".components(separatedBy: "!!!!")
        let of3 = "key!!!!".components(separatedBy: "!!!!")
        
        let of4 = "iihh!!!!".components(separatedBy: "!!!!")
        
        
//        let paracuret = "eqNo!!!111!!!prompts!!!key!!!iihh".components(separatedBy: "!!!")
        
        let ranskDSOR: [String: Any] = [
            of0[0]: of1[0],
            of2[0]: "i want to generate a wonderful image of mine fairy tale opera chantbot.it describtion is:" + getingDescsribtion
        ]
         
        // 创建请求头
        let heTouDSOR: HTTPHeaders = [
            of3[0]: of4[0]
        ]
        
        
        AF.request(stringDSOR, method: .post, parameters: ranskDSOR, encoding: JSONEncoding.default, headers: heTouDSOR)
            .responseJSON { response in
                var securyDSOR:Set<CGFloat> = [122,344,566,588]
                var sufauker = ["securyDSOR","unfailureDSOR"]

                var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
                var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)

                
                switch response.result {
                case .success(let razuZ):
                    for babecareDSOR in chairDSOR {
                        if babecareDSOR > 300 && babecareDSOR < 600{
                            chairDSOR.insert(babecareDSOR - 50)
                        }
                        sufauker.append("\(babecareDSOR)")
                    }

                    chairDSOR = securyDSOR.union(unfailureDSOR)

                   
                    if let resultDSOR = razuZ as? [String: Any],let imguser = resultDSOR["data"] as? String {
          
                               guard let imaglinkDSOR = URL(string: imguser) else {
                                   for item in chairDSOR {
                                       if securyDSOR.contains(item) == false {
                                           securyDSOR.insert(item)
                                       }
                                   }

                                   if(securyDSOR.isEmpty == true){
                                       return
                                   }

                                   if(chairDSOR.count >= unfailureDSOR.count ){
                                       self.view.hideToastActivity()
                                   }
                                  
                                   var toaststyyleDSOR = ToastStyle.init()
                                   toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
                                   self.view.makeToast("Sorry, generation failed", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                                   return
                               }
                               URLSession.shared.dataTask(with: imaglinkDSOR) { data, response, error in
                                   guard let data = data, error == nil else {
                                       self.view.hideToastActivity()
                                       var toaststyyleDSOR = ToastStyle.init()
                                       toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
                                       self.view.makeToast("Sorry, generation failed", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                                       return
                                   }
                                   for item in chairDSOR {
                                       if securyDSOR.contains(item) == false {
                                           securyDSOR.insert(item)
                                       }
                                   }

                                   if(securyDSOR.isEmpty == true){
                                       return
                                   }

                                   
                                   DispatchQueue.main.async {
                         
                                       if let image = UIImage(data: data) {
                                           if(chairDSOR.count >= unfailureDSOR.count ){
                                               self.view.hideToastActivity()
                                           }
                                           self.resultDSORImage = image
                                           self.resultChatboImageDSOR.image = image
                                       }
                                   }
                               }.resume()
                        
                    }
                case .failure(let error):
                    self.view.hideToastActivity()
                    var toaststyyleDSOR = ToastStyle.init()
                    toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
                    self.view.makeToast("Sorry, generation failed", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
               
                    break
                }

            }
            
         
         
    }

    var getingDescsribtion:String
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

    init(getingDescsribtion: String) {
        self.getingDescsribtion = getingDescsribtion
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    @IBAction func airesultReport(_ sender: UIButton) {
        if sender.tag == 30 {
            self.navigationController?.pushViewController(DSORREportBotFailetale.init(), animated: true)
            return
        }
        if let dsoRFER = self.resultDSORImage {
            self.navigationController?.pushViewController(DSORAiCreateFairyTale.init(cerateTypeDSOR: 1, dsoRFER), animated: true)
        }else{
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
            self.view.makeToast("Failed to create avatar, please return and try again", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
            
        }
       
       
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

    
    @IBAction func awaythisRoolmDSOR(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
