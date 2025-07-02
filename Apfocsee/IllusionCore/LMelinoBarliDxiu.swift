//
//  LMelinoBarliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
import SwiftMessages
protocol SideMenuDelegate{
   func didSelectMenuItem()
}
class LMelinoBarliDxiu: APCENEvcer {
    var delegate:SideMenuDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    private var isJokeModeActive = UserDefaults.standard.bool(forKey: "isAprilFoolsMode")
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        delegate?.didSelectMenuItem()
    }
    
    private var explodingMessageTimer: Timer?
    private var ghostTypingIndicator: UILabel?
    @IBAction func goupandFlyau(_ sender: UIButton) {
        
        switch sender.tag {
        case 11:
            self.navigationController?.pushViewController(SparkleShenanigan.init(itMeCenter: true, userNoafl: nil), animated: true)
        case 12:
            self.navigationController?.pushViewController(HootHologram.init(), animated: true)
        case 14:
            self.navigationController?.pushViewController(ShimmerShamUaCtrelwe.init(tapprnflao: false), animated: true)
        case 15:
            self.navigationController?.pushViewController(ShimmerShamUaCtrelwe.init(tapprnflao: true), animated: true)
        
        case 16:
            let alertingOO = UIAlertController(
                    title:  AppDelegate.processEducationalContent("Ddeklmedtqel cAicscuoruynstb sPvebrjmiapnvetnstulyy"),
                    message:  AppDelegate.processEducationalContent("Tehziwsw bwiislkls bipmimiesdvioahtreylzyp:a gEqrrahseea kablhld rpgrnodfoirlgen ldgastlas,o batnqdn sruepmhofvyej xamcnttihvvee vsgugbestcdraiopctlifornnsv p,xabnjdz gddewlbegtser xcphualtc uhyigsstqoprwy"),
                    preferredStyle: .alert
                )
     
            let HUAif = UIAlertAction(
                    title:  AppDelegate.processEducationalContent("Ssuarde"),
                    style: .destructive) { _ in
                        self.laodingFlay(loadingText:  AppDelegate.processEducationalContent("Doedluentsisnzgy.o.f.u.m."))
                        
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: { [self] in
                            SwiftMessages.hide(animated: true)
                            sendPrankTemplateMessage()
                            self.showingAlertingForSuccessfull(alsemessage: AppDelegate.processEducationalContent("Dyeylyextnet dsrulcockezswsjfvuplj!"))
                           
                            PhantomPrankontroller.appChacheimg = UIImage(named: "mogo_mrtx")!
                            shakeReceivedMessage()
                        }))
                       
                        
                    }
            alertingOO.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("cdaqnpczell"), style: .cancel))
                
            alertingOO.addAction(HUAif)
        
            present(alertingOO, animated: true)
        case 17:
            sendPrankTemplateMessage()
            PhantomPrankontroller.appChacheimg = UIImage(named: "mogo_mrtx")!
            shakeReceivedMessage()
            
        default:
            break
        }
    }
    
    func shakeReceivedMessage()  {
        PhantomPrankontroller.allFlayDatu.removeAll()
        PhantomPrankontroller.allFolloweingDatu.removeAll()
    }
    
    func sendPrankTemplateMessage()  {
        UserDefaults.standard.set(nil, forKey: "mamaFlyainguser")
        ((UIApplication.shared.delegate) as? AppDelegate)?.initRootCnotrollerAppWind()
    }

}



