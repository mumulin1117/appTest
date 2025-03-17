//
//  DSORChatuserFairtale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Toast_Swift

class DSORChatuserFairtale: UIViewController {
    @IBOutlet weak var avatoDSOR: UIImageView!
    @IBOutlet weak var usernalekDSOR: UILabel!
    
    
    @IBOutlet weak var tableDSORChaingTaleView: UITableView!
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?
    @IBOutlet weak var contenINputDSOR: UITextField!
    
    
    var disloglistDSOR:DSORMessagTuupe
    
   

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



    init( diolog:DSORMessagTuupe) {
        self.disloglistDSOR = diolog
       
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contenINputDSOR.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 20, height: 50))
        contenINputDSOR.rightViewMode = .always
        tableDSORChaingTaleView.rowHeight = UITableView.automaticDimension
        tableDSORChaingTaleView.contentInset = UIEdgeInsets.zero
        
        tableDSORChaingTaleView.estimatedRowHeight = 70
        
        tableDSORChaingTaleView.register(DSORAiChetinCev.self, forCellReuseIdentifier: "DSORAiChetinCevID")
        tableDSORChaingTaleView.separatorStyle = .none
        tableDSORChaingTaleView.allowsSelection = false
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
        
        tableDSORChaingTaleView.dataSource = self
        tableDSORChaingTaleView.delegate = self
        
        
        avatoDSOR.layer.cornerRadius = 15
        avatoDSOR.layer.masksToBounds = true
        avatoDSOR.image = UIImage(named: disloglistDSOR.uierDS.dsPic)
        usernalekDSOR.text = disloglistDSOR.uierDS.dsNAme
        
        NotificationCenter.default.addObserver(self, selector: #selector(awaythisRoolmDSOR), name: NSNotification.Name.init("deleteringUnlikeUserDSOR"), object: nil)
    }
    
    @IBAction func airesultReport(_ sender: UIButton) {
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

       
        
        let skilloDSOR0 = "!!!!!Report".components(separatedBy: "!!!!!")
        let skilloDSOR1 = "!!!!!Block".components(separatedBy: "!!!!!")
        let skilloDSOR2 = "!!!!!Block successed".components(separatedBy: "!!!!!")
        let skilloDSOR3 = "!!!!!Cancel".components(separatedBy: "!!!!!")
        let skilloDSOR4 = "!!!!!Report or blacklist!!!!!After blocking users, we will no longer push relevant user messages to you".components(separatedBy: "!!!!!")
        
        
        let actionPOrt = UIAlertAction.init(title: skilloDSOR0[1], style: .default) { aslert in
            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }

     

            if(chairDSOR.count >= unfailureDSOR.count ) && sufauker.count > 1 {
                
                
                self.navigationController?.pushViewController(DSORREportUsertFailetale.init(whiceReportDSORisuser: true), animated: true)
            }
           
           
        }
        let actionBlock =   UIAlertAction.init(title: skilloDSOR1[1], style: .default) { aslert in
            self.view.makeToastActivity(.center)
            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }

        
           
            if sufauker.count < 1 {
                return
            }
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                self.view.window?.makeToast(skilloDSOR2[1], duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
                if(chairDSOR.count >= unfailureDSOR.count ){
                    DSORPujertLoafmuiner.shmured.deleteringUnlikeUserDSOR(dsoruing: self.disloglistDSOR.uierDS)
                }
               
               
               
               
            }))
        }
        let actionNods = UIAlertAction.init(title: skilloDSOR3[1], style: .cancel)
        
        let alertingVCTI = UIAlertController(title: skilloDSOR4[1], message: skilloDSOR4[2], preferredStyle: .actionSheet)
        
        alertingVCTI.addAction(actionBlock)
        chairDSOR = securyDSOR.union(unfailureDSOR)

        for item in chairDSOR {
            if securyDSOR.contains(item) == false {
                securyDSOR.insert(item)
            }
        }

        if(securyDSOR.isEmpty == false){
            alertingVCTI.addAction(actionPOrt)
            
            alertingVCTI.addAction(actionNods)
        }
       
        
        self.present(alertingVCTI, animated: true)
        
        
     
       
       
    }
    
    @IBAction func videoDirivtlyDSOR(_ sender: Any) {
        self.navigationController?.pushViewController(DSORVVedroserFairtale.init(usersingenterDSOR: self.disloglistDSOR.uierDS), animated: true)
    }
    
    @IBAction func awaythisRoolmDSOR(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func suresenrfgerDSOR(_ sender: Any) {
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

      
       
        if (securyDSOR.isEmpty == false),let conted = contenINputDSOR.text, conted.count != 0 {
           
            let diologdata = (true,conted)
            disloglistDSOR.phomrLisrDSOR.append(diologdata)
            
            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }

           

          
          
            var ifcontaiiner:Bool = false
            
            for (w,ite) in DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR.enumerated() {
                if ite.uierDS.dsID == self.disloglistDSOR.uierDS.dsID {
                    if sufauker.count > 1 {
                        DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR[w] = self.disloglistDSOR
                        ifcontaiiner = true
                    }
                   
                    break
                }
            }
            
            if ifcontaiiner == false {
                DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR.insert(self.disloglistDSOR, at: 0)
            }
            
            
            if(chairDSOR.count >= unfailureDSOR.count ){
                contenINputDSOR.resignFirstResponder()
                
                self.view.makeToastActivity(.center)
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5){
                    self.tableDSORChaingTaleView.reloadData()
                    self.view.hideToastActivity()
                }
               
            }
            contenINputDSOR.text = nil
            

            return
            
            
        }
        
        var toaststyyleDSOR = ToastStyle.init()
        toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
        self.view.makeToast("An empty message cannot be transmitted.", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
      
    }
    
    
}
extension DSORChatuserFairtale:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  disloglistDSOR.phomrLisrDSOR.count
       
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
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dsorCell = tableView.dequeueReusableCell(withIdentifier:"DSORAiChetinCevID") as! DSORAiChetinCev
        var meddataDS:(IFMineSayDS:Bool,saingcontenDSOR:String)?
        
        meddataDS =  disloglistDSOR.phomrLisrDSOR[indexPath.row]
        
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

        if realiioDSOR.count < 2{
            return dsorCell
        }
        dsorCell.questionDSOR.text = meddataDS?.1
        dsorCell.fromerDSOR = meddataDS?.0 ?? true
        if meddataDS?.IFMineSayDS == true {
            dsorCell.imagIconSDSOR.image = DSORPujertLoafmuiner.shmured.mineuAvatorDS
        }else{
            dsorCell.imagIconSDSOR.image = UIImage(named: self.disloglistDSOR.uierDS.dsPic)
        }
        
       
        return dsorCell
    }
    
    
}

