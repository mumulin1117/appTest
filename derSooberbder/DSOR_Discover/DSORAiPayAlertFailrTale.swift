//
//  DSORAiPayAlertFailrTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Toast_Swift
class DSORAiPayAlertFailrTale: UIViewController {
    var ifpurchasedcompletion: ((Bool) -> Void)?
    @IBAction func laterDSOR(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    @IBOutlet weak var goandchat: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        goandchat.layer.cornerRadius = 12
        goandchat.layer.masksToBounds = true
    }

    @IBAction func payingNoewDSOr(_ sender: Any) {
        
        var dsorPauingRem =  Int(DSORPujertLoafmuiner.shmured.mineDattarDS?.blanceds ?? "0") ?? 0
        let minePaRem = 100
        
        if dsorPauingRem <  minePaRem{//金币不足
            let minerwtshingDSOR = UIAlertController(title: "Insufficient Blance", message: "", preferredStyle: .alert)
            
            minerwtshingDSOR.addAction(UIAlertAction(title: "Purchase now", style: .default, handler: { asldo in
                self.navigationController?.pushViewController(DSORPiiiertirrFairtale.init(), animated: true)
            }))
            minerwtshingDSOR.addAction(UIAlertAction(title: "Cancel", style: .default))
            self.present(minerwtshingDSOR, animated: true)
            return
        }
        
        dsorPauingRem = dsorPauingRem - minePaRem
        DSORPujertLoafmuiner.shmured.mineDattarDS?.blanceds = "\(dsorPauingRem)"
        if ifpurchasedcompletion != nil {
            ifpurchasedcompletion!(true)
        }
        var toaststyyleDSOR = ToastStyle.init()
        toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
        self.view.makeToast("successful pay!", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
        self.dismiss(animated: true)
    }
    
    

}
