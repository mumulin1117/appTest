//
//  JPIDPosttContrerle.swift
//  JusperXdweSpein
//
//  Created by weSpein on 2025/4/28.
//

import UIKit
enum PloraLayoutTemplate: String, CaseIterable {
    case grid = "GridLayout"
    case carousel = "CarouselLayout"
    case timeline = "TimelineLayout"
}
class JPIDPosttContrerle: SXPRIcyousg {



    @IBAction func tjubeopnfgypltznmhewyhaj(_ sender: UIButton) {
        if sender.tag == 5 {
            self.dismiss(animated: true)
        }
        let ploraTips = [
            "Tip: Add a caption to give your post more context.",
            "Try using natural light for your photos.",
            "Share a behind-the-scenes moment today.",
            "A short video can tell a big story.",
            "Mix photos and text for a richer narrative."
        ]
        if sender.tag == 3 {
            let linkader = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph: "pnaggdessk/tpsonsdtmVyiudsejozsw/qibnbdveuxg?")
            reactionDensity(linkader:linkader)
        }
        if sender.tag == 4 {
            let linkader = SXPRequpour.shared.appBaseUrlAVoutWEB + self.captionic(storymorph: "pkaqgfense/siqssstuwef/lidnjdheexs?")
            reactionDensity(linkader:linkader)
        }
        
    }
    
    func createheasrBay(ploraTips:Array<String>) -> UILabel {
        let tipLabel = UILabel()
           
        tipLabel.text = ploraTips.randomElement()
        tipLabel.font = UIFont.systemFont(ofSize: 13)
        tipLabel.textColor = .secondaryLabel
        tipLabel.textAlignment = .center
        tipLabel.translatesAutoresizingMaskIntoConstraints = false
        return tipLabel
    }
    private func reactionDensity(linkader:String)  {
        
      let  centr = linkader +  self.captionic(storymorph: "&ftaofkqexnk=") +  (TrrendTides?["echozoa"] as? String ?? "") + self.captionic(storymorph: "&uadpwpbIwDk=") +  SXPRequpour.shared.appQuicklyId
       
        self.navigationController?.pushViewController(SXPRequcgsdnm.init(_moodGlyph: centr), animated: true)
    }
}
