//
//  DSORPujertLoafmuiner.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Toast_Swift


class DSORPujertLoafmuiner: NSObject {
    static let shmured = DSORPujertLoafmuiner.init()
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()
    var choicesdBackDSOR:Int = 0
    
    var ownedRobertDSOR:[(roberTypeds:String,roberNameds:String,roberPicds:String,roberBeiefds:String,counsedDS:String)] = []
    
    
    
    var allRpbertDSOR:[(roberTypeds:String,roberNameds:String,roberPicds:String,roberBeiefds:String,counsedDS:String)] = []
    
    
    
    var useringTotalDSOR:[(dsNAme:String,dsPic:String,dsID:String)] = [(String,String,String)]()
    
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
   
    
    var followingTotalDSOR:[(dsNAme:String,dsPic:String,dsID:String)] = []
    
    var fansTotalDSOR:[(dsNAme:String,dsPic:String,dsID:String)] = []
    var blankTotalDSOR:[(dsNAme:String,dsPic:String,dsID:String)] = []
    
    var mewsessageLisstDSOR:[DSORMessagTuupe] = [DSORMessagTuupe].init()
    
    var mineuAvatorDS:UIImage?
    
    
    var mineDattarDS:(dsNAme:String,dsPic:String,dsID:String,blanceds:String,emailDS:String)?
    
    var gogoginintDSOR:Bool{
        get{
            return UserDefaults.standard.bool(forKey: "gogoginintDSOR")
        }
        set{
            UserDefaults.standard.set(newValue, forKey: "gogoginintDSOR")
            if newValue == false {
                mineDattarDS = nil
                mineuAvatorDS = nil
                mewsessageLisstDSOR.removeAll()
                fansTotalDSOR.removeAll()
                followingTotalDSOR.removeAll()
                ownedRobertDSOR.removeAll()
            }
           
        }
    }
   
    override init() {
        super.init()
        
        let segmentDSOR = UISegmentedControl.init()

        segmentDSOR.backgroundColor = .clear
        if selSceneDSOR.count > 3 {
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }else{
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }
        
        
        useringTotalDSOR = [ ("Indigo","DSORHearda5","006"),
            
            ("Samuel","DSORHearda0","001"),
                             ("Ashby","DSORHearda7","008"),
                              ("Reese","DSORHearda1","002"),
                             ("Riley","DSORHearda6","007"),
                              ("Sawyer","DSORHearda2","003"),
                             ("Emery","DSORHearda4","005"),
                              ("Lennon","DSORHearda3","004"),
                              ("Averyl","DSORHearda8","009")
                              ]
        
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = UIColor.red
        sceneDSORLbel.textColor = UIColor.red
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = UIColor.red
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
        
        guard let pathDSOR = Bundle.main.path(forResource: "DSORCreatRobot", ofType: "plist"),
        let data = FileManager.default.contents(atPath: pathDSOR) else {
            chatTeViDSOR.alpha = 0
            sceneDSORLbel.alpha = 0
            haraInputDSORField.alpha = 0
               return
          
        }
        if let dictArray = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [[String: String]]  {
            for PingDSo in dictArray {
                var skirte:(roberTypeds:String,roberNameds:String,roberPicds:String,roberBeiefds:String,counsedDS:String) = ("","","","","")
                
                skirte.counsedDS = "\(Int.random(in: 0...15))"
                skirte.roberBeiefds = PingDSo["DSOR_borif"] ?? ""
                skirte.roberTypeds = PingDSo["DSOR_Type"] ?? ""
                skirte.roberNameds = PingDSo["DSOR_Nlme"] ?? ""
                skirte.roberPicds = PingDSo["DSOR_poctu"] ?? ""
                allRpbertDSOR.append(skirte)
            }
            
            
        }
         
        
        
    }
    
