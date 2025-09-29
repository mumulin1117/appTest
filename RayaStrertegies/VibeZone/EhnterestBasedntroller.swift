//
//  EhnterestBased ntroller.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/3.
//

import UIKit
import SVProgressHUD

class EhnterestBasedntroller: UIViewController{
    
    var casflrl:AvatarComponent?
    @IBOutlet weak var expressionOutlet: UIView!
    
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        casflrl?.width = 44
        casflrl?.height = 55
       
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.casflrl?.roundness = 45
            self.casflrl?.depth = 90
            SVProgressHUD.dismiss()
        }))
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        casflrl = AvatarComponent.init(baseColor: .white, width: 33, height: 33, depth: 33, roundness: 33)
       
        updateNOrmailFakue()
    }
    
   
    private func updateNOrmailFakue()  {
        casflrl?.width = 44
        
        for (a,irusd) in EventHorizonoller.wearDriven.enumerated() {
            
            if a >= 3 {
                return
            }
            let avartio = EhntAsyouler.init(frame: CGRect.init(x: (112 + 12)*a, y: 0, width: 112, height: 148))
            
            
            
            avartio.authenticallyHuman(imageTIl: irusd.usabilityPrinciples["expressing"] as? String, title: irusd.usabilityPrinciples["communicating"] as? String ?? "")
            casflrl?.height = 55
            avartio.tag = a
            avartio.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(noriamuserfo(tr:))))
            self.expressionOutlet.addSubview(avartio)
        }
        
        
    }
    @objc func noriamuserfo(tr:UITapGestureRecognizer)  {
        if let sharing = EventHorizonoller.wearDriven[tr.view?.tag ?? 0].usabilityPrinciples["sharing"] as? Int {
            let ailisi = Vibetinguontroller.init(execute: wholesElseomeness.partnership,priority:"\(sharing)")
            ailisi.hidesBottomBarWhenPushed = true
            
            self.navigationController?.pushViewController(ailisi, animated: true)
        }
        
        
        
     }

    @IBAction func badjiu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
  
   
    
}
