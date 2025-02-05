//
//  PEAPinkAIChatChangeing.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/27.
//

import UIKit
import CDAlertView
import SVProgressHUD
import Alamofire
class PEAPinkAIChatChangeing: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    var chatDigloglistShowing:Array<(String,String)> = Array<(String,String)>()
    
    
    @IBOutlet weak var videoCallBurPEA: UIButton!
    
    
    @IBOutlet weak var seeingHeaderPEA: UIImageView!
    
    @IBOutlet weak var seeingnamePEAlbl: UILabel!
    
    
    var isAiRovertChat:Bool
   
    @IBOutlet weak var chatRobinPEAView: UITableView!
    
    
    @IBOutlet weak var inpwertPEA: UITextField!
    
    
    var minDepethPEA:UIFont
    var miebrowsePEA:String
 

    
    func createrActivyIncationwrePEA(){
        indicatinActiViewPEA = UIActivityIndicatorView(style: .medium)
       
        indicatinActiViewPEA?.hidesWhenStopped = true
        
        indicatinActiViewPEA?.color = .purple
       
          
        indicatinActiViewPEA?.translatesAutoresizingMaskIntoConstraints = false
       
        
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
    }
    
    
    func personalizedRandomColoPEAr() {
        
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
    
    func pageingoPRaFadingVler(showPEA: Bool) {
        guard let pinkVC = pinkFAthAChangeingPEA else {
            return
        }
        
        if showPEA {
            
            addChild(pinkVC)
            view.addSubview(pinkVC.view)
            pinkVC.view.translatesAutoresizingMaskIntoConstraints = false
           
            pinkVC.didMove(toParent: self)
            
            
        } else {
           
            pinkVC.willMove(toParent: nil)
            pinkVC.view.removeFromSuperview()
            pinkVC.removeFromParent()
        }
        
    }
    
    
    var userPEAloadDatr:Dictionary<String,String>?
    init(depthlongPEA:UIFont,isAiRovertChat: Bool, userPEAloadDatr: Dictionary<String, String>? = nil,browsePEA:String) {
        self.isAiRovertChat = isAiRovertChat
        self.userPEAloadDatr = userPEAloadDatr
        minDepethPEA = depthlongPEA
        miebrowsePEA  = browsePEA
        super.init(nibName: nil, bundle: nil)
        rnpincolro = "#333333"
        putryViewPEA.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seeingHeaderPEA.layer.cornerRadius = 25
        seeingHeaderPEA.layer.masksToBounds = true
        
        if isAiRovertChat == true {
            videoCallBurPEA.isHidden = true
            seeingHeaderPEA.image = PEMAMakingupCreater.unniqiePEa.minePinkRobert?.pinkHeader
            seeingnamePEAlbl.text = PEMAMakingupCreater.unniqiePEa.minePinkRobert?.pinkName
            
        }else{
            seeingHeaderPEA.image = UIImage(named: userPEAloadDatr?["PEAusernAvatwer"] ?? "")
            seeingnamePEAlbl.text = userPEAloadDatr?["PEAusernkmer"]
            
        }
        chatRobinPEAView.rowHeight = UITableView.automaticDimension
        chatRobinPEAView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom:120, right: 0)
        chatRobinPEAView.estimatedRowHeight = 53
        chatRobinPEAView.dataSource = self
        chatRobinPEAView.delegate = self
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        for stpedr in buidingsPEA {
            if stpedr.count > 3 {
                handslovers.append(CGFloat(stpedr.count))
            }
            let uppenlsFC = stpedr.prefix(1).uppercased()
            if let firstC = uppenlsFC.first {
                pinkCHAPEA.append(firstC)
                counPink += 1
            }
        }

      
        chatRobinPEAView.backgroundColor = .clear
        chatRobinPEAView.separatorStyle = .none
        chatRobinPEAView.allowsSelection = false
        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            chatRobinPEAView.register(PEAChatttingKwerCell.self, forCellReuseIdentifier: "PEAChatttingKwerCellID")
           
            chatRobinPEAView.showsVerticalScrollIndicator = false
        }
       
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        
        NotificationCenter.default.addObserver(self, selector: #selector(backPagePEAchn), name: NSNotification.Name("removeblockUserPEA"), object: nil)
       
    }

    @IBAction func backPagePEAchn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    
    @IBAction func sendingoerPEAnoing(_ sender: UIButton) {
        inpwertPEA.resignFirstResponder()
        
        
        //直接发送
        if  let text = inpwertPEA.text,text.count > 0 {
            let dinloadData = ("Right",text)
            
            chatDigloglistShowing.append(dinloadData)
      
            inpwertPEA.text = nil
            inpwertPEA.resignFirstResponder()
            
            SVProgressHUD.show()
            
            
            var combineQuestionPEA = "\(text)"
            
            if let robert = PEMAMakingupCreater.unniqiePEa.minePinkRobert {
                combineQuestionPEA = "I would like to have a conversation with a dedicated chatbot, whose name is\(robert.pinkName), The topic of the conversation I hope to have is \(robert.pinkTopic), My personality traits are:\(robert.pinkpersonType), I hope to answer my conversations and questions based on these conditions. My question is\(text)"
            }
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5, execute: DispatchWorkItem(block: {
               
                self.chatRobinPEAView.reloadData()
                //如果是机器人聊天
                if self.isAiRovertChat == true{
                    let partnert = "question$$$$$questionType$$$$$eqNo$$$$$5555".components(separatedBy: "$$$$$")
                    let cnbh = [
                        partnert[0]: combineQuestionPEA,
                        partnert[1]: 1,
                        partnert[2]:partnert[3]
                    ]
                    
                    AF.request("http://www.bluefoxxyz.xyz/talktwo/askQuestionv2", method: .post, parameters:cnbh , encoding: JSONEncoding.default, headers: nil)
                        .responseJSON { response in
                            SVProgressHUD.dismiss()
                            var pinkCHAPEA: [Character] = []
                            var buidingsPEA = ["freely", "dynamics", "personalized"]
                            var handslovers: [CGFloat] = [33]
                            let quzoiu = 33.2
                            handslovers.append(quzoiu)
                           
                            switch response.result {
                            case .success(let value):
                                if let json = value as? [String: Any] {
                                    guard let content = json["data"] as? String else {
                                        let sucirAlert = CDAlertView(title: "Request error....", message: "", type: .error)
                                        sucirAlert.autoHideTime = 2
                                        sucirAlert.hideAnimations = { (center, transform, alpha) in
                                            transform = CGAffineTransform(scaleX: 3, y: 3)
                                            alpha = 0
                                        }
                                        sucirAlert.hideAnimationDuration = 0.3
                                        sucirAlert.show()
                                        return
                                    }
                                    let diologdata =  ("Left",content)
                                    var counPink:CGFloat = 2
                                    for stpedr in buidingsPEA {
                                        if stpedr.count > 3 {
                                            handslovers.append(CGFloat(stpedr.count))
                                        }
                                        let uppenlsFC = stpedr.prefix(1).uppercased()
                                        if let firstC = uppenlsFC.first {
                                            pinkCHAPEA.append(firstC)
                                            counPink += 1
                                        }
                                    }

                                    if (counPink >= 10) {
                                        counPink += handslovers.last ?? 1
                                    }else{
                                        
                                        counPink += 12
                                    }

                                    if counPink >= 10 &&  buidingsPEA.count > 2{
                                        self.chatDigloglistShowing.append(diologdata)
                                
                                        self.chatRobinPEAView.reloadData()
                                    }
                                   

                                    self.chatRobinPEAView.scrollsToTop = true
                                    
                                    return
                                   
                                }
                                
                                let sucirAlert = CDAlertView(title: "Request error....", message: "", type: .error)
                                sucirAlert.autoHideTime = 2
                                sucirAlert.hideAnimations = { (center, transform, alpha) in
                                    transform = CGAffineTransform(scaleX: 3, y: 3)
                                    alpha = 0
                                }
                                sucirAlert.hideAnimationDuration = 0.3
                                sucirAlert.show()
                               
                            case .failure(let error):
                               
                                let sucirAlert = CDAlertView(title: "Request error....", message: "", type: .error)
                                sucirAlert.autoHideTime = 2
                                sucirAlert.hideAnimations = { (center, transform, alpha) in
                                    transform = CGAffineTransform(scaleX: 3, y: 3)
                                    alpha = 0
                                }
                                sucirAlert.hideAnimationDuration = 0.3
                                sucirAlert.show()
                            }
                            
                        }
                    
                    
                    return
                }
                
                SVProgressHUD.dismiss()
                
            }))
            return
        }
        let sucirAlert = CDAlertView(title: "Please enter content!", message: "", type:.warning)
        sucirAlert.autoHideTime = 2
        sucirAlert.hideAnimations = { (center, transform, alpha) in
            transform = CGAffineTransform(scaleX: 3, y: 3)
            alpha = 0
        }
        sucirAlert.hideAnimationDuration = 0.3
        sucirAlert.show()
        
    }
    
    
    @IBAction func reporthangePagePEAchn(_ sender: UIButton) {
        if sender == self.videoCallBurPEA{
            
            if let dafeter =  userPEAloadDatr  {
                var pinkfont = UIFont.systemFont(ofSize: 12, weight: .medium)
                if self.navigationController?.navigationBar.isHidden == true {
                    pinkfont = UIFont.systemFont(ofSize: 12, weight: .bold)
                }
                var handsDreamPEA = self.title ?? ""
                if handsDreamPEA == ""{
                    handsDreamPEA = "inspiration"
                }else{
                    handsDreamPEA.append("pinkper")
                }

                self.navigationController?.pushViewController(PEAUCallVideoCharhing.init(depthlongPEA:pinkfont,userPEAloadDatr: dafeter,browsePEA:handsDreamPEA), animated: true)
            }
           
            return
        }
        
        if sender.tag == 109{
            if isAiRovertChat == true  {
                let loinvc = PEAUAlREportCharhing.init()
                
                self.navigationController?.pushViewController(loinvc, animated: true)
                return
            }
            
            let sijfer1 = "Report or Block?$$$$$Are you sure you want to report or blacklist this user? After the user is blacklisted, all related information will no longer be displayed$$$$$Report$$$$$Block$$$$$Block successed!".components(separatedBy: "$$$$$")
            
            let tiuipsPEA = CDAlertView(title: sijfer1[0], message: sijfer1[1], type: .warning)
            let doneAction = CDAlertViewAction(title: sijfer1[2],textColor: .white,backgroundColor: .black) { cd in
                let loinvc = PEAUAlREportCharhing.init()
                
                self.navigationController?.pushViewController(loinvc, animated: true)
                return true
            }
            
            let baozhenPEAACtion = CDAlertViewAction(title: sijfer1[3],textColor: .white,backgroundColor: .black) { cd in
                var pinkCHAPEA: [Character] = []
                let buidingsPEA = ["freely", "dynamics", "personalized"]
                var handslovers: [CGFloat] = [33]
                let quzoiu = 33.2
                handslovers.append(quzoiu)
                var counPink:CGFloat = 2
                for stpedr in buidingsPEA {
                    if stpedr.count > 3 {
                        handslovers.append(CGFloat(stpedr.count))
                    }
                    let uppenlsFC = stpedr.prefix(1).uppercased()
                    if let firstC = uppenlsFC.first {
                        pinkCHAPEA.append(firstC)
                        counPink += 1
                    }
                }

                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

                if counPink >= 10 &&  buidingsPEA.count > 2{
                    SVProgressHUD.show()
                }

               
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                    SVProgressHUD.dismiss()
                    let sucirAlert = CDAlertView(title: sijfer1[4], message: "", type: .success)
                    sucirAlert.autoHideTime = 2
                    sucirAlert.hideAnimations = { (center, transform, alpha) in
                        transform = CGAffineTransform(scaleX: 3, y: 3)
                        alpha = 0
                    }
                    sucirAlert.hideAnimationDuration = 0.3
                    sucirAlert.show()
                    
                    var pinkfont = UIFont.systemFont(ofSize: 12, weight: .medium)
                    if self.navigationController?.navigationBar.isHidden == true {
                        pinkfont = UIFont.systemFont(ofSize: 12, weight: .bold)
                    }
                    var handsDreamPEA = self.title ?? ""
                    if handsDreamPEA == ""{
                        handsDreamPEA = "inspiration"
                    }else{
                        handsDreamPEA.append("pinkper")
                    }
                    PEMAMakingupCreater.unniqiePEa.removePEAUSetuser(depthlongPEA:pinkfont,getinguserIDPEA: self.userPEAloadDatr ?? [:],browsePEA:handsDreamPEA)
                   
                }))
                return true
            }
            
            tiuipsPEA.add(action: doneAction)
            tiuipsPEA.add(action: baozhenPEAACtion)
            
            tiuipsPEA.show()
        }
        
        
        
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatDigloglistShowing.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
         let diologData = self.chatDigloglistShowing[indexPath.row]
        let chateCell = tableView.dequeueReusableCell(withIdentifier: "PEAChatttingKwerCellID", for: indexPath) as! PEAChatttingKwerCell
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
        chateCell.diriction = diologData.0
        
        chateCell.cahtingContetnPEAView.text =  diologData.1
        return chateCell
      
        
    }
    
}
