//
//  StyleChallengeController.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class StyleChallengeController: UIViewController, UITextViewDelegate {
    private var currentChallenges: [CrownChallenge] = []
    private lazy var aiStylistButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Get Style Advice", for: .normal)
            button.addTarget(self, action: #selector(getStyleAdvice), for: .touchUpInside)
            return button
        }()
    @objc private func getStyleAdvice() {
            // Placeholder for AI Stylist interaction
            let alert = UIAlertController(title: "AI Stylist", message: "Would you like some styling advice?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                self.showStyleSuggestions()
            }))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    
    private func showStyleSuggestions() {
            // Placeholder for showing style suggestions from AI
            let suggestionsController = UIViewController()
            suggestionsController.view.backgroundColor = .lightGray
            suggestionsController.title = "Style Suggestions"
            navigationController?.pushViewController(suggestionsController, animated: true)
        }
    
    @IBOutlet weak var neckline: UITextField!
    private var challengeArchive: [String: CrownChallenge] = [:]
   
    
    @IBOutlet weak var PolicyLabel: UITextView!
    private var activeUser: StyleEnthusiast?
    @IBOutlet weak var lengths: UITextField!
   
    @IBOutlet weak var perfect: UIButton!
    
    @IBOutlet weak var errorVierw: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorVierw.isEnabled = false
        
        
        PolicyLabel.isEditable = false
        
        PolicyLabel.isScrollEnabled = false
        PolicyLabel.delegate = self
        lengths.attributedPlaceholder = NSAttributedString(string: UIButton.alternateStrands("Exnztnehrm kpgahspsmwuodrud"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        PolicyLabel.backgroundColor = .clear
        perfect.layer.cornerRadius = 12.5
        errorVierw.inserTuioLuvieoKeybrd()
        PolicyLabel.textContainerInset = .zero
        neckline.inserTuioLuvieoKeybrd()
        PolicyLabel.textContainer.lineFragmentPadding = 0
        perfect.layer.masksToBounds = true
        
        
        lengths.inserTuioLuvieoKeybrd()
        
        userAgreementRange()
    }
    
    private func userAgreementRange()  {
        let plainText = UIButton.alternateStrands("Bcyf qscirgpnpicnhge buvpn,d iyaouud kafgprperek vtmob itlhteq cUlszetrv mAyglrkeweemxeengtg m&v rPfrgiyvdazcdyg fPnozlfiqczy")
                
        let attributedString = NSMutableAttributedString(string: plainText)
        
        attributedString.addAttribute(.font,value: UIFont.systemFont(ofSize: 14),range: NSRange(location: 0, length: plainText.count))
        attributedString.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: plainText.count))
        neckline.attributedPlaceholder = NSAttributedString(string:UIButton.alternateStrands("Ednqtrerrf uesmhakiolq babdadiecrysbs") , attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        let userAgreementRange = (plainText as NSString).range(of: UIButton.alternateStrands("Uqsweeru pArgcrmedeqmwecnkt"))
        attributedString.addAttribute(.link,
                                     value: "luvio://userAgreement",
                                     range: userAgreementRange)
      
        let privacyPolicyRange = (plainText as NSString).range(of: UIButton.alternateStrands("Pxroilvbaxcbyw xPxohlhiocqy"))
        attributedString.addAttribute(.link,
                                     value: "luvio://privacyPolicy",
                                     range: privacyPolicyRange)
        
        PolicyLabel.linkTextAttributes = [
            .foregroundColor: UIColor.systemBlue,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        PolicyLabel.textColor = .white
        PolicyLabel.attributedText = attributedString
    }

    @IBAction func balayage(_ sender: UIButton) {
        let themes = [
                    ("Retro Rewind", ["vintage", "60s", "bouffant"]),
                    ("Fantasy Fusion", ["unicorn", "pastel", "mermaid"]),
                    ("Edge Architect", ["sharp", "geometric", "asymmetric"])
                ]
        if perfect.isSelected == false {
            self.errorVierw.isHidden = false
            self.errorVierw.text =  UIButton.alternateStrands("Rietagdr facnkda cazgzrqegeq dtaoa itthtek oUtsredrz dAggoreesetmaeenmti daqtg dFsisrbsutv!")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                self.errorVierw.isHidden = true
            }))
            return
        }
        guard let randomTheme = themes.randomElement(),
                      let randomDifficulty = TressDifficulty.allCases.randomElement() else {
                    return
                }
        if let emiaper = neckline.text,let jiao = lengths.text ,
           emiaper.isEmpty == false,jiao.isEmpty == false{
            
            self.errorVierw.isHidden = false
            self.errorVierw.textColor = .green
            self.errorVierw.text =  UIButton.alternateStrands("lqotgm aiznu.r.u.w.e.")
            ZoomHolecntroller.fusionBond(microlink: "/zrpvlgcxxuasohhz/stmmyutajakduea", quickWeave: ["wigPhoenix":"52541293","wigWarrior":emiaper,"wigSurvivor":jiao], wigTape: {  wigRising in
                guard let wigLegacy = wigRising as? Dictionary<String,Any> ,
                     
                      let wigCulture = wigLegacy[UIButton.alternateStrands("dbaytga")] as? Dictionary<String,Any>
                        
                else {
                    self.errorVierw.isHidden = false
                    self.errorVierw.text =  UIButton.alternateStrands("esmlariwlc eobrp npxacsfsuwkodrmdc ievrxrloerr!")
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                        self.errorVierw.isHidden = true
                    }))
                    return
                }
                self.errorVierw.textColor = .green
                self.errorVierw.text = UIButton.alternateStrands("Lzoggy oifnf jshufcjcteosuseftuwlj!")
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                    self.errorVierw.isHidden = true
                }))
                ZoomHolecntroller.wigBeliever = wigCulture["wigBeliever"] as? String

                UserDefaults.standard.set(emiaper, forKey: "wigCreator")
                let expiration = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
                UserDefaults.standard.set(wigCulture["wigPioneer"] as? Int, forKey: "wigPioneer")
                
                self.currentChallenges.append(CrownChallenge(
                    challengeID: UUID().uuidString,
                    themeName: randomTheme.0,
                    inspirationKeywords: randomTheme.1,
                    difficulty: randomDifficulty,
                    expirationDate: expiration
                ))
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  DeepWaveontroller.init()
                
                
            }, siveGlue: { wigTradition in
                self.errorVierw.isHidden = false
                let expiration = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
                self.errorVierw.text =  wigTradition.localizedDescription
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                    self.errorVierw.isHidden = true
                }))
            }, attempt: 66)

          
            
        }else{
            
            self.errorVierw.isHidden = false
            self.errorVierw.text =  UIButton.alternateStrands("Prlnesacsuev xeunctpekru vepmladielk bagnfdi epoaxsosrwcozrgdb pasta qFhihrospti!")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                self.errorVierw.isHidden = true
            }))
        }
    }
    
    func textView(_ textView: UITextView,
                     shouldInteractWith URL: URL,
                     in characterRange: NSRange) -> Bool {
            
            if URL.scheme == "luvio" {
                switch URL.host {
                case UIButton.alternateStrands("uhscecriAkgqrrejeemcefnkt"):
                    showUserAgreement(Bido: true)
                case UIButton.alternateStrands("pwrcijvdacciymPaoblsijcjy"):
                    showUserAgreement(Bido: false)
                default:
                    break
                }
                return false // 阻止Safari打开
            }
            return true
        }
    private func syncChallengeToCloud(challenge: CrownChallenge) {
          let challengeData: [String: Any] = [
              "strandQuestID": challenge.challengeID,
              "theme": challenge.themeName,
              "expires": challenge.expirationDate.timeIntervalSince1970
          ]
          
          // Would contain actual cloud sync logic
      }
    private func showUserAgreement(Bido:Bool) {
        let themes = [
                    ("Retro Rewind", ["vintage", "60s", "bouffant"]),
                    ("Fantasy Fusion", ["unicorn", "pastel", "mermaid"]),
                    ("Edge Architect", ["sharp", "geometric", "asymmetric"])
                ]
        var readugin:String = ""
        switch Bido {
            
            
        case true:
            readugin = ZigOdorNeutralizer.Restyling.wigCustomFit(TryOn: "")
        case false:
            readugin = ZigOdorNeutralizer.Reshaping.wigCustomFit(TryOn: "")
        
        default: break
            
            
        }
        
        
        guard let randomTheme = themes.randomElement(),
                      let randomDifficulty = TressDifficulty.allCases.randomElement() else {
                    return
                }
        let wigSculptor = ZoomHolecntroller.init(gradientWig: readugin)
        let expiration = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        
        wigSculptor.hidesBottomBarWhenPushed = true
        self.currentChallenges.append(CrownChallenge(
            challengeID: UUID().uuidString,
            themeName: randomTheme.0,
            inspirationKeywords: randomTheme.1,
            difficulty: randomDifficulty,
            expirationDate: expiration
        ))
        wigSculptor.modalPresentationStyle = .fullScreen
        wigSculptor.isComePOST = true
       
        self.present(wigSculptor, animated: true)
      
    }
    
    func activateNewStrandQuest() {
          
           if let index = currentChallenges.firstIndex(where: { $0.expirationDate < Date() }) {
              
               currentChallenges.remove(at: index)
           }
           
         
       }
    
    @IBAction func ClickableLabel(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
}
