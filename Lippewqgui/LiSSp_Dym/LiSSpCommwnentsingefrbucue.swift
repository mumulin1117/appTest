//
//  LiSSpCommwnentsingefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
/// 评论
class LiSSpCommwnentsingefrbucue:  LissipSecondFrbucue {
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    @IBOutlet weak var sendcommCOntetnSSIP: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIPDissmiss), for: .touchUpInside)

    }

   @objc func ctterBsdNoingSSIPDissmiss()  {
       self.dismiss(animated: true)
    }
    private func ssuipCreaNet() {
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Svebnpdfibnkgf.a.q.p.x.".oranApolWothCharrterString(), loaingShowView: self.view)
    }
    
    private func ssuitreatNet() {
        AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        self.dismiss(animated: true)
    }
    @IBAction func syresendSSIp(_ sender: UIButton) {
        ssuipCreaNet()
        
        self.performBlockAfterDelayINSSIP(secondsSSIP: 0.5) {
           
            self.ssuitreatNet()
            AppDelegate.showSSIPSuccessTips(acccusString: "Sremnjdy nsruvcvcheqsvsvfcuslw,k pytoxuarf tcfovmqmyeenstz xwgivlele nbpef xdniasoptlvaoykebdn kacfstdeyrh crreqvciqejw".oranApolWothCharrterString())
          
        }
    }
}
