//
//  LiSSpChatVideostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpChatVideostfrbucue:  LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    var postCenDataSSIP:Dictionary<String,String>
    init(postCenDataSSIP: Dictionary<String, String>) {
    
        self.postCenDataSSIP = postCenDataSSIP
        super.init(nibName: nil, bundle: nil)
    }
    @IBOutlet weak var haodaSSIP: UIImageView!
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var shinmaskerlayerSSip: UIImageView!
    
    @IBOutlet weak var nicmerSSIP: UILabel!
    
    @IBOutlet weak var babdaerView: UIImageView!
    
    
    private func ssuipCreaNet() {
        nicmerSSIP.text = postCenDataSSIP["ssipNadme"] ?? ""
        babdaerView.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
    }
    
    private func ssuitreatNet() {
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        shinmaskerlayerSSip.maskLippaRoundCorner(rMakLSSIpadius: 21)
        
        
        shinmaskerlayerSSip.image = LipSigggneSnmingertips.logPucserdataSSIP
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ssuipCreaNet()
      
        haodaSSIP.image = UIImage(named: postCenDataSSIP["ssipPicdty"] ?? "")
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 18)
        
       
        ssuitreatNet()
        
        self.performBlockAfterDelayINSSIP(secondsSSIP: 8.0) {
           
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Tyhgea nuzsmeiri sinsg tnyostu koznflmidnseo,o hpblsetaisyet scgaollla rlkaetqerr".oranApolWothCharrterString(), loaingShowView: self.view)
            
            
        }
       
    }

    
    
    
    
    @IBAction func touchingDeRefused(_ sender: UIButton) {
        if sender.tag == 45{
            ctterBsdNoingSSIP()
            return
        }
        
        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Tchcep fuwsnezrw qiksp rngofts pornoleirndea,t vplltevanskem kcehxagnlgveo zcbaxlulx xsqtmaqtsuxso yadfitqeqrb bczodnanoeicutqevdc!".oranApolWothCharrterString(), loaingShowView: self.view)
        
        
        
        
    }
    
    
    
    
    

    @IBAction func chpickedCLIKSSip(_ sender: UIButton) {
        
        let onlyID = self.postCenDataSSIP["ssipAccID"] ?? ""
        showingBloakjPickVC(withBloackID: onlyID)
                            
                            
      
    }
    
    
  
}
