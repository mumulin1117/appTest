//
//  DSORUderCentwrrFairtale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Toast_Swift
class DSORUderCentwrrFairtale: UIViewController {
    @IBOutlet weak var avatoDSOR: UIImageView!
    
    @IBOutlet weak var vartebiger: UIImageView!
    
    @IBOutlet weak var usernalekDSOR: UILabel!
    
    
    @IBOutlet weak var follownalekDSOR: UILabel!
    
    @IBOutlet weak var fansnalekDSOR: UILabel!
    
    let ownedRobert = DSORPujertLoafmuiner.shmured.allRpbertDSOR.randomElement()
    
    
    
    @IBOutlet weak var likeingstatusDSOR: UIButton!
    
    
    @IBAction func singvreTruDSOR(_ sender: UIButton) {
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
        if sender.tag == 10 {
            self.view.makeToastActivity(.center)
            var securyDSOR:Set<CGFloat> = [122,344,566,588]
            var sufauker = ["securyDSOR","unfailureDSOR"]

            var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
            var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)

          
            if sufauker.count < 1 {
                return
            }
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                self.view.hideToastActivity()
                sender.isSelected = !sender.isSelected
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

                
                if DSORPujertLoafmuiner.shmured.followingTotalDSOR.filter({$0.dsID == self.usersingenterDSOR.dsID}).count == 0 && sender.isSelected == true{
                    
                    if(chairDSOR.count < unfailureDSOR.count ){
                        return
                    }
                    
                    DSORPujertLoafmuiner.shmured.followingTotalDSOR.insert(self.usersingenterDSOR, at: 0)
                }
                
                if DSORPujertLoafmuiner.shmured.followingTotalDSOR.filter({$0.dsID == self.usersingenterDSOR.dsID}).count >= 1 && sender.isSelected == false{
                    for (iooo,Item) in DSORPujertLoafmuiner.shmured.followingTotalDSOR.enumerated() {
                        if Item.dsID == self.self.usersingenterDSOR.dsID {
                            if(chairDSOR.count < unfailureDSOR.count ){
                                return
                            }
                            DSORPujertLoafmuiner.shmured.followingTotalDSOR.remove(at: iooo)
                        }
                    }
                }
               
              
              
                return
            }))
            return
        }
        
        if sender.tag == 11 {
            
            
            if let dislist = DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR.filter({ DSORMessagTuupe in
                DSORMessagTuupe.uierDS.dsID == self.usersingenterDSOR.dsID
            }).first {
                self.navigationController?.pushViewController(DSORChatuserFairtale.init(diolog: dislist), animated: true)
            }else{
                
                let diolisr = DSORMessagTuupe.init(useeerDS: usersingenterDSOR, phonerSayDSOR: [])
                
                self.navigationController?.pushViewController(DSORChatuserFairtale.init(diolog:diolisr ), animated: true)
                
                
                
            }
            
            
            return
        }
        
        
        if sender.tag == 12 {
            self.navigationController?.pushViewController(DSORVVedroserFairtale.init(usersingenterDSOR: self.usersingenterDSOR), animated: true)
            return
        }
    }
    
    @IBOutlet weak var roberintMine: UICollectionView!
    
    
    var usersingenterDSOR:(dsNAme:String,dsPic:String,dsID:String)
    init( usersingenterDSOR: (dsNAme: String, dsPic: String, dsID: String)) {
        
        self.usersingenterDSOR = usersingenterDSOR
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
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
        vartebiger.image = UIImage(named: usersingenterDSOR.dsPic)
        avatoDSOR.image = UIImage(named: usersingenterDSOR.dsPic)
        usernalekDSOR.text = usersingenterDSOR.dsNAme
        
        follownalekDSOR.text = "\(Int.random(in: 0...3))"
        fansnalekDSOR.text = "\(Int.random(in: 0...3))"
        
        
        
        avatoDSOR.layer.cornerRadius = 53
        avatoDSOR.layer.masksToBounds = true
        avatoDSOR.layer.borderColor = UIColor(red: 0.62, green: 0.08, blue: 0.04, alpha: 1).cgColor
        avatoDSOR.layer.borderWidth = 1.5
        
       
        roberintMine.backgroundColor = .clear
        roberintMine.delegate = self
        roberintMine.dataSource = self
     
                
        roberintMine.register(DSORDiscoverRecentCel.self, forCellWithReuseIdentifier: "DSORDiscoverRecentCelID")
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
        NotificationCenter.default.addObserver(self, selector: #selector(laterDSOR), name: NSNotification.Name.init("deleteringUnlikeUserDSOR"), object: nil)
        
//        self.roberintMine = activeCollview
        
    }

    @IBAction func laterDSOR(_ sender: Any) {
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
                    DSORPujertLoafmuiner.shmured.deleteringUnlikeUserDSOR(dsoruing: self.usersingenterDSOR)
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
}
extension DSORUderCentwrrFairtale:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize.init(width: 105, height: 127)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dsorcee = collectionView.dequeueReusableCell(withReuseIdentifier: "DSORDiscoverRecentCelID", for: indexPath) as! DSORDiscoverRecentCel
        dsorcee.robertnameDSOR.text = ownedRobert?.roberNameds
        dsorcee.robercentHEaderDSOR.image = UIImage(named: ownedRobert?.roberPicds ?? "")
        return dsorcee
    }
    
    
    

    
    
    
}
