//
//  DSORHpmerrfairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import Pastel
import Toast_Swift
class DSORHpmerrfairyTale: UIViewController {
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

    
    @IBOutlet weak var onlinshowstateView: UIView!
    @IBOutlet weak var loguserPhotoDSOR: UIImageView!
    @IBOutlet weak var loguserNeraoDSOR: UILabel!
    
    @IBOutlet weak var logPickThemDSOR: UIImageView!
    
    
    @IBOutlet weak var tapstartView: UITextField!
 
    @IBOutlet weak var myRobertContainerDS: UIView!
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        logPickThemDSOR.image = UIImage(named: "skin_oobe\(DSORPujertLoafmuiner.shmured.choicesdBackDSOR)")
        loguserPhotoDSOR.image = DSORPujertLoafmuiner.shmured.mineuAvatorDS
        loguserNeraoDSOR.text = DSORPujertLoafmuiner.shmured.mineDattarDS?.dsNAme
        updateMinRobertUserDSOR()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loguserPhotoDSOR.layer.masksToBounds = true
        loguserPhotoDSOR.layer.cornerRadius = 30
       
        NotificationCenter.default.addObserver(self, selector: #selector(updateShingRoomUserDSOR), name: NSNotification.Name.init("deleteringUnlikeUserDSOR"), object: nil)
        
        tapstartView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(taptochatenteDSORVb)))
        
        
        
        self.view.makeToastActivity(.center)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5){
            self.updateShingRoomUserDSOR()
            self.view.hideToastActivity()
        }
       
    }
    
    @objc func updateShingRoomUserDSOR()  {
       
       
        for item in self.onlinshowstateView.subviews {
            item.removeFromSuperview()
        }
        for (mio,Iter) in DSORPujertLoafmuiner.shmured.fansTotalDSOR.enumerated() {
            let avaor = DSORHomeoomTopr.init()
            avaor.tag = mio + 100
            avaor.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gogointohatDSORVb(DSORsender:))))
            
            avaor.phortoDSOR.image = UIImage(named: Iter.dsPic)
            onlinshowstateView.addSubview(avaor)
            avaor.snp.makeConstraints { make in
                make.width.height.equalTo(46)
                make.trailing.equalTo(onlinshowstateView.snp.trailing).inset((58)*mio)
                make.centerY.equalToSuperview()
            }
            
        }
        
    }
    
    @objc func updateMinRobertUserDSOR()  {
       
       
       
        for (mio,Iter) in DSORPujertLoafmuiner.shmured.ownedRobertDSOR.enumerated() {
            let avaor = DSORHomeRobertVire.init()
            avaor.tag = mio + 1000
            avaor.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gogoinRobertChattDSORVb(DSORsender:))))
            avaor.robertnameDSOR.text = Iter.roberNameds
            avaor.robercentHEaderDSOR.image = UIImage(named: Iter.roberPicds)
            myRobertContainerDS.addSubview(avaor)
            avaor.snp.makeConstraints { make in
                make.width.equalTo(70)
                make.height.equalTo(54 + 14)
                make.trailing.equalTo(myRobertContainerDS.snp.trailing).inset(78 + (90)*mio)
                make.centerY.equalToSuperview()
            }
            
        }
        
    }
    @objc func gogoinRobertChattDSORVb(DSORsender: UITapGestureRecognizer) {
        let tagDSOR = (DSORsender.view?.tag ?? 1000) - 1000
       
        let datingDSORET =  DSORPujertLoafmuiner.shmured.ownedRobertDSOR[tagDSOR]
        self.navigationController?.pushViewController(DSORAiChatFailrTale.init(dsorRoberDAta: datingDSORET), animated: true)
        
    }
    
    
    
    @objc func gogointohatDSORVb(DSORsender: UITapGestureRecognizer) {
        let tagDSOR = (DSORsender.view?.tag ?? 100) - 100
       
       let datingDSORET =  DSORPujertLoafmuiner.shmured.fansTotalDSOR[tagDSOR]
       
        self.navigationController?.pushViewController(DSORUderCentwrrFairtale.init(usersingenterDSOR: datingDSORET), animated: true)
    }
    
    
    @objc func taptochatenteDSORVb() {
        let netr = (dsNAme:DSORPujertLoafmuiner.shmured.mineDattarDS?.dsNAme ?? "",dsPic:DSORPujertLoafmuiner.shmured.mineDattarDS?.dsPic ?? "",dsID:DSORPujertLoafmuiner.shmured.mineDattarDS?.dsID ?? "")
        
        let trandTaklkvc = DSORGuideFairtale.init(rootViewController: DSORRoomerUserChaffairyTale.init(uierDS: netr))
//        trandTaklkvc.modalPresentationStyle = .
        self.present(trandTaklkvc, animated: true)
    }
    
    
    @IBAction func taptochatDSORVb(_ sender: UIButton) {
        let netr = (dsNAme:DSORPujertLoafmuiner.shmured.mineDattarDS?.dsNAme ?? "",dsPic:DSORPujertLoafmuiner.shmured.mineDattarDS?.dsPic ?? "",dsID:DSORPujertLoafmuiner.shmured.mineDattarDS?.dsID ?? "")
        
        let trandTaklkvc = DSORGuideFairtale.init(rootViewController: DSORRoomerUserChaffairyTale.init(uierDS: netr)) 
//        trandTaklkvc.modalPresentationStyle = .fullScreen
        self.present(trandTaklkvc, animated: true)
    }
    
    @IBAction func exporelyDSorStarty(_ sender: UIButton) {
        if sender.tag == 32 {
            //create
            self.navigationController?.pushViewController(DSORAiPickFairyTale.init(), animated: true)
            return
        }
        
        if sender.tag == 42 {
            //change
            self.navigationController?.pushViewController(DSORChangethemFairyTale.init(), animated: true)
            return
        }
        
        if sender.tag == 52 {
            //expole
            "Searching....."
            self.view.makeToastActivity(.center)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                self.view.hideToastActivity()
                self.navigationController?.pushViewController(DSORExporeOtherChaffairyTale.init(), animated: true)
                
            }
           
           
        }
        
    }
    
}


