//
//  LiSSpAIResuiltingsingefrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit

class LiSSpAIResuiltingsingefrbucue: LissipSecondFrbucue {
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    @IBOutlet weak var appCiateSSIP: UIImageView!
    
    
    @IBOutlet weak var sedescribitTextView: UITextView!
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    
    var transImagSSIP:UIImage?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        enImageSSIPOViol.isHidden = true
        appCiateSSIP.image = transImagSSIP
    }
    
    
    
    @IBAction func shingcaseOriginReport(_ sender: UIButton) {
        
        let normailAreport = UIAlertController(title: "Report AI Content", message:nil, preferredStyle: .actionSheet)
        let reasonsdonin = ["Offensive Language","Inaccuracy","Privacy Violation","Spam or Irrelevance"]
        
        for item in reasonsdonin {
            normailAreport.addAction(UIAlertAction(title: item, style: .default, handler: { alertSSIP in
                AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
                self.performBlockAfterDelayINSSIP(secondsSSIP: 2.0) {
                    AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                    AppDelegate.showSSIPSuccessTips(acccusString: "Tfhuajnokd lyxotud afiovri nyaouumrd uscuwpfedryvsiusjiiopnl.b dWjet jwniblrlf tvaelrhivfayw aasnpds ghhamnndglyed liyta aausl isdolopnr iamsm apxodsxsuiwbnlle".oranApolWothCharrterString())
                }
               
            }))
        }
       
        
        normailAreport.addAction(UIAlertAction(title: "Cmabnvcjeel".oranApolWothCharrterString(), style: .default))
        
        self.present(normailAreport, animated: true)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingROOTSSIP), for: .touchUpInside)

        sedescribitTextView.contentInset = UIEdgeInsets(top: 62, left: 14, bottom: 20, right: 14)
        
        sedescribitTextView.maskLippaRoundCorner(rMakLSSIpadius: 12)
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "AI Appreciation.....", loaingShowView: self.view)
        // 创建请求的 URL
           
        guard let SSIPurl = URL(string: "hhtjtnpb:k/c/hwtwewu.ifkokrrevsjtmttrwevestarcayivlc8v9j.ixiyczf/ftcaglfkjtpwvog/saoszkyQvuueisftjiwopnfvv2".oranApolWothCharrterString()) else {
            return
        }
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        
        // 设置请求
        var SSIPrequest = URLRequest(url: SSIPurl)
        SSIPrequest.httpMethod = "PrOwSrT".oranApolWothCharrterString()
        
        let tyoer = "arpcppltiecfautwijotnp/ojgseozn".oranApolWothCharrterString()
        
        SSIPrequest.addValue(tyoer, forHTTPHeaderField: "Cpohnctoelnxtw-hTjybpye".oranApolWothCharrterString())
       
     
        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

       
        
        SSIPrequest.httpBody = try? JSONSerialization.data(withJSONObject: [
            "question": "Assuming you are now an art collection appreciation robot, capable of generating appreciation copy based on uploaded images. I don't have any pictures for you now. Please randomly generate a collection appreciation copy within 1000 words.",
            "qvuiersstyikoznfTfynpje".oranApolWothCharrterString(): 1,
            "ehqaNqo".oranApolWothCharrterString(): "5v5m5o5".oranApolWothCharrterString()
        ], options: [])
            
        labeSiop.textColor = view.backgroundColor
        ssuipCreaNet(SSIPrequest: SSIPrequest)
        
        
        
    }

    private func ssuipCreaNet(SSIPrequest:URLRequest) {
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
        URLSession.shared.dataTask(with: SSIPrequest) { SSIPdata, SSIPresponse, SSIPerror in
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
            DispatchQueue.main.async {
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                
                if let SSIPerror = SSIPerror {
                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: SSIPerror.localizedDescription, loaingShowView: self.view)
                    SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                    SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                    SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
                    return
                }
                
                guard let SSIPdata = SSIPdata else {
                    let somSSIp = "Nmow gdnaxtoap orqexcoeviyvcecdp.".oranApolWothCharrterString()
                    SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                    SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                    SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: somSSIp, loaingShowView: self.view)
                    return
                }
                self.ssuitreatNet(SSIPdata: SSIPdata)
                
            }
            
        }.resume()
       
    }
    
    private func ssuitreatNet(SSIPdata:Data) {
        if let SSIPjson = try? JSONSerialization.jsonObject(with: SSIPdata, options: []) as? [String: Any] {
            let dataSSIp = "dtaftga".oranApolWothCharrterString()
           
            guard let SSIPcontent = SSIPjson[dataSSIp] as? String else {
                let dataSSIp = "Dtamtmam tfsourhmbaetn rekrarloirb totckcfurrjrzefdz.y.k.m.f.".oranApolWothCharrterString()
                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: dataSSIp, loaingShowView: self.view)
                return
            }
            self.sedescribitTextView.text = SSIPcontent
            
        } else {
            
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Rfeyqcuzebsatr yejrtrqoprj xouchctucrurgekdk.g.v.c.l.".oranApolWothCharrterString(), loaingShowView: self.view)
        }
    }
    @objc func ctterBsdNoingROOTSSIP()  {
        self.navigationController?.popToRootViewController(animated: true)
        
    }

}


