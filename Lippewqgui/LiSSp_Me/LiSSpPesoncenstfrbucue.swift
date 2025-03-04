//
//  LiSSpPesoncenstfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpPesoncenstfrbucue:   LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    @IBOutlet weak var whonameSIPP: UILabel!
    
    @IBOutlet weak var ownedSIpp: UIImageView!
    
    @IBOutlet weak var descnameSIPP: UILabel!
    
    
    @IBOutlet weak var fancereCountSIpp: UILabel!
    
    @IBOutlet weak var fowerereCountSIpp: UILabel!
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    
    @IBOutlet weak var opwerSIPP: UIImageView!
    
    @IBOutlet weak var editSSSIPo: UIButton!
    
    @IBOutlet weak var shintestBuutonSSIP: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ownedSIpp.image = LipSigggneSnmingertips.logPucserdataSSIP
        
        whonameSIPP.text = LipSigggneSnmingertips.logUoserdataSSIP["ssipNadme"]
        
        fancereCountSIpp.text = "\(LiSSpMeBootomrbucue.facrewemeSSIP.count)"
        
        ssuipCreaNet()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enImageSSIPOViol.isHidden = true
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        opwerSIPP.layer.masksToBounds = true
        
        editSSSIPo.maskLippaRoundCorner(rMakLSSIpadius: 16)
        ownedSIpp.maskLippaRoundCorner(rMakLSSIpadius: 38)
        opwerSIPP.maskLippaRoundCorner(rMakLSSIpadius: 38)
        shintestBuutonSSIP.maskLippaRoundCorner(rMakLSSIpadius: 14)
     
        
    }

    private func ssuipCreaNet() {
        fowerereCountSIpp.text = "\(LiSSpMeBootomrbucue.FolsdwemeSSIP.count)"
        opwerSIPP.image = LipSigggneSnmingertips.logPucserdataSSIP
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        descnameSIPP.text = LipSigggneSnmingertips.logUoserdataSSIP["ssipDtfestBriedf"]
        opwerSIPP.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMinYCorner]
    }
    
    private func ssuitreatNet() {
        let achiole = view.viewWithTag(34) as? UIButton
        let achiole1 = view.viewWithTag(35) as? UIButton
        achiole?.isSelected = false
        achiole1?.isSelected = false
    }
    
    @IBAction func collectiontableSSIP(_ sender: UIButton) {
        if sender.tag == 990 {
           
            self.navigationController?.pushViewController(LiSSpEditFrBucue.init(), animated: true)
            
            return
        }
       
        ssuitreatNet()
        
        sender.isSelected = true
    }
    
    
    
    
    
}