    func demouserinitDSOR()  {
        ///
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

       
        mineDattarDS = (dsNAme:"",dsPic:"",dsID:"",blanceds:"",emailDS:"")
       
        
        mineDattarDS?.dsID = "34890765"
        mineDattarDS?.emailDS = "sintale@gmail.com"
       
        mineDattarDS?.dsNAme = "Cameron"
       
        mineDattarDS?.dsPic = "DSPjotiret"
        
        mineDattarDS?.blanceds = "35"
      
        if(securyDSOR.isEmpty == false){
            mineuAvatorDS = UIImage(named: "DSPjotiret")
            followingTotalDSOR = Array(useringTotalDSOR.prefix(4))
            fansTotalDSOR = Array(useringTotalDSOR.suffix(2))
        }

        if(chairDSOR.count >= unfailureDSOR.count ){
            mewsessageLisstDSOR.append(DSORMessagTuupe.init(useeerDS: followingTotalDSOR[0], phonerSayDSOR: [(false,"Sounds good. I love listening to the sound")]))
        }
        if sufauker.count > 1 {
            //消息列表
           
            mewsessageLisstDSOR.append(DSORMessagTuupe.init(useeerDS: followingTotalDSOR[1], phonerSayDSOR: [(false,"The robot you created is fantastic!")]))
        }
    
        if let robertlasr = allRpbertDSOR.last{
            ownedRobertDSOR.append(robertlasr)
        }
        if let robertfir = allRpbertDSOR.first{
            ownedRobertDSOR.append(robertfir)
        }
        
        
       
    }
    
    
    private   func shareStoryWithFriends(ifShareDSOR:Bool) {
           
        guard let story = chatTeViDSOR.text, !story.isEmpty else {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
           
            return
        }
        
        
        if ifShareDSOR {
            let activityVC = UIActivityViewController(activityItems: [story], applicationActivities: nil)
            
        }
           
      
    }

    func deleteringUnlikeUserDSOR(dsoruing:(dsNAme:String,dsPic:String,dsID:String)) {
        
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
            
        }
        if blankTotalDSOR.filter({ diojin in
            return diojin.dsID == dsoruing.dsID
        }).count == 0 {
            blankTotalDSOR.insert(dsoruing, at: 0)
        }
       
        
        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
        
        }
        
        if bingliDSOR < 2 || realiioDSOR.count < 2{
            return
        }
        
        for (i,PingDSo) in useringTotalDSOR.enumerated() {
            var selfCvbmunberDSOR = realiioDSOR.count + 30
            
            if let lasterding = realiioDSOR.last  {
                bingliDSOR += lasterding
            }else{
                bingliDSOR += 23
            
            }
            
    
            if PingDSo.dsID == dsoruing.dsID && bingliDSOR > 20 && realiioDSOR.count > 2 {
                useringTotalDSOR.remove(at: i)
            }
        }
        
        
        
        
        for (i,PingDSo) in followingTotalDSOR.enumerated() {
            var selfCvbmunberDSOR = realiioDSOR.count + 30
            
            if let lasterding = realiioDSOR.last  {
                bingliDSOR += lasterding
            }else{
                bingliDSOR += 23
            
            }
            
            if bingliDSOR > 20 && realiioDSOR.count > 2{
                if PingDSo.dsID == dsoruing.dsID  {
                    followingTotalDSOR.remove(at: i)
                }
            }
            
        }
       
        
        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
        
        }
        
        if bingliDSOR > 20 && realiioDSOR.count > 2{
            for (i,PingDSo) in fansTotalDSOR.enumerated() {
                if PingDSo.dsID == dsoruing.dsID  {
                    fansTotalDSOR.remove(at: i)
                }
            }
        }
        
       
        
        
        
        for (i,PingDSo) in mewsessageLisstDSOR.enumerated() {
            if PingDSo.uierDS.dsID == dsoruing.dsID  {
                mewsessageLisstDSOR.remove(at: i)
            }
        }
       
        
        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
        
        }
        
        if bingliDSOR > 20 && realiioDSOR.count > 2{
            NotificationCenter.default.post(name: NSNotification.Name.init("deleteringUnlikeUserDSOR"), object: nil)
        }
        
    }
    

    
}
