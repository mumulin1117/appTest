//
//  LiSSpAIBriefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpAIBriefrbucue: LissipSecondFrbucue {

    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var payAIButtonSSIp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        payAIButtonSSIp.maskLippaRoundCorner(rMakLSSIpadius: 27)
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
    }

  
    @IBAction func SSipToPaying(_ sender: Any) {
        var ssipDoimond = Int(LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] ?? "0") ?? 0
       
        if ssipDoimond < 200 {
            self.navigationController?.pushViewController(LiSSpWallwnetBucue.init(), animated: true)
            return
        }
        
        ssipDoimond -= 200
        ssuipCreaNet(ssipDoimond: ssipDoimond)
        
    }
    
    
    private func ssuipCreaNet(ssipDoimond:Int) {
       
        LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] = "\(ssipDoimond)"
        
        let startupload = LiSSpAIUploasingefrbucue.init()
        
        self.navigationController?.pushViewController(startupload, animated: true)
        
        //更新相关数据
        var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
        let useiIDING = LipSigggneSnmingertips.logUoserdataSSIP["ssipAccID"]
        for (ing,itemt) in allUserDataSSIP.enumerated() {
            if itemt["ssipAccID"] == useiIDING {
                allUserDataSSIP[ing] = LipSigggneSnmingertips.logUoserdataSSIP
            }
        }
        UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
    }
    
   
    
}


class LissipSecondFrbucue: UIViewController {
    var pickerSSIPVC:UIImagePickerController?
    
    func showingBloakjPickVC(withBloackID:String)  {
        let normailAreport = UIAlertController(title: "Rvefprogrstx lOrRt uBrljaycek".oranApolWothCharrterString(), message:nil, preferredStyle: .actionSheet)
        
        normailAreport.addAction(UIAlertAction(title: "Bnlzaocsk".oranApolWothCharrterString(), style: .default, handler: { alertSSIP in
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Rwexqduqefsmtzilnhgd.v.e.".oranApolWothCharrterString(), loaingShowView: self.view)
            self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
               
                self.delsteSSIPONenterBottomUser(iduserSSIP: withBloackID )
                
                AppDelegate.showSSIPSuccessTips(acccusString: "Bplralcvkz esjuccmccejsgsofguqlo!".oranApolWothCharrterString())
            }
           
        }))
       
        normailAreport.addAction(UIAlertAction(title: "Rtefproirst".oranApolWothCharrterString(), style: .default, handler: { alertSSIP in
            self.shingseReportUserOriginReport()
           
        }))
        normailAreport.addAction(UIAlertAction(title: "Cmabnvcjeel".oranApolWothCharrterString(), style: .default))
        
        self.present(normailAreport, animated: true)
    }
    @objc func ctterBsdNoingSSIP()  {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    private func delsteSSIPONenterBottomUser(iduserSSIP:String) {
       
        
       
        if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
            
            for (juh,itue) in appledeelgate.totalvrdataSSIP.enumerated() {
                if itue["ssipAccID"] == iduserSSIP {
                    appledeelgate.totalvrdataSSIP.remove(at: juh)
                }
            }
//            appledeelgate.totalvrdataSSIP = appledeelgate.totalvrdataSSIP.filter { $0["ssipAccID"]  != iduserSSIP }
            print(appledeelgate.totalvrdataSSIP.count)
        }
        LiSSpMeBootomrbucue.FolsdwemeSSIP = LiSSpMeBootomrbucue.FolsdwemeSSIP.filter { !($0["ssipAccID"]  == iduserSSIP) }
        sHUkosuitreatNet(iduserSSIP: iduserSSIP)
        
    }
    private func sHUkosuitreatNet(iduserSSIP:String) {
        LiSSpMeBootomrbucue.facrewemeSSIP = LiSSpMeBootomrbucue.facrewemeSSIP.filter { !($0["ssipAccID"]  == iduserSSIP) }
        
        
        LiSSpMeaddgeBootomrbucue.cxhatArraySSIP = LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.filter { !($0.whoseSSIP["ssipAccID"]  == iduserSSIP) }
        
        NotificationCenter.default.post(name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
    }
    
     func openMineTakeSSIPCamera() {
           
         pickerSSIPVC = UIImagePickerController()
         
         
         pickerSSIPVC?.sourceType = .camera
        present(pickerSSIPVC!, animated: true, completion: nil)
    }
    
    
    
    func shingseReportUserOriginReport()  {
        
        let normailAreport = UIAlertController(title: "Rmefpsoervtq gUmsresrl xReedazsgoun".oranApolWothCharrterString(), message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Offensive Language","Inaccuracy","Privacy Violation","Spam or Irrelevance"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
                self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                    AppDelegate.showSSIPSuccessTips(acccusString: "Tfhwaunzke gymonua vffoars myhojufrt freejpnorrjtz.l sWtep gwdimlblr qvmelruikflyz paunwdm rhxaknjdhlwes pietc laosl esxoloane padsq apfoxsdsfijbqlve".oranApolWothCharrterString())
                }
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "Cmabnvcjeel".oranApolWothCharrterString(), style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    
    
    
    func shiVabyuiogPermisson()  {
        let alert = UIAlertController(title: "Czaxmienrlai uPwerrmmqiuswsnioownx fDqegngizepd".oranApolWothCharrterString(), message: "Palrebagsxeg fexnsapbxlpee icmasmgeqrvat maucxcieksjss iinnp qthhyed lSheatqtfiqnugnsp.".oranApolWothCharrterString(), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OnK".oranApolWothCharrterString(), style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
