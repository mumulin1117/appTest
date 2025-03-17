//
//  LiSSpTieZIngefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

/// 帖子详情
class LiSSpTieZIngefrbucue:  LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    @IBOutlet weak var tioewziSIPP: UILabel!
    
    @IBOutlet weak var postingUserimgSSIP: UIImageView!
    
    @IBOutlet weak var postusernamSSIP: UILabel!
    
    
    @IBOutlet weak var postingCOntentCAseSSIP: UIImageView!
    
    
    
    @IBOutlet weak var postingContetntesxrSSIP: UILabel!
    
    
    
    @IBOutlet weak var coaprmentSSIP: UIButton!
    
    @IBOutlet weak var tibluebackSSIP: UIView!
    
    @IBOutlet weak var collecPost: UIButton!
    
    var postCenDataSSIP:Dictionary<String,String> = Dictionary<String,String>()
//    init(postCenDataSSIP: Dictionary<String, String>) {
//    
//        self.postCenDataSSIP = postCenDataSSIP
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//     required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        postingUserimgSSIP.maskLippaRoundCorner(rMakLSSIpadius: 21.5)
        
        
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        if SistertSSIp.count > 0 {
            NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        }
        
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
        
        tibluebackSSIP.maskLippaRoundCorner(rMakLSSIpadius: 20)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collecPost.isSelected = (postCenDataSSIP["islikeThisPublish"] == "SSIPLike")
        collecPost.isSelected = (postCenDataSSIP["islikeThisPublish"] == "SSIPLike")
        postingUserimgSSIP.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        ssuipCreaNet()
    }
    private func ssuipCreaNet() {
        
        postusernamSSIP.text = postCenDataSSIP["ssipNadme"]
        tioewziSIPP.text = "Dynamic Details"
        postingCOntentCAseSSIP.image = UIImage(named: postCenDataSSIP["ssipPublishPic"] ?? "")
        
        postingContetntesxrSSIP.text = postCenDataSSIP["ssipPublishDesc"]
    }
    
   
    @IBAction func shingcaseOriginReport(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Rsexphojrotm gCnounutfeznjt".oranApolWothCharrterString(), message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Harassment or Bullying","Inappropriate Content","Spam or Scam Attempts","Hate Speech"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                self.ssuitreatNet()
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "Cmabnvcjeel".oranApolWothCharrterString(), style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    private func ssuitreatNet() {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Rgeyquuieesptn.k.h.".oranApolWothCharrterString(), loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
            AppDelegate.showSSIPSuccessTips(acccusString: "Tpheahnlkf uyfojuh nfoobra oyooauqrr gsmuqpmemrfvjiosvimoxna.b iWreu tweimlllu fvreirpibfbyy calnedv ohwatnmdtlfef qiptg gabsa qsxoxoynx kajsa cpsonsespiabkloe".oranApolWothCharrterString())
        }
    }
    
    
    @IBAction func giventSSUP(_ sender: UIButton) {
        
        self.present(LiSSpCommwnentsingefrbucue.init(), animated: true)
    }
    
    
    @IBAction func getinguserSSUP(_ sender: UIButton) {
        let usermingming = postCenDataSSIP
        
        let useriSSIP = LiSSpItmeringBucue.init()
        useriSSIP.postCenDataSSIP = usermingming
        self.navigationController?.pushViewController(useriSSIP, animated: true)
       
        
    }
    
    @IBAction func colllectioChagentSSUP(_ sender: UIButton) {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Rwedqkuleyssteiqnjgr.x.q.".oranApolWothCharrterString(), loaingShowView: self.view)
        self.performBlockAfterDelayINSSIP(secondsSSIP: 1.0) {
            sender.isSelected = !sender.isSelected
            
//            LiSSpBArbucue.SSIPlA.giveAttitudeTirtNenterBottomUser(transderinfo: self.postCenDataSSIP, isSSIPlijer:  sender.isSelected)
            if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
              
                for (u,item) in appledeelgate.totalvrdataSSIP.enumerated() {
                    if item ["ssipAccID"] == self.postCenDataSSIP ["ssipAccID"]{
                        appledeelgate.totalvrdataSSIP[u]["islikeThisPublish"] = sender.isSelected ? "SSIPLike" : "SSIPUNLike"
                       
                        
                    }
                }
            }
            
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        }
      
    }
    
    

}
