//
//  LiSSpSearcZIPostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpSearcZIPostfrbucue:  LissipSecondFrbucue,UITextFieldDelegate {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var serachBackWhiteSSIp: UIView!
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    
    @IBOutlet weak var inserTextSSIpView: UITextField!
    
    @IBOutlet weak var empholderSSIP: UIImageView!
    
    @IBOutlet weak var empholdercontentSSIP: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enImageSSIPOViol.isHidden = true
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        empholderSSIP.isHidden = true
        ssuipCreaNet()
    }
    private func ssuipCreaNet() {
        serachBackWhiteSSIp.maskLippaRoundCorner(rMakLSSIpadius: 27.5)
        inserTextSSIpView.returnKeyType = .search
        inserTextSSIpView.delegate = self
    }
    
    private func ssuitreatNet() {
        AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        self.empholdercontentSSIP.text =  "Sfoprpryyq,x euendasbrluez pttoi wlcopavdc ltyhtea lcmobnetzeinbths".oranApolWothCharrterString()
        self.empholderSSIP.isHidden = false
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let contextSSip = textField.text ,contextSSip.isEmpty == false{
            empholdercontentSSIP.text = "Sqefaurvcuhqirnwge.z.z.".oranApolWothCharrterString()
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Sqefaurvcuhqirnwge.z.z.".oranApolWothCharrterString(), loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 2.5) {
                self.ssuitreatNet()
            }
        }
        
        
        return true
    }

}
