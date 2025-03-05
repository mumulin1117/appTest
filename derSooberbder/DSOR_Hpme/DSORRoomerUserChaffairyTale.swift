//
//  DSORRoomerUserChaffairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import Toast_Swift

///聊天室聊天框
class DSORRoomerUserChaffairyTale: UIViewController {
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()


    @IBOutlet weak var reporterRoomADSOR: UIButton!
    
    
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


  
    
    static var myDioloDSOR:Array<(IFMineSayDS:Bool,saingcontenDSOR:String)> = [(true,"Me: Welcome! Nice to meet you all here.")]
    
     
    var otheryDiolodgDSOR:Array<(IFMineSayDS:Bool,saingcontenDSOR:String)> = [(false,"Welcome! Nice to meet you all here.")]
    var uierDS:(dsNAme:String,dsPic:String,dsID:String)
    
    
    var ifISMinRoomDSOR:Bool = false
    
    init(uierDS: (dsNAme: String, dsPic: String, dsID: String)) {
        self.uierDS = uierDS
        if uierDS.dsID == DSORPujertLoafmuiner.shmured.mineDattarDS?.dsID {
            //我的房间，，需要记录
            ifISMinRoomDSOR = true
            
        }
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var tableDSORChaingTaleView: UITableView!
    
    @IBOutlet weak var contenINputDSOR: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contenINputDSOR.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 60, height: 50))
        contenINputDSOR.rightViewMode = .always
        tableDSORChaingTaleView.rowHeight = UITableView.automaticDimension
        tableDSORChaingTaleView.contentInset = UIEdgeInsets.zero
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
        tableDSORChaingTaleView.estimatedRowHeight = 70
        
        tableDSORChaingTaleView.register(DSORAiChetinCev.self, forCellReuseIdentifier: "DSORAiChetinCevID")
        tableDSORChaingTaleView.separatorStyle = .none
        tableDSORChaingTaleView.allowsSelection = false
        
       
        tableDSORChaingTaleView.dataSource = self
        tableDSORChaingTaleView.delegate = self
        
        
        reporterRoomADSOR.addTarget(self, action: #selector(shingSmaklllHeaer), for: .touchUpInside)

    }

    @objc func shingSmaklllHeaer()  {
        self.navigationController?.pushViewController(DSORREportUsertFailetale.init(whiceReportDSORisuser: false), animated: true)
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


    
    
    @IBAction func awaythisRoolmDSOR(_ sender: UIButton) {
        self.dismiss(animated: true)
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

        if(securyDSOR.isEmpty == false){
           
        }
       
        if let conted = contenINputDSOR.text, conted.count != 0 {
            
            let diologdata = (true,conted)
            if ifISMinRoomDSOR {
            
                DSORRoomerUserChaffairyTale.myDioloDSOR.append(diologdata)
            }else{
                otheryDiolodgDSOR.append(diologdata)
            }
            
            
            contenINputDSOR.text = nil
            contenINputDSOR.resignFirstResponder()
            
            self.view.makeToastActivity(.center)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5){
                self.tableDSORChaingTaleView.reloadData()
                self.view.hideToastActivity()
            }
           

           
            return
            
        }
        var toaststyyleDSOR = ToastStyle.init()
        toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
        self.view.makeToast("An empty message cannot be transmitted.", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
       
    }
    
    
}
extension DSORRoomerUserChaffairyTale:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if ifISMinRoomDSOR {
            return  DSORRoomerUserChaffairyTale.myDioloDSOR.count
        }else{
            return  otheryDiolodgDSOR.count
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

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dsorCell = tableView.dequeueReusableCell(withIdentifier:"DSORAiChetinCevID") as! DSORAiChetinCev
        var meddataDS:(IFMineSayDS:Bool,saingcontenDSOR:String)?
        
        if ifISMinRoomDSOR {
            meddataDS =  DSORRoomerUserChaffairyTale.myDioloDSOR[indexPath.row]
        }else{
            meddataDS =  otheryDiolodgDSOR[indexPath.row]
        }
        
       
        dsorCell.questionDSOR.text = meddataDS?.1
        dsorCell.fromerDSOR = meddataDS?.0 ?? true
        
        if ifISMinRoomDSOR == true {
            dsorCell.imagIconSDSOR.image = DSORPujertLoafmuiner.shmured.mineuAvatorDS
        }else{
            dsorCell.imagIconSDSOR.image = (meddataDS?.0 ?? true) ?  DSORPujertLoafmuiner.shmured.mineuAvatorDS : UIImage(named: uierDS.dsPic)
        }
       
        return dsorCell
    }
    
    
}
