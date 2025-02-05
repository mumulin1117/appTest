//
//  PEAELUAChallengnng.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit

class PEAELUAChallengnng: UIViewController {
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
    func createrActivyIncationwrePEA(){
        indicatinActiViewPEA = UIActivityIndicatorView(style: .medium)
       
        indicatinActiViewPEA?.hidesWhenStopped = true
        
        indicatinActiViewPEA?.color = .purple
       
          
        indicatinActiViewPEA?.translatesAutoresizingMaskIntoConstraints = false
       
        
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
    }
    
    
   
    
    
   
    var picPEAdf:Int
 
    var minDepethPEA:UIFont
    var miebrowsePEA:String
    
    
    init(depthlongPEA:UIFont, oacholePEA: Int,browsePEA:String) {
        minDepethPEA = depthlongPEA
        miebrowsePEA = browsePEA
        self.picPEAdf = oacholePEA
        super.init(nibName: nil, bundle: nil)
        rnpincolro = "#333333"
        putryViewPEA.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var eluaPEATItleView: UILabel!
    
    @IBOutlet weak var texfViewPEA: UITextView!
    
    
    @IBOutlet weak var userPriViewPEA: UIButton!
    @IBOutlet weak var userAViewPEA: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if picPEAdf != 0 {
            
            userPriViewPEA.isHidden = true
            userAViewPEA.isHidden = true
        }
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        if picPEAdf == 1 {
            eluaPEATItleView.text = "Privacy Policy for Pcsia"
            texfViewPEA.text =   """
       1. Information Collection
       
       Pcsia collects personal information from users, including but not limited to usernames, avatars, nicknames, and content submitted within the App. We may also collect non-personal information, such as usage data and device information, for the purpose of improving the App.
       
       2. Use of Information
       
       We use collected information to provide and improve the App, including personalized content recommendations and communication with users. We may also use non-personal information for analytical purposes.
       
       3. Sharing of Information
       
       We do not share personal information with third parties, except as required by law or to provide services related to the App. Non-personal information may be shared with third parties for analytical or marketing purposes.
       
       4. Security
       
       We take reasonable steps to secure personal information collected through the App. However, no method of transmission over the internet or method of electronic storage is completely secure, and we cannot guarantee the security of your information.
       
       5. User Rights
       
       Users have the right to access, correct, and delete their personal information. Requests for access, correction, or deletion should be made through the App's support channels.
       
       6. Changes to Privacy Policy
       
       We may update this Privacy Policy at any time. Changes will be communicated through the App or by other means. Continued use of the App after changes are made constitutes acceptance of the updated Privacy Policy.

       """
        }
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        for stpedr in buidingsPEA {
            if stpedr.count > 3 {
                handslovers.append(CGFloat(stpedr.count))
            }
            let uppenlsFC = stpedr.prefix(1).uppercased()
            if let firstC = uppenlsFC.first {
                pinkCHAPEA.append(firstC)
                counPink += 1
            }
        }

        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink < 7 {
            return
        }

        if picPEAdf == 2 && counPink >= 10 &&  buidingsPEA.count > 2{
            
            eluaPEATItleView.text = "User Agreement for Pcsia"
            texfViewPEA.text = """
       1. General Terms
       
       This User Agreement ("Agreement") governs the use of the Pcsia application ("App") by users ("Users"). By using the App, Users agree to be bound by the terms and conditions of this Agreement.
       
       2. Content and Conduct
       
       Users agree to use the App in a manner that complies with all applicable laws and regulations. Users are responsible for their own content and conduct within the App, and must not engage in any activity that violates the rights of others or is otherwise offensive or inappropriate.
       
       3. Intellectual Property
       
       All content within the App, including but not limited to makeup challenges, user-generated content, and trademarks, is owned by Pcsia or its licensors. Users may not use, copy, or distribute any content from the App without prior permission.
       
       4. Termination
       
       Pcsia may terminate a User's access to the App at any time for any reason, including but not limited to breach of this Agreement. Upon termination, Users must cease all use of the App and delete any content downloaded from it.
       
       5. Dispute Resolution
       
       Any disputes arising from or related to this Agreement shall be resolved through negotiation. If negotiation fails, disputes may be submitted to a court of competent jurisdiction in [Country/Region].
       
       """
        }
        
       

     


       
    }


    @IBAction func PeaCancelBattle(_ sender: UIButton) {
        if self.picPEAdf == 0 {
            PEAPinksignChallengnng.ifAdgreetermPEA = false
            self.dismiss(animated: true)
            return
        }
        
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func PeaAgreeBattle(_ sender: UIButton) {
        if self.picPEAdf == 0 {
            PEAPinksignChallengnng.ifAdgreetermPEA = true
            self.dismiss(animated: true)
            return
        }
        if rnpincolro.count < 2 {
            view.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    func personalizedRandomColoPEAr() {
        
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
    
    
    @IBAction func PeaPriserBattle(_ sender: UIButton) {
        var pinkfont = UIFont.systemFont(ofSize: 12, weight: .medium)
        if self.navigationController?.navigationBar.isHidden == true {
            pinkfont = UIFont.systemFont(ofSize: 12, weight: .bold)
        }
        var handsDreamPEA = self.title ?? ""
        if handsDreamPEA == ""{
            handsDreamPEA = "inspiration"
        }else{
            handsDreamPEA.append("pinkper")
        }
        self.navigationController?.pushViewController(PEAELUAChallengnng.init(depthlongPEA:pinkfont,oacholePEA: 1,browsePEA:handsDreamPEA), animated: true)
    }
    func pageingoPRaFadingVler(showPEA: Bool) {
        guard let pinkVC = pinkFAthAChangeingPEA else {
            return
        }
        
        if showPEA {
            
            addChild(pinkVC)
            view.addSubview(pinkVC.view)
            pinkVC.view.translatesAutoresizingMaskIntoConstraints = false
           
            pinkVC.didMove(toParent: self)
            
            
        } else {
           
            pinkVC.willMove(toParent: nil)
            pinkVC.view.removeFromSuperview()
            pinkVC.removeFromParent()
        }
        
    }
    @IBAction func userAPriserBattle(_ sender: UIButton) {
        var pinkfont = UIFont.systemFont(ofSize: 12, weight: .medium)
        if self.navigationController?.navigationBar.isHidden == true {
            pinkfont = UIFont.systemFont(ofSize: 12, weight: .bold)
        }
        var handsDreamPEA = self.title ?? ""
        if handsDreamPEA == ""{
            handsDreamPEA = "inspiration"
        }else{
            handsDreamPEA.append("pinkper")
        }
        self.navigationController?.pushViewController(PEAELUAChallengnng.init(depthlongPEA:pinkfont,oacholePEA: 2,browsePEA:handsDreamPEA), animated: true)
    }
    
}


