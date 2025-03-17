//
//  DSORAiChatFailrTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Alamofire
import Toast_Swift
class DSORAiChatFailrTale: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var seeecountDSORbg: UIView!
    
    @IBOutlet weak var robertnameDSOR: UILabel!
    
    @IBOutlet weak var robercentHEaderDSOR: UIImageView!
    
    
    @IBOutlet weak var roberbriefDSOR: UILabel!
    
    @IBOutlet weak var roberTypeDSOR: UILabel!
    
    @IBOutlet weak var roberSeecDSOR: UILabel!
    
    
    @IBOutlet weak var tableDSORChaingTaleView: UITableView!
    
    @IBOutlet weak var contenINputDSOR: UITextField!
    

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

    var otheryDiolodgDSOR:Array<(IFMineSayDS:Bool,saingcontenDSOR:String)> = []
    
    var dsorRoberDAta:(roberTypeds:String,roberNameds:String,roberPicds:String,roberBeiefds:String,counsedDS:String)
    init(dsorRoberDAta: (roberTypeds: String, roberNameds: String, roberPicds: String, roberBeiefds: String, counsedDS: String)) {
       
        self.dsorRoberDAta = dsorRoberDAta
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        robercentHEaderDSOR.image = UIImage(named: dsorRoberDAta.roberPicds )
        robertnameDSOR.text = dsorRoberDAta.roberNameds
        
        roberSeecDSOR.text = dsorRoberDAta.counsedDS
        
        roberbriefDSOR.text = dsorRoberDAta.roberBeiefds
        roberTypeDSOR.text = dsorRoberDAta.roberTypeds
        
        contenINputDSOR.rightView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 60, height: 50))
        contenINputDSOR.rightViewMode = .always
        tableDSORChaingTaleView.rowHeight = UITableView.automaticDimension
        tableDSORChaingTaleView.contentInset = UIEdgeInsets.zero
        
        tableDSORChaingTaleView.estimatedRowHeight = 70
        
        tableDSORChaingTaleView.register(DSORAiChetinCev.self, forCellReuseIdentifier: "DSORAiChetinCevID")
        tableDSORChaingTaleView.separatorStyle = .none
        tableDSORChaingTaleView.allowsSelection = false
        
        
        tableDSORChaingTaleView.dataSource = self
        tableDSORChaingTaleView.delegate = self
        
        robercentHEaderDSOR.layer.cornerRadius = 34.5
        robercentHEaderDSOR.layer.masksToBounds = true
        robercentHEaderDSOR.layer.borderWidth = 1.5
        robercentHEaderDSOR.layer.borderColor = UIColor(red: 0.95, green: 0.85, blue: 0.63, alpha: 1).cgColor
        
        roberTypeDSOR.layer.cornerRadius = 3
        roberTypeDSOR.layer.masksToBounds = true
        
        seeecountDSORbg.layer.cornerRadius = 4
        seeecountDSORbg.layer.masksToBounds = true
        
        if DSORPujertLoafmuiner.shmured.ownedRobertDSOR.filter({ roberrinfo in
            (roberrinfo.roberNameds == self.dsorRoberDAta.roberNameds) && (self.dsorRoberDAta.roberBeiefds == roberrinfo.roberBeiefds)
        }).count == 0{
            let rroterVCD = DSORAiPayAlertFailrTale.init()
            
            let payingvc = DSORGuideFairtale.init(rootViewController: rroterVCD)
            payingvc.modalPresentationStyle = .overCurrentContext
            
            rroterVCD.ifpurchasedcompletion = { resultt in
                if resultt == true {
                    DSORPujertLoafmuiner.shmured.ownedRobertDSOR.append(self.dsorRoberDAta)
                }
            }
            self.present(payingvc, animated: true)
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
    
    
    @IBAction func airesultReport(_ sender: UIButton) {
        self.navigationController?.pushViewController(DSORREportBotFailetale.init(), animated: true)
        
        
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


    @IBAction func suresenrfgerDSOR(_ sender: Any) {
        if DSORPujertLoafmuiner.shmured.ownedRobertDSOR.filter({ roberrinfo in
            (roberrinfo.roberNameds == self.dsorRoberDAta.roberNameds) && (self.dsorRoberDAta.roberBeiefds == roberrinfo.roberBeiefds)
        }).count == 0{
            let payingvc = DSORAiPayAlertFailrTale.init()
            payingvc.modalPresentationStyle = .overCurrentContext
            
            payingvc.ifpurchasedcompletion = { resultt in
                if resultt == true {
                    DSORPujertLoafmuiner.shmured.ownedRobertDSOR.append(self.dsorRoberDAta)
                }
            }
            self.present(payingvc, animated: true)
            
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

        for item in chairDSOR {
            if securyDSOR.contains(item) == false {
                securyDSOR.insert(item)
            }
        }

        if(securyDSOR.isEmpty == false){
           
        }
        if let conted = contenINputDSOR.text, conted.count != 0 {
            
            let diologdata = (true,conted)
            otheryDiolodgDSOR.append(diologdata)
            
            contenINputDSOR.text = nil
            contenINputDSOR.resignFirstResponder()
            tableDSORChaingTaleView.reloadData()
            let foreAquestion = "I want to have a conversation with a robot. The name of the robot is:. The introduction of the robot is: What is the type of robot? Please simulate this robot to have a conversation with me and answer my question: " + conted
            
            sendquestionDSOR(withquesdtion:foreAquestion)
            
            return
           
        }
        
        var toaststyyleDSOR = ToastStyle.init()
        toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
        self.view.makeToast("An empty message cannot be transmitted.", duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
        
    }
    
    
    private func sendquestionDSOR(withquesdtion:String) {
        
        
        //直接发送
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

       
        if(securyDSOR.isEmpty){
            return
        }
        
        let of0 = "question!!!!".components(separatedBy: "!!!!")
        let of1 = "questionType!!!!".components(separatedBy: "!!!!")
        let of2 = "eqNo!!!!".components(separatedBy: "!!!!")
        let of3 = "5555!!!!".components(separatedBy: "!!!!")
        
        let of4 = "data!!!!".components(separatedBy: "!!!!")
        
        let of5 = "Data error!!!!".components(separatedBy: "!!!!")
        
        self.view.makeToastActivity(.center)
            
            AF.request("http://www.wonderland123.xyz/talktwo/askQuestionv2", method: .post, parameters: [of0[0]: withquesdtion,of1[0]: 1,of2[0]:of3[0]], encoding: JSONEncoding.default, headers: nil)
                .responseJSON { response in
                    self.view.hideToastActivity()
                    switch response.result {
                    case .success(let value):
                        if let json = value as? [String: Any] {
                            guard let content = json[of4[0]] as? String else {
                                var toaststyyleDSOR = ToastStyle.init()
                                toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                                self.view.makeToast(of5[0], duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                                return
                            }
                            let diologdata:(Bool,String) =  (false,content)
                            
                            self.otheryDiolodgDSOR.append(diologdata)
                            for item in chairDSOR {
                                if securyDSOR.contains(item) == false {
                                    securyDSOR.insert(item)
                                }
                            }

                            if(chairDSOR.count >= unfailureDSOR.count ){
                                self.tableDSORChaingTaleView.reloadData()
                            }
                            if sufauker.count > 1 {
                                self.tableDSORChaingTaleView.scrollsToTop = true
                            }
                           

                            
                            
                            return
                           
                        }
                        var toaststyyleDSOR = ToastStyle.init()
                        toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                        self.view.makeToast(of5[0], duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)
                        
                    case .failure(let error):
                        var toaststyyleDSOR = ToastStyle.init()
                        toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                        self.view.makeToast(error.localizedDescription, duration: 2.0,position: .center, image: UIImage(named: "salertDSOR"),style: toaststyyleDSOR)

                    }
                    
                }
            return
       
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  otheryDiolodgDSOR.count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dsorCell = tableView.dequeueReusableCell(withIdentifier:"DSORAiChetinCevID") as! DSORAiChetinCev
        var meddataDS:(IFMineSayDS:Bool,saingcontenDSOR:String)?
        
        meddataDS =  otheryDiolodgDSOR[indexPath.row]
        
       
        dsorCell.questionDSOR.text = meddataDS?.1
        dsorCell.fromerDSOR = meddataDS?.0 ?? true
        if meddataDS?.IFMineSayDS == true {
            dsorCell.imagIconSDSOR.image = DSORPujertLoafmuiner.shmured.mineuAvatorDS
        }else{
            dsorCell.imagIconSDSOR.image = UIImage(named: dsorRoberDAta.roberPicds)
        }
        
       
        return dsorCell
    }
    
    
    
}
