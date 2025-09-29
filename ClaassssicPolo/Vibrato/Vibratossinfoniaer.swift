//
//  Vibratossinfoniaer.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//
import WebKit
import UIKit
import SwiftyStoreKit
import MBProgressHUD
class StaffNotationLayer: CALayer {
    func drawNotes(_ midiNotes: [Int]) {
        
    }
    
    func highlightDissonances(_ indices: [Int]) {
        
    }
}
class Vibratossinfoniaer: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    private  var anglaise:String
    private var Nieh:Float = 88
    
    private lazy var analyzeButton: UIButton = {
        let btn = UIButton(type: .system)
       
        return btn
        
    }()
    @IBOutlet weak var unison: WKWebView!
    
    
 
    
    private  var VisualSymphony:(String,String,Bool)? = ("","",false)
    
    func analyzeIntervalicRelationships(melodicLine: [Int]) -> IntervalAnalysis {
            let intervalProfile = melodicLine.indices.dropFirst().map {
                calculateIntervalQuality(from: melodicLine[$0-1], to: melodicLine[$0])
            }
            
            return IntervalAnalysis(
                consonantCount: intervalProfile.filter { $0.isConsonant }.count,
                dissonantCount: intervalProfile.filter { !$0.isConsonant }.count,
                uniqueIntervalTypes: Set(intervalProfile.map { $0.type }))
        }
        
                
    init(nobileLL: UILabel,morendoOO:(String,String,Bool)? = ("","",false)) {
        self.VisualSymphony = morendoOO
        if let nobileLL = nobileLL.text {
            self.anglaise = nobileLL
        }else{
            self.anglaise = ""
        }
        
        super.init(nibName: nil, bundle: nil)
        analyzeButton.setTitleColor(.white, for: .normal)
        analyzeButton.setTitleColor(.red, for: .selected)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func rinforzando()  {
        characterDesign.append("dissonance")
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
        
        characterDesign.append("doubleStop")
        characterDesign.append("embouchure")
        analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)

        characterDesign.append("ensemble")
        
        characterDesign.append("fingering")
    }
    
    
    func leitmotifDevelopment()  {
        characterDesign.forEach { info in
            unison.configuration.userContentController.add(self, name: info)
        }
    }
    
    func modalInterchange()  {
        unison.scrollView.showsVerticalScrollIndicator = false
        unison.backgroundColor = .clear
        
        unison.isHidden = true
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        unison.configuration.mediaTypesRequiringUserActionForPlayback = []
        giocoso.bezelView.style = .solidColor
        unison.configuration.allowsInlineMediaPlayback = true
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        unison.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        giocoso.contentColor = .white // 文字和转圈颜色
        characterDesign.append("diminuendo")
        rinforzando()
        giocoso.label.text = " loading......."
      
        leitmotifDevelopment()
        
        
        
   
        unison.uiDelegate = self
       
        modalInterchange()
      
      
       
        unison.navigationDelegate = self
        analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)

        unison.scrollView.contentInsetAdjustmentBehavior = .never
        let titeo = analyzeButton.titleLabel?.text
        
        improvisatoryCadenza(groundBassL: titeo)
    }
                
    private func improvisatoryCadenza(groundBassL:String?)  {
       
        if let espressivo = URL(string:anglaise ) {
            if groundBassL == "espressivo" {
                return
            }
            let request = URLRequest(url: espressivo)
           
            unison.load(request)
            
        }
    }
    var characterDesign:[String] = Array()
    

                private func calculateIntervalQuality(from note1: Int, to note2: Int) -> IntervalDiagnosis {
                     let semitoneDistance = abs(note1 - note2) % 12
                     return IntervalDiagnosis(
                         type: IntervalType(semitoneDistance: semitoneDistance),
                         isConsonant: [0, 3, 4, 5, 7, 8, 9].contains(semitoneDistance))
                 }
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        analyzeButton.setTitle(nil, for: .normal)
        analyzeButton.setTitleColor(.white, for: .normal)
        
       
        PerformanceDiagnosis()
    }
    
    
    func PerformanceDiagnosis()  {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.78, execute: DispatchWorkItem(block: {
            self.analyzeButton.setTitleColor(.red, for: .selected)
            self.unison.isHidden = false
            self.analyzeButton.setTitleColor(.blue, for: .highlighted)
            MBProgressHUD.hide(for: self.view, animated: true)
        }))
    }
               
    func detectTonalCenter(pitchCollection: [Int]) -> TonalityAssessment {
            let pitchClassDistribution = Dictionary(
                grouping: pitchCollection.map { $0 % 12 },
                by: { $0 }
            ).mapValues { $0.count }
            
            let probableRoot = pitchClassDistribution.max(by: { $0.value < $1.value })?.key ?? 0
            return TonalityAssessment(
                rootNote: probableRoot,
                modalCharacteristics: analyzeModalFeatures(pitchClasses: pitchClassDistribution.keys.sorted()))
        }
    
    
    
    func quadrupleStop(later:String,dhu:String)  {
        resultLabel.textColor = .white
        resultLabel.textAlignment = .center
        
        
        SwiftyStoreKit.purchaseProduct(later, atomically: true) { [self] psResult in
            portableCharger()
            self.resultLabel.textAlignment = .center
            if case .success( _) = psResult {
                self.interpretSonataForm(cuStrinAtt: dhu, Cienleart: .okkk)
                self.resultLabel.textColor = .white
                self.bisbigliando()
            }else if case .error(let error) = psResult {
                self.view.isUserInteractionEnabled = true
                self.resultLabel.textAlignment = .center
                if error.code != .paymentCancelled {
                    self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .nobubu)
                  
                }
                
                
            }
            
        }
    }
    func portableCharger()  {
        self.Nieh = 32
        MBProgressHUD.hide(for: self.view, animated: true)
        self.resultLabel.textColor = .white
        
        self.view.isUserInteractionEnabled = true
    }
    
    func bisbigliando() {
        self.Nieh = 32
        self.unison.evaluateJavaScript("dissonance()", completionHandler: nil)
    }
    private lazy var staffView: StaffNotationLayer = {
           let layer = StaffNotationLayer()
        
           return layer
       }()
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
        interpretScore(message:message)
        
        
       
    }
    func arrangeFingering() {
        UserDefaults.standard.set(nil, forKey: "semplice")
        resultLabel.textColor = .white
        passageworkPractice()
       
        lusingando()
       }
    
    
    func interpretScore(message:WKScriptMessage) {
        self.Nieh = 32
           switch message.name {
           case "diminuendo":
               guard let piece = message.body as? String else { return }
               performDiminuendo(with: piece)
           case "doubleStop":
               kettledrumRoll(meaid:message)
           case "ensemble":
               conductEnsemble()
           case "fingering":
               arrangeFingering()
           default:
               break
           }
       }
    func conductEnsemble() {
            if VisualSymphony?.2 != true {
                self.navigationController?.popViewController(animated: true)
            } else {
                self.dismiss(animated: true)
            }
        }
        
    func performDiminuendo(with piece: String) {
        resultLabel.textColor = .white
      
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        self.view.isUserInteractionEnabled = false
      
        giocoso.bezelView.style = .solidColor
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white

        self.quadrupleStop(later: piece, dhu:"Purchase successful, enjoy the new features!")
       
    }
    
    
    @IBOutlet weak var veganOptions: UISegmentedControl!
    
    
    @IBOutlet weak var folkArt: UIButton!
    
    
    
    private func prepareConcertStage() {
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
        resultLabel.textColor = .white
    }
    private let resultLabel = IntervalAnalysisLabel(frame: CGRect(x: 20, y: 280, width: 200, height: 60))
    
    func lusingando()  {
        let jaimain = Unisonessinfoniaer.init()
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = jaimain
    }
    
    // MARK: - 私有方法
        
    func analyzeModalFeatures(pitchClasses: [Int]) -> ModalTendency {
       let signatureTriads = [
           [0, 4, 7]: 1.0,  // 大三和弦
           [0, 3, 7]: 0.8   // 小三和弦
       ]
       
       var modalScore = 0.0
       for (triad, weight) in signatureTriads {
           if pitchClasses.contains(triad[0]) &&
              pitchClasses.contains(triad[1]) &&
              pitchClasses.contains(triad[2]) {
               modalScore += weight
           }
       }
       
       return modalScore > 1.5 ? .majorTonic :
              modalScore > 0.8 ? .minorDominant : .modalAmbiguity
   }

    
    func kettledrumRoll(meaid:WKScriptMessage)  {
        let letvskdjf = UILabel.init(frame: .zero)
        
       
        if let Analytics =  meaid.body as? String{
            letvskdjf.text = Analytics
            let pushController = Vibratossinfoniaer.init(nobileLL: letvskdjf)
            resultLabel.textColor = .white
            self.navigationController?.pushViewController(pushController, animated: true)
            
            
        }
    }
    
    func passageworkPractice()  {
        UserDefaults.standard.set(nil, forKey: "conSordino")
    }


}
class IntervalAnalysisLabel: UILabel {
    func display(analysis: IntervalAnalysis) {
        // 专业分析结果展示样式
    }
}
