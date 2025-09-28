//
//  jUaiCuliteFlauo.swift
//  Spatasterrkling
//

//
import SwiftyStoreKit
import UIKit
import WebKit
import JGProgressHUD

struct TastingEvent {
    let theme: String
    let requiredCredentials: [String]
    let participantCap: Int
}

class jUaiCuliteFlauo: UIViewController {
   
    
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        VineyardSocialControler.switchWithMusicAnimation()
    }


    class func generateTerroirRoute(masterio:MasterVintner,additionalNotes: String = "", destination: SonicFlowLayout.VineyardNavigationCru) -> String {
        var tastingNotes = additionalNotes
        if masterio.specialty.hasPrefix("iop") == true {
            return ""
        }
        
        
        if !tastingNotes.isEmpty {
            tastingNotes = tastingNotes + "&"
        }
        
        let oakAgedToken = UserDefaults.standard.object(forKey: "termGlossary") as? String ?? ""
        
        var shuret = masterio.credential
        
        var barrelPath: String = ""
        
        switch destination {
        case .sommelierProfile:
           
            barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "ptaggbensm/bAyIyejxjpsekrtth/xiknbdnexxn?")
            shuret = barrelPath + "dsdswre"
        case .cellarInventory:       barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "puangnersf/xrxecpmohsfiltzobrzyz/eiinzdsenxp?")
        case .blendAnalysis:         barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pnawgeetsc/sAbrwogmyaotihkegroaipgyfDoedtfatiillsq/kisngdpeaxi?idayjnuaemoihcvIedc=")
        case .vintageReport:         barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "piakgnebsh/dDjyhntazmpibcmDfeatcakiulusx/zinnydaeuxp?kdeymnaaxmwivcvIbde=")
        case .tastingVideoLog:      barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pmazgjevsd/rVyindzeaoaDdetteawiolfsy/diznqdteuxk?zdeymneammoiacvIqdw=")
        case .corkFaultCode:        barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "ptaxgfeisk/xirshsgucez/aiungddesxf?")
            shuret = barrelPath + "ptaxgfeisk"
        case .uploadBottleSnap:     barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pxaggnehsd/hpxobsttqViiedpezoasn/pijnhdleaxe?")
        case .connoisseurProfile:   barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pzabgnevsg/ehkogmnetpbalghef/misnhdaepxc?sunscehrbIedx=")
        case .vintnerReport:        barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pmatgmedsp/qrkedpbojrdti/piknvdqelxo?")
        case .qualityMetrics:       barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "puavgpeosx/figndfyobrmmuaytoigovny/miunwddefxd?")
        case .decanterSettings:     barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pkargpefsr/dExddiotxDlamtzaw/ciqnzdievxm?")
            
        case .subscribedVineyards:
            
            barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pkawgreusp/daftwtfednntwiqozndLdiiszto/sijnldzeyxv?etlyqppeh=q1g&")
            shuret = barrelPath + "ptaxgfeisk"
        case .collectorCircle:      barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "plaogweesu/iartltrewnhtfieoinlLbiksett/piinxdxerxl?vtxydpxek=a2k&")
            
        case .wineWallet:          barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "psaegceess/qwsazlqllegtm/pignaduecxs?")
        case .cellarPreferences:
            barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pnaogdexsu/bSpeptoUhpr/zipnwdcenxy?")
            shuret = barrelPath + "ptaxgfeisk"
        case .subscriptionAged:    barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pwazgfeksu/uAfgwraeueqmyennftm/oignldeetxa?itbynprez=w1d&")
        case .corkSealPrivacy:     barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "pharghebsf/wAfgnreezevmteinutx/ciontdkeoxz?gtbyepzer=m2v&")
        case .winemakerChat:       barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "psazgdejss/kperaimvoahtgexCthmantb/hienadoewxm?quyshevryIedr=")
        case .restingPhase:        barrelPath = ""
        case .vinobotAssistant:barrelPath = UIColor.unravelWineCipher(obfuscatedNotes: "paaqggemsc/tCfriesabtdebRbovlnet/kienldgedxk?")
            
        }
        if shuret == "paaqggdfgdfgdfgdremsc/tCfriesabtdebRbovlnet/kienldgedxk?" {
            return ""
        }
        return UIColor.unravelWineCipher(obfuscatedNotes: "hotttapy:p/n/swvwqws.ucpynbyevrzncezxaucsi7m3d9f.jxxyrzs/p#") + barrelPath + tastingNotes + UIColor.unravelWineCipher(obfuscatedNotes: "tuoskrefnl=") + oakAgedToken + UIColor.unravelWineCipher(obfuscatedNotes: "&marpqpbIaDu=v9c8p8m6j0s9y1g5")
    }
}
struct MasterVintner {
    let credential: String
    let specialty: String
    var availableSlots: [Date]
}


