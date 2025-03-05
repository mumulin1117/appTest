//
//  DSORExporeOtherChaffairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import Toast_Swift
//他人聊天室
class DSORExporeOtherChaffairyTale: UIViewController {
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

    
    
    @IBOutlet weak var logPickThemDSOR: UIImageView!
    @IBOutlet weak var onlinshowstateView: UIView!
    @IBOutlet weak var myRobertContainerDS: UIView!
    
    
    @IBOutlet weak var loguserPhotoDSOR: UIImageView!
    @IBOutlet weak var loguserNeraoDSOR: UILabel!
    
    @IBOutlet weak var tapstartView: UITextField!
    //房主信息
    var ranodmRoomhoster = DSORPujertLoafmuiner.shmured.useringTotalDSOR.randomElement()
    
    //其他人
    var ranodmTopUseroster = DSORPujertLoafmuiner.shmured.useringTotalDSOR.shuffled().randomElement()
   //机器人
    let randomlisdt = Array(DSORPujertLoafmuiner.shmured.allRpbertDSOR.shuffled().prefix(2))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loguserPhotoDSOR.image = UIImage(named: ranodmRoomhoster?.dsPic ?? "")
        loguserNeraoDSOR.text = ranodmRoomhoster?.dsNAme
        
        logPickThemDSOR.image = UIImage(named: "skin_oobe\(Int.random(in: 0...5))")
        
        loguserPhotoDSOR.layer.masksToBounds = true
        loguserPhotoDSOR.layer.cornerRadius = 30
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
        NotificationCenter.default.addObserver(self, selector: #selector(updateShingRoomUserDSOR), name: NSNotification.Name.init("deleteringUnlikeUserDSOR"), object: nil)
        
        tapstartView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(taptochatenteDSORVb)))
        addToplonnerUseDSOR()
        updateShingRoomUserDSOR()
        updateMinRobertUserDSOR()
    }


    @objc func updateShingRoomUserDSOR()  {
       
        if DSORPujertLoafmuiner.shmured.blankTotalDSOR.filter({ sdooo in
            return sdooo.dsID == ranodmRoomhoster?.dsID
        }).count > 0 {
            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }
    
    
    
    func addToplonnerUseDSOR()  {
        for item in self.onlinshowstateView.subviews {
            item.removeFromSuperview()
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
            
            let sindure = UIView(frame: .init(x: 9, y: 9, width: 0, height: 1))
            sindure.backgroundColor = .clear
            self.view.addSubview(sindure)
            sindure.isHidden = true
        }
        let avaor = DSORHomeoomTopr.init()
        if bingliDSOR > 20 && realiioDSOR.count > 2{
            avaor.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gogointohatDSORVb(DSORsender:))))
                
            avaor.phortoDSOR.image = UIImage(named: self.ranodmTopUseroster?.dsPic ?? "")
        }
          
          
           
       
            onlinshowstateView.addSubview(avaor)
            avaor.snp.makeConstraints { make in
                make.width.height.equalTo(46)
                make.trailing.equalTo(onlinshowstateView.snp.trailing).inset(20)
                make.centerY.equalToSuperview()
            }
            
//        }
    }
    @objc func updateMinRobertUserDSOR()  {
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

       
        for (mio,Iter) in randomlisdt.enumerated() {
            let avaor = DSORHomeRobertVire.init()
            avaor.tag = mio + 1000
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
                avaor.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gogoinRobertChattDSORVb(DSORsender:))))
                avaor.robertnameDSOR.text = Iter.roberNameds
            }
           
            avaor.robercentHEaderDSOR.image = UIImage(named: Iter.roberPicds)
            myRobertContainerDS.addSubview(avaor)
            avaor.snp.makeConstraints { make in
                make.width.equalTo(74)
                make.height.equalTo(62)
                make.top.equalTo(myRobertContainerDS.snp.top).inset( (62 + 18)*mio)
                make.centerX.equalToSuperview()
            }
            
        }
        
    }
    @objc func gogoinRobertChattDSORVb(DSORsender: UITapGestureRecognizer) {
        let tagDSOR = (DSORsender.view?.tag ?? 1000) - 1000
       
       let datingDSORET =  randomlisdt[tagDSOR]
       
       
        self.navigationController?.pushViewController(DSORAiChatFailrTale.init(dsorRoberDAta: datingDSORET), animated: true)
        
    }

    
    
    @objc func gogointohatDSORVb(DSORsender: UITapGestureRecognizer) {
        if let rangkDSOR = ranodmTopUseroster {
            self.navigationController?.pushViewController(DSORUderCentwrrFairtale.init(usersingenterDSOR: rangkDSOR), animated: true)
        }
       
    }
    
    
    @IBAction func gorommhosterCenter(_ sender: Any) {
        
        if let raomgi = ranodmRoomhoster {
            self.navigationController?.pushViewController(DSORUderCentwrrFairtale.init(usersingenterDSOR:raomgi ), animated: true)
            //查看房主
        }
        
    }
    
    @objc func taptochatenteDSORVb() {
        if let hoster = self.ranodmRoomhoster  {
            let trandTaklkvc = DSORGuideFairtale.init(rootViewController: DSORRoomerUserChaffairyTale.init(uierDS:hoster )) 
//            trandTaklkvc.modalPresentationStyle = .fullScreen
            self.present(trandTaklkvc, animated: true)
        }
        
    }
    
    
    @IBAction func taptochatDSORVb(_ sender: UIButton) {
        if let hoster = self.ranodmRoomhoster  {
            let trandTaklkvc = DSORGuideFairtale.init(rootViewController: DSORRoomerUserChaffairyTale.init(uierDS:hoster ))
//            trandTaklkvc.modalPresentationStyle = .fullScreen
            self.present(trandTaklkvc, animated: true)
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
    
    @IBAction func exporelyDSorStarty(_ sender: UIButton) {
      
        if sender.tag == 52 {
            //expole
            self.navigationController?.pushViewController(DSORExporeOtherChaffairyTale.init(), animated: true)
            return
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

}
