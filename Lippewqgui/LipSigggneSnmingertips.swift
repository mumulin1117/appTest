//
//  LipSigggneSnmingertips.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
import IQKeyboardManager
class LipSigggneSnmingertips: UIViewController {

    @IBOutlet weak var signSSIPin: UIButton!
    
    @IBOutlet weak var entrtSSIPOEmail: UITextField!
    
    @IBOutlet weak var entrtSSIPOPsw: UITextField!
    
    @IBOutlet weak var linkerConditonSSIp: UILabel!
    
    @IBOutlet weak var statauseSSIP: UIButton!
    
    
    static var logUoserdataSSIP:Dictionary<String,String> = Dictionary<String,String>()
    
    static var logPucserdataSSIP:UIImage?
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let ifAgreenREsult = UserDefaults.standard.bool(forKey: "isagreeeeSSIP")
        
        statauseSSIP.isSelected = ifAgreenREsult
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let ifseawedREsult = UserDefaults.standard.bool(forKey: "ifShowendNoewLISSAP")
        
        if ifseawedREsult == false {
            ssuitreatNet()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IQKeyboardManager.shared().isEnabled = true
        signSSIPin.maskLippaRoundCorner(rMakLSSIpadius: 27)
        
        addLinkkkUrelSSIP()
        statauseSSIP.addTarget(self, action: #selector(statusdiihiiSSIP), for: .touchUpInside)
        signSSIPin.addTarget(self, action: #selector(hihiiSSIP), for: .touchUpInside)
        
    }
   
    
    private func ssuitreatNet() {
        
        
        self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: nil), animated: true)
        UserDefaults.standard.set(true, forKey: "ifShowendNoewLISSAP")
    }
    
    private func addLinkkkUrelSSIP()  {
        linkerConditonSSIp.isUserInteractionEnabled = true
        linkerConditonSSIp.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(welcomnoingSSSIP)))
    }
    
    @objc func hihiiSSIP() {
        self.entrtSSIPOEmail.resignFirstResponder()
        self.entrtSSIPOPsw.resignFirstResponder()
       
        
        if statauseSSIP.isSelected == false {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Pdlweralsfep proeeaydg famnwdo fadgwryeeeo itiot dtehger gtbepramjsl yaunidn uckoxnudzidtniqopndsj jfiirrnsztr.".oranApolWothCharrterString(), loaingShowView: self.view)
          
            return
        }
        
        
        guard let contenEmailSSIP = entrtSSIPOEmail.text,
        let contetntPaseSSIP = entrtSSIPOPsw.text,
              !contenEmailSSIP.isEmpty,
        !contetntPaseSSIP.isEmpty else {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Ezmfariall kaidmdhrhersmsj iobrc sprapsosswpolrbdw zcjalns onyoqtw obxex levmbpgtfy".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        
        
        if contetntPaseSSIP.count < 6 || contetntPaseSSIP.count > 12 {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "pdatsmsuweoqredv xcroaugnpte bsvhxobublodm ubaef aiwna n(i6e-o1n2u dchhsamrmahcvtqerrssc)".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
       
//        if contenEmailSSIP == "lippa@gmail.com" {
//            ssuipCreaNet()
//             
//            return
//
//        }
        
        self.readyLippaToCreateNew(contenEmailSSIP: contenEmailSSIP)
        
    }
    
    private func ssuipCreaNet() {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lcoygx hiynd d.r.g.a.".oranApolWothCharrterString(), loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 1.5) {
            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
           
            self.comeSSIPONenterBottomUser()

            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
           
            AppDelegate.showSSIPSuccessTips(acccusString: "Lyoxgg fiunn lsfuycrckelswsxfeuqlm!".oranApolWothCharrterString())
           
        }

    }
    
    @objc func statusdiihiiSSIP() {
        statauseSSIP.isSelected = !statauseSSIP.isSelected
        UserDefaults.standard.set(statauseSSIP.isSelected, forKey: "isagreeeeSSIP")

    }
    
    
    
    @IBAction func welcomnoingSSSIP(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(LiSSpELUABootomrbucue.init(controllerSSIPType: nil), animated: true)
        
    }
    
    
    func comeSSIPONenterBottomUser() {
     

        
        LipSigggneSnmingertips.logPucserdataSSIP = AppDelegate.readLocalAvatoWituserSSIPI(usrSSIPID:"345")
        
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            
            LiSSpMeBootomrbucue.FolsdwemeSSIP = Array(appledeelgate.totalvrdataSSIP.shuffled().prefix(1))
            LiSSpMeBootomrbucue.facrewemeSSIP = Array(appledeelgate.totalvrdataSSIP.shuffled().prefix(1))
            
            if let laiker = appledeelgate.totalvrdataSSIP.first  {
                let comengONe = SSIPChatUSerFwbnke(whoseSSIP: laiker, chatSSIPList: [(true,"What kind of art do you collect?"),(false,"I love oil paintings, especially Impressionism.")])//.init(_whoseSSIP: laiker, _chatSSIPList: [(true,"What kind of art do you collect?"),(false,"I love oil paintings, especially Impressionism.")])
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(comengONe)

            }
            
            if  appledeelgate.totalvrdataSSIP.count >= 2 {
                
                let laiet = appledeelgate.totalvrdataSSIP[1]
                let comengtwo = SSIPChatUSerFwbnke.init(whoseSSIP: laiet, chatSSIPList: [(false,"How do you choose what to collect?"),(true,"I mainly look for emotional resonance in the work.")])
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(comengtwo)
                
            }
            
            
            if  appledeelgate.totalvrdataSSIP.count >= 3 {
                
                let laidsan = appledeelgate.totalvrdataSSIP[2]
                let comengtwo = SSIPChatUSerFwbnke.init(whoseSSIP: laidsan, chatSSIPList: [(false,"Any advice on collecting art?")])
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(comengtwo)
                
            }
        }
       
    }
}