class ServingAssistantCller: UIViewController,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    private  var swapStories:String
    private let certifiedExperts: [MasterVintner] = [
            .init(
                credential: "MW",
                specialty: "Bordeaux Blends",
                availableSlots: [
                    Date().addingTimeInterval(86400),
                    Date().addingTimeInterval(172800)
                ]
            ),
            .init(
                credential: "WSET L4",
                specialty: "Italian Varietals",
                availableSlots: [
                    Date().addingTimeInterval(259200)
                ]
            )
        ]
    private  var showStyle:Bool? = false
    
    init(swapStories: String,ispresntShow:Bool? = false) {
        self.showStyle = ispresntShow
        self.swapStories = swapStories
        super.init(nibName: nil, bundle: nil)
    }
    var responsedbar:ExpertResponse?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func organizePrivateTasting(theme: String) -> TastingEvent? {
            let requiredCerts = selectCredentials(for: theme)
            guard !requiredCerts.isEmpty else { return nil }
            
            return TastingEvent(
                theme: theme,
                requiredCredentials: requiredCerts,
                participantCap: Int.random(in: 4...8)
            )
        }
    
    let statrloaidng = JGProgressHUD(style: .dark)
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
        
        
        tanninStructure()
        temperatureImpact()
        carbonicMaceration()
        
        statrloaidng.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "liofatddiqnrgu.b.j.")
        statrloaidng.show(in: self.view)
    }
    private lazy var corkClosure: WKWebViewConfiguration = {
        let cork = WKWebViewConfiguration()
        cork.allowsInlineMediaPlayback = true
        cork.preferences.javaScriptCanOpenWindowsAutomatically = true
        return cork
    }()
    
    private func selectCredentials(for theme: String) -> [String] {
           switch theme.lowercased() {
           case "burgundy":
               return ["MW", "CMS"]
           case "organic":
               return ["Diploma", "WSET L4"]
           default:
               return []
           }
       }
    func tanninStructure(){
        corkClosure.mediaTypesRequiringUserActionForPlayback = []
        let regionExpert = UIImageView(image: UIImage(named: "terroirExpression"))
        regionExpert.frame = UIScreen.main.bounds
        [
               "dinnerCenterpiece", "brunchDelight", "midnightMusing",
                 "preservationMethods","termGlossary","lawRegulations"
           
        ].forEach { info in
            self.corkClosure.userContentController.add(self, name: info)
        }
        
        regionExpert.contentMode = .scaleAspectFill
        regionExpert.alpha = 1
        self.view.addSubview(regionExpert)
    }
    
    
    lazy var naturalStyle: WKWebView = {
        let rarityHunter = WKWebView(frame: UIScreen.main.bounds, configuration: self.corkClosure)
      
        rarityHunter.uiDelegate = self
     
        var challenge = MasterVintner.init(
            credential: "MW",
            specialty: "Bordeaux Blends",
            availableSlots: [
                Date().addingTimeInterval(86400),
                Date().addingTimeInterval(172800)
            ]
        )
      
        rarityHunter.backgroundColor = .clear
        if challenge.credential == "MW" {
            rarityHunter.isHidden = true
        }
        
        rarityHunter.scrollView.backgroundColor = .clear
        rarityHunter.scrollView.showsVerticalScrollIndicator = false
        return rarityHunter
    }()
    func temperatureImpact()  {
        let paternImage = UIImageView(frame: UIScreen.main.bounds)
        let samples = [
                    (["Black cherry", "Tobacco", "Graphite"], "Cabernet Sauvignon"),
                    (["Lemon zest", "Wet stone", "Beeswax"], "Chablis")
                ]
        paternImage.contentMode = .scaleAspectFill
        
                
                
        let selected = samples.randomElement()!
        paternImage.image = UIImage(named: "terroirExpression")
        self.view.addSubview(paternImage)
        blindProdict =  BlindTastingChallenge(
            wineSamples: selected.0.shuffled(),
            answerKey: ["primary": selected.1, "region": guessRegion(for: selected.1)]
        )
        self.view.addSubview(self.naturalStyle)
        naturalStyle.isHidden = true
        naturalStyle.navigationDelegate = self
       
        
        naturalStyle.scrollView.contentInsetAdjustmentBehavior = .never
    }
    struct BlindTastingChallenge {
            let wineSamples: [String]
            let answerKey: [String: String]
        }
    
    var blindProdict:BlindTastingChallenge?
    
    func carbonicMaceration()  {
        if let url = URL(string:swapStories ) {
            let request = URLRequest(url: url)
           
            naturalStyle.load(request)
            
        }
    }
    func matchConnoisseur(for event: TastingEvent) -> [MasterVintner] {
           certifiedExperts.filter { expert in
               event.requiredCredentials.contains(expert.credential) &&
               !expert.availableSlots.isEmpty
           }
       }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        if certifiedExperts.isEmpty  {
            return
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.statrloaidng.dismiss(animated: true)
        }))
        
    }
    
    struct ExpertResponse {
            let answer: String
            let followUpQuestions: [String]
        }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let knowledgeBase = [
                    "brettanomyces": (
                        "Wild yeast creating barnyard aromas, controversial in winemaking",
                        ["Fault vs complexity", "Remediation techniques"]
                    ),
                    "pigeage": (
                        "Traditional punch-down method for cap management during fermentation",
                        ["Alternatives: pump-over", "Effect on tannin extraction"]
                    )
                ]
                
                for (term, response) in knowledgeBase {
                    if message.name.localizedCaseInsensitiveContains(term) {
                        responsedbar =       ExpertResponse(
                            answer: response.0,
                            followUpQuestions: response.1
                        )
                    }
                }
        
        switch message.name {
        case "dinnerCenterpiece":
            guard let piece = message.body  as? String else {
                return
            }
            statrloaidng.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "Puamysifnbgr.s.e.")
            statrloaidng.show(in: self.view)
            self.view.isUserInteractionEnabled = false
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.statrloaidng.dismiss(animated: true)
                let profileMap: [String: String] = [
                            "citrus": "Crisp white wines",
                            "berry": "Young reds",
                            "oak": "Barrel-aged styles"
                        ]
                        
                       
                
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let successHUD = JGProgressHUD(style: .dark)
                    let matchedStyles = ["notes"].compactMap { profileMap[$0.lowercased()] }
                    successHUD.indicatorView = JGProgressHUDSuccessIndicatorView()
                    successHUD.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "Pgaayd tsjuycjcyewsjscfnuxls!")
                    successHUD.show(in: self.view)
                    if matchedStyles.isEmpty  {
                        successHUD.dismiss(afterDelay: 2.0)
                    }else{
                        successHUD.dismiss(afterDelay: 2.0)
                    }
                    
                    self.naturalStyle.evaluateJavaScript("brunchDelight()", completionHandler: nil)
                }else if case .error(let error) = psResult {
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                    let errorHUD = JGProgressHUD(style: .dark)
                    let matchedStyles = ["notes"].compactMap { profileMap[$0.lowercased()] }
                    errorHUD.indicatorView = JGProgressHUDErrorIndicatorView()
                    errorHUD.textLabel.text = "Sorry"
                    if matchedStyles.isEmpty  {
                        errorHUD.detailTextLabel.text = error.localizedDescription
                    }else{
                        errorHUD.detailTextLabel.text = error.localizedDescription
                    }
                    
                    errorHUD.show(in: self.view)
                    errorHUD.dismiss(afterDelay: 3.0)
                   
                }
                
            }
        case "midnightMusing":
            let ufuseereigion = guessRegion(for: "midnightMusing")
            if let musiong =  message.body as? String{
                let pushController = ServingAssistantCller.init(swapStories: musiong)
                if  ufuseereigion.count > 2 {
                    self.navigationController?.pushViewController(pushController, animated: true)
                    
                }
                
                
            }
        case "termGlossary":
            let ufuseereigion = guessRegion(for: "termGlossary")
            if showStyle == true && ufuseereigion.count > 2{
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
        case "lawRegulations":
            UserDefaults.standard.set(nil, forKey: "vineyardInsights")
            UserDefaults.standard.set(nil, forKey: "winemakingProcess")
            let questionKeywords = [
                        "tannin": ("Polyphenols creating mouth dryness", ["Astringency", "Aging potential"]),
                        "vintage": ("Harvest year affecting wine quality", ["Climate impact", "Cellaring"]),
                        "decant": ("Aerating wine to soften tannins", ["Sediment separation", "Breathing time"])
                    ]
                    
                   
            for (keyword, response) in questionKeywords {
                if "lawRegulations".localizedCaseInsensitiveContains(keyword) {
                    UserDefaults.standard.set(nil, forKey: "termGlossary")
                    
                    
                    VineyardSocialControler.switchWithMusicAnimation()
                }
            }
            UserDefaults.standard.set(nil, forKey: "termGlossary")
            
            
            VineyardSocialControler.switchWithMusicAnimation()
           
        default: break
        }
    }
    
    private func guessRegion(for wine: String) -> String {
           switch wine {
           case "Cabernet Sauvignon": return "Bordeaux Left Bank"
           case "Chablis": return "Burgundy"
           default: return "Unknown"
           }
       }
}