extension LipSigggneSnmingertips{
    
    private func readyLippaToCreateNew(contenEmailSSIP:String)  {
     
        let presSSIP = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        let emailPreSSIPO = NSPredicate(format:"SELF MATCHES %@", presSSIP)
        
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title
        
        let boollSSIP = emailPreSSIPO.evaluate(with: contenEmailSSIP)
        labeSiop.textColor = view.backgroundColor
        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
       
        if boollSSIP == false {
            if entrtSSIPOEmail.isHidden  {
                entrtSSIPOEmail.addSubview(labeSiop)
            }
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Tohpeg xesmtabimlq efloarfmuaitf tymoduo ceunptwerrzende cijsp nihnacsoorvrwedcqt".oranApolWothCharrterString(), loaingShowView: self.view)
            return
        }
        
        //判断该邮箱是否注册，注册了，就是登陆-获取本地数据，
        var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
      
        if let yxaccount = allUserDataSSIP.filter({ dicUserSSIP in
            return dicUserSSIP["ssipDtfestAccount"] == contenEmailSSIP
        }).first {
            LipSigggneSnmingertips.logUoserdataSSIP = yxaccount//注册了，就是登陆-获取本地数据
            let useid = yxaccount["ssipAccID"]
            if useid == "345" {//如果是测试账号，添加测试数据
                self.comeSSIPONenterBottomUser()
            }else{
                LipSigggneSnmingertips.logPucserdataSSIP = AppDelegate.readLocalAvatoWituserSSIPI(usrSSIPID: useid ?? "345")//UIImage(named: "wode_mrtx")
            }
            UserDefaults.standard.set(useid, forKey: "siingeduserIDString")
            
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lcoygx hiynd d.r.g.a.".oranApolWothCharrterString(), loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 1.5) {
                AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
               
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
               
                AppDelegate.showSSIPSuccessTips(acccusString: "Lyoxgg fiunn lsfuycrckelswsxfeuqlm!".oranApolWothCharrterString())
               
            }
            
        }else{
          //没注册就是创建，
            let uid = "\(Int.random(in: 9000...10000))"
            UserDefaults.standard.set(uid, forKey: "siingeduserIDString")
            
            let newUserSSIP =  ["ssipNadme":"NpUuLgL".oranApolWothCharrterString(),
                                                                       
                                "ssipPicdty":"wode_mrtx",
                                "ssipDoimond":"0",
                                "ssipDtfestAccount":contenEmailSSIP,
                                "ssipDtfestBriedf":"NpUuLgL".oranApolWothCharrterString(),
                                "ssipAccID":uid
                                  
            ]
            
            allUserDataSSIP.append(newUserSSIP)
            UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
            
            
            LipSigggneSnmingertips.logUoserdataSSIP = newUserSSIP
            LipSigggneSnmingertips.logPucserdataSSIP = UIImage(named: "wode_mrtx")
            
          
            
            labeSiop.textColor = view.backgroundColor
            
            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            
           
            
            
            
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Ckraewaetdef uilnw m.v.s.f.".oranApolWothCharrterString(), loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 1.5) {
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)

                labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
                 
                if self.entrtSSIPOEmail.isHidden  {
                    self.entrtSSIPOEmail.addSubview(labeSiop)
                }
                
                
                
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
                
                
                AppDelegate.showSSIPSuccessTips(acccusString: "Lyobgo licnh pseufcvcsezsjscfsullv!".oranApolWothCharrterString())

            }
        }
        
        
       
    }
    
   
}
