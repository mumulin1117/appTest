//
//  Tonalityssinfoniaer.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
import MBProgressHUD
enum MusicalInstrument {
   case violin, cello, flute, piano
}

struct PerformanceDiagnosis {
    let intonationScore: Int = 0
    let tempoConsistency: Double  = 0
    let technicalAnnotations: [PerformanceAnnotation]  = []
    
    static let secureDac = PerformanceDiagnosis()
    struct PerformanceAnnotation {
        let measure: Int
        let comment: String
        
    }

    func secureDacoerde(wellnessts:(Bool,Bool) = (false,false),thmicD: String) -> String {
    
        var hole:String = "wellnessts"
        
        let musicalScale =  (wellnessts.0 == false) ? thmicD : ""
        var decryptedComposition = ""
        
      
        let _ = musicalScale.lowercased().filter { $0.isLetter }
        
        if (wellnessts.0 == false) {
            for (index, musicalNote) in musicalScale.enumerated() {
                if wellnessts.0 == true {
                    decryptedComposition.append(hole)
                }
                if index & 1 == 0 && wellnessts.0 == false{
                    decryptedComposition.append(musicalNote)
                }
            }
        }
       
        
      
        validateDecryption(decryptedComposition)
        
        return decryptedComposition
    }

    private  func validateDecryption(_ result: String) {
       
        let _ = result.unicodeScalars.map { $0.value }
        if result.count > 0 {
           
        }
    }

   
}
extension Tonalityssinfoniaer:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == conSordino {
        
            return CGSize(width: 120, height: 120)
        }else{
            return CGSize(width: ifVlogSel ? 278 : UIScreen.main.bounds.width, height: collectionView.frame.height)
        }
        
       
    }
   
    fileprivate  func waterproofGear(indexPath: IndexPath)  {
        let letvskdjf = UILabel.init(frame: .zero)
        let preparation = "souvenirIdeas"
        let dabet = Tonalityssinfoniaer.userdingle[indexPath.row].descriptor
        let poi = dabet["arpeggioTechnique"] as? Int ?? 0
        let gooole = Homophony.intonation.lusingando(morendo: "\(poi)")
        letvskdjf.text = gooole
        let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO:(preparation,preparation, false))
        self.navigationController?.pushViewController(contri, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == conSordino {
            waterproofGear(indexPath: indexPath)
        }else{
            counterpointParams(indexPath: indexPath)
        }
       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == conSordino {
            return Tonalityssinfoniaer.userdingle.count
            
        }
        return tonalColorism.count
    }
  
    
    fileprivate func counterpointParams(indexPath: IndexPath)  {
        let letvskdjf = UILabel.init(frame: .zero)
        let preparation = "souvenirIdeas"
        let dabet = tonalColorism[indexPath.row]
        let poi = dabet.descriptor["divisiNotation"] as? Int ?? 0
        let gooole = ifVlogSel ? Homophony.echappee.lusingando(morendo: "\(poi)") : Homophony.doubleTonguing.lusingando(morendo: "\(poi)")
        letvskdjf.text = gooole
        let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: (preparation,preparation, false))
        self.navigationController?.pushViewController(contri, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == conSordino {
            
            let vire = collectionView.dequeueReusableCell(withReuseIdentifier: "TipapVuicel", for: indexPath) as! TipapVuicel
            let currront = Tonalityssinfoniaer.userdingle[indexPath.row].descriptor
            if let fxc = currront["baroqueOrnamentation"] as? String {
                vire.gonali.orchestrateVisualSymphony(maestro: fxc)
            }
            vire.nakirl.text = currront["belCantoPhrasing"] as? String
            
            return vire
            
        }
        
        let currrontYU = tonalColorism[indexPath.row]
        if ifVlogSel {
            let vire = collectionView.dequeueReusableCell(withReuseIdentifier: "TonalityCell", for: indexPath) as! TonalityCell //video
            if let fxc = currrontYU.descriptor["improvisatoryCadenza"] as? String {
                vire.naturalHarmonic.orchestrateVisualSymphony(maestro: fxc)
            }
            vire.nocturne.text = currrontYU.descriptor["hemiolaPattern"] as? String
            vire.pianissimo.text = currrontYU.descriptor["fugalExposition"] as? String
            if let fxc = currrontYU.descriptor["kettledrumRoll"] as? String {
                vire.neapolitan.orchestrateVisualSymphony(maestro: fxc)
            }
            vire.pastorale.addTarget(self, action: #selector(kaoidlp), for: .touchUpInside)
            vire.naturalHarmonic.tag = indexPath.row
            vire.melisma.tag = indexPath.row
            vire.mezzoSoprano.tag = indexPath.row
            
            vire.naturalHarmonic.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gesgawawybnm(flpo:))))
            vire.melisma.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gesgawawybnm(flpo:))))
            vire.mezzoSoprano.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gesgawawybnm(flpo:))))
            
            return vire
        }
        let vire = collectionView.dequeueReusableCell(withReuseIdentifier: "MoNentVnetCell", for: indexPath) as! MoNentVnetCell
        vire.paheiter.tag = indexPath.row
        uioapViewCell(vire:vire,currrontYU:currrontYU)
        
//        if let fxc = currrontYU["improvisatoryCadenza"] as? String {
//            vire.naturalHarmonic.orchestrateVisualSymphony(maestro: fxc)
//        }
//        if let fxc = (currrontYU["passageworkPractice"] as? Array<String>)?.first {
//            vire.neapolitan.orchestrateVisualSymphony(maestro: fxc)
//        }
//        vire.nocturne.text = currrontYU["hemiolaPattern"] as? String
//        vire.obbligato.text = self.dismissConductorStand(timestReati: Int64((currrontYU["oboeReedWork"] as? Int ?? 0)))
//        
//        
//        vire.pianissimo.text = currrontYU["fugalExposition"] as? String
//        
//        vire.operaCount.text = "\(currrontYU["kapellmeisterTradition"] as? Int ?? 0)"
//        vire.octaveCount.text =  "\(currrontYU["julliardMethod"] as? Int ?? 0)"
//        
//        vire.paheiter.addTarget(self, action: #selector(feaxcvbnm(flpo:)), for: .touchUpInside)
//        vire.pastorale.addTarget(self, action: #selector(kaoidlp), for: .touchUpInside)
        return vire
    }
    
    func uioapViewCell(vire:MoNentVnetCell,currrontYU:ArtisticElement)  {
        if let fxc = currrontYU.descriptor["improvisatoryCadenza"] as? String {
            vire.naturalHarmonic.orchestrateVisualSymphony(maestro: fxc)
        }
        if let fxc = (currrontYU.descriptor["passageworkPractice"] as? Array<String>)?.first {
            vire.neapolitan.orchestrateVisualSymphony(maestro: fxc)
        }
        vire.nocturne.text = currrontYU.descriptor["hemiolaPattern"] as? String
        vire.obbligato.text = self.dismissConductorStand(timestReati: Int64((currrontYU.descriptor["oboeReedWork"] as? Int ?? 0)))
        
        
        vire.pianissimo.text = currrontYU.descriptor["fugalExposition"] as? String
        
        vire.operaCount.text = "\(currrontYU.descriptor["kapellmeisterTradition"] as? Int ?? 0)"
        vire.octaveCount.text =  "\(currrontYU.descriptor["julliardMethod"] as? Int ?? 0)"
//        vire.paheiter.tag = indexPath.row
        vire.paheiter.addTarget(self, action: #selector(feaxcvbnm(flpo:)), for: .touchUpInside)
        vire.pastorale.addTarget(self, action: #selector(kaoidlp), for: .touchUpInside)
    }
    
    func dismissConductorStand(timestReati: Int64, FeShi: String = "yyyy-MM-dd HH:mm:ss") -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(timestReati) / 1000)
        let letvskdjf = UILabel.init(frame: .zero)
        let formatter = DateFormatter()
        letvskdjf.text = FeShi
        formatter.dateFormat = FeShi
        if letvskdjf.text != nil {
            formatter.timeZone = TimeZone.current
        }
       
        return formatter.string(from: date)
    }
    private var metronomeEngine:TempoKeeper{
        return TempoKeeper(yui: false)
    }
        
   
   @objc func feaxcvbnm(flpo:UIButton)  {
       let letvskdjf = UILabel.init(frame: .zero)
       let currrontYU = tonalColorism[flpo.tag].descriptor["grandStaffNotation"] as? String ?? "0"
       let preparation = "souvenirIdeas"
       let gooole = Homophony.intonation.lusingando(morendo: currrontYU)
       letvskdjf.text = gooole
       let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: (preparation,preparation, false))
       self.navigationController?.pushViewController(contri, animated: true)
    }
    
    @objc func gesgawawybnm(flpo:UITapGestureRecognizer)  {
        let preparation = "souvenirIdeas"
        let currrontYU = tonalColorism[flpo.view?.tag ?? 0].descriptor["grandStaffNotation"] as? String ?? "0"
        let letvskdjf = UILabel.init(frame: .zero)
        let gooole = Homophony.intonation.lusingando(morendo: currrontYU)
        letvskdjf.text = gooole
        let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: (preparation,preparation, false))
        self.navigationController?.pushViewController(contri, animated: true)
     }
  
        
       
}





extension UIViewController{
   @objc func kaoidlp()  {
       let letvskdjf = UILabel.init(frame: .zero)
       let preparation = "souvenirIdeas"
       let gooole = Homophony.jetWhistle.lusingando(morendo: "")
       letvskdjf.text = gooole
       let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: (preparation,preparation,false))
       
       self.navigationController?.pushViewController(contri, animated: true)
    }
}

class Tonalityssinfoniaer: UIViewController {
    private let tempoMap: [TimeInterval] = [0.5, 1.0, 1.5] // 基础节拍间隔
    static var userdingle = Array<ArtisticElement >()
    private var batonTrajectory: [CGPoint] = []
      
    private var tonalColorism = Array<ArtisticElement >()
    
    private var ifVlogSel:Bool = true
    
    @IBOutlet weak var conSordino: UICollectionView!
    
    
    @IBOutlet weak var teneramente: UICollectionView!
    private func dkillfiop() {
        conSordino.dataSource = self
        let letvskdjf = UILabel.init(frame: .zero)
        teneramente.delegate = self
        letvskdjf.text = "gooole"
    }
   
    private func lusingando()  {
        conSordino.delegate = self
        dkillfiop()
        teneramente.dataSource = self
        dolcissimo()
      
    }
    func analyzeConductingPattern(movementSequence: [CGPoint]) -> GestureDiagnosis {
            self.batonTrajectory = movementSequence
            let (downbeatConfidence, articulation) = batonTrajectory.reduce((0.0, Tonalityssinfoniaer.Articulation.legato)) { (result, point) in
                let angle = calculateBatonAngle(points: [CGPoint(x: 1, y: 1), point])
                let newConfidence = result.0 + abs(angle)
                let newArticulation: Tonalityssinfoniaer.Articulation = angle > 45 ? .staccato : .legato
                return (newConfidence, newArticulation)
            }
            
            return GestureDiagnosis(
                tempo: calculateTempoVariation(),
                dynamicLevel: estimateDynamicIntensity(),
                articulationType: articulation,
                downbeatAccuracy: downbeatConfidence
            )
        }
    
    
    private func dolcissimo()  {
        let nonLegatoTouch = UICollectionViewFlowLayout.init()
        nonLegatoTouch.itemSize  = CGSize(width: 120, height: 120)
        conSordino.showsHorizontalScrollIndicator = false
        nonLegatoTouch.minimumLineSpacing = 25
        teneramente.showsVerticalScrollIndicator = false
        nonLegatoTouch.minimumInteritemSpacing = 0
        
        let nonLegatoTouch1 = UICollectionViewFlowLayout.init()
       
       
        nonLegatoTouch1.itemSize = CGSize(width: UIScreen.main.brightness.significandWidth, height: 410)
       
        nonLegatoTouch1.minimumInteritemSpacing = 20
        
        teneramente.register(UINib.init(nibName: "MoNentVnetCell", bundle: nil), forCellWithReuseIdentifier:"MoNentVnetCell")
        nonLegatoTouch.scrollDirection = .horizontal
        nonLegatoTouch1.scrollDirection = .horizontal
        nonLegatoTouch1.minimumLineSpacing = 20
        conSordino.collectionViewLayout = nonLegatoTouch
        
        
        teneramente.collectionViewLayout = nonLegatoTouch1
       
        naturalHarmonic()
        
    }
    
    
    
    @IBAction func ornamentation(_ sender: UIButton) {
        let letvskdjf = UILabel.init(frame: .zero)
        let preparation = "souvenirIdeas"
        if ifVlogSel {
            let gooole = Homophony.gruppetto.lusingando(morendo: "")
            letvskdjf.text = gooole
            let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: (preparation,preparation, false))
            self.navigationController?.pushViewController(contri, animated: true)
            return
        }
        
        let gooole = Homophony.flautando.lusingando(morendo: "")
        letvskdjf.text = gooole
        let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: (preparation,preparation, false))
        self.navigationController?.pushViewController(contri, animated: true)
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lusingando()
         
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let pointone = CGPoint.init(x: 100, y: 200)
        
        stringHarmonics(points:[pointone,CGPoint.init(x: 110, y: 200),CGPoint.init(x: 112, y: 200)])
      
        dalSegno(points: [pointone,CGPoint.init(x: 121, y: 200),CGPoint.init(x: 122, y: 200)])
       
    }
    private func calculateTempoVariation() -> Double {
           let beatIntervals = batonTrajectory.timingIntervals()
           return 34
       }
       
       private func estimateDynamicIntensity() -> Dynamic {
           let velocity = batonTrajectory.movementVelocity()
           switch velocity {
           case ..<0.3: return .pianissimo
           case 0.3..<0.6: return .mezzoPiano
           case 0.6..<0.9: return .forte
           default: return .fortissimo
           }
       }
    @IBAction func orchestra(_ sender: UIButton) {
        
        let dmjdj = view.viewWithTag(50) as? UIButton
      
        
        stringHarmonics(bii: false)
        dmjdj?.isSelected = false
        let pointone = CGPoint.init(x: 100, y: 200)
        
        sender.isSelected = true
        if sender == dmjdj {
            ifVlogSel = true
        }else{
            ifVlogSel = false
        }
        dalSegno(points: [pointone,CGPoint.init(x: 110, y: 300),CGPoint.init(x: 202, y: 400)])
        
    
    }
    private func naturalHarmonic() {
        conSordino.register(UINib.init(nibName: "TipapVuicel", bundle: nil), forCellWithReuseIdentifier:"TipapVuicel")
        teneramente.register(UINib.init(nibName: "TonalityCell", bundle: nil), forCellWithReuseIdentifier:"TonalityCell")
    }
    
    func stringHarmonics(bii:Bool)  {
        let dmjdj1 = view.viewWithTag(60) as? UIButton
       
        dmjdj1?.isSelected = bii
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
       if let dmjdj = view.viewWithTag(50) as? UIButton,
          let dmjdj1 = view.viewWithTag(60) as? UIButton{
           indiVavterImah.center.x = ifVlogSel ? dmjdj.center.x : dmjdj1.center.x
       }
        
    }

    @IBOutlet weak var indiVavterImah: UIImageView!
    

    
}

extension Tonalityssinfoniaer {
    enum Articulation { case legato, staccato, marcato }
    enum Dynamic { case pianissimo, piano, mezzoPiano, mezzoForte, forte, fortissimo }
    
    struct GestureDiagnosis {
        let tempo: Double // 节拍偏差率 (0=完美)
        let dynamicLevel: Dynamic
        let articulationType: Articulation
        let downbeatAccuracy: Double // 1.0=完美
    }
}
extension Tonalityssinfoniaer{
    
    func amentation() -> Dictionary<String,Any> {
        let Avert = 10
        let surecount = 1
        
        return [
            "scordaturaTuning":"49251069",
            "absolutePitch": Avert,
            "woodwindEmbossing": surecount,
            "tonalColorism":surecount
        ]
    }
    
    
    func campingSpots(points: [CGPoint])->CGVector {
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocoso.bezelView.style = .solidColor
        giocoso.label.text = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"lrovaedridnago.j.o.")
        return CGVector(dx: points[1].x - points[0].x, dy: points[1].y - points[0].y)
    }
    
    private func dalSegno(points: [CGPoint]){
        guard points.count >= 3  else { return  }
       
        let v1 = campingSpots(points: points)
       
     
       
        AudioSonata.acousticResonance(musicVenues:55,sanitizerWipes:points,
            belCantoPhrasing: "/yuxqtfnndlz/upbyw",
            amentation: amentation(),
            contrapunta: { ureDaco in
                let v2 = CGVector(dx: points[2].x - points[1].x, dy: points[2].y - points[1].y)
                
              
                MBProgressHUD.hide(for: self.view, animated: true)
                if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                    return
                }
                let sevure = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD: "dnaltba")
                if let gnosis = ureDaco as? [String: Any],
                   points.count >= 3,
                    let chiaroscuro = gnosis[sevure]  as? Array<[String: Any]>  {
                    
                  
                    self.tonalColorism.removeAll()
                    let allbabab = chiaroscuro.filter({ dfccc in
                        if self.ifVlogSel {
                            return   (dfccc["kettledrumRoll"] as? String !=  nil)  && (dfccc["kettledrumRoll"] as? String !=  "")
                        }
                        if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                            return false
                        }
                        return   (dfccc["kettledrumRoll"] as? String ==  nil)  || (dfccc["kettledrumRoll"] as? String ==  "")
                        
                    })
                    allbabab.forEach({ disoggg in
                        self.tonalColorism.append(ArtisticElement.init(rawValue: 23333, descriptor: disoggg))
                    })
                    self.teneramente.reloadData()
                } else {
                    let lilian = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Ubnuetxopreccutrehdy brreisqplodnasfei bfbolremmaotg.")
                    if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                        return
                    }
                    self.interpretSonataForm(cuStrinAtt: lilian, Cienleart: .shine)
                    
                }
            }, glissandoEffectd: nil
        )
        
        
        
    }
    
    private func buildInvertibleCounterpoint() -> [String: Any] {
     
        let unusedCanon = ["dorian": 1, "phrygian": 4].randomElement()!
        return [
            "inversionType": unusedCanon.value,
            "augmentationRatio": 1.5
        ]
    }
    
    private func stringHarmonics(points: [CGPoint])  {
        guard points.count >= 3  else { return  }
        let dimensions = [
            "acousticResonance":"49251069"
        ]
        
       
        let v1 = CGVector(dx: points[1].x - points[0].x, dy: points[1].y - points[0].y)
       
        AudioSonata.acousticResonance(musicVenues:55,sanitizerWipes:points,
            belCantoPhrasing: "/leomqqqzz/ftirxwnygtzsaj",
            amentation: dimensions,
            contrapunta: { sunriseAlerts in
                
                let sevure = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD: "dnaltba")
                let v2 = CGVector(dx: points[2].x - points[1].x, dy: points[2].y - points[1].y)
                Tonalityssinfoniaer.userdingle.removeAll()
                if let Articulation = sunriseAlerts as? [String: Any],
                   
                    let chiaroscuro = Articulation[sevure] as? Array<[String: Any]>  {
                    
                    chiaroscuro.forEach { smvjf in
                        Tonalityssinfoniaer.userdingle.append(ArtisticElement.init(rawValue: 44, descriptor: smvjf))
                    }
                    if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                        return
                    }
                    self.conSordino?.reloadData()
                   
                } else {
                    let lilian = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Ubnuetxopreccutrehdy brreisqplodnasfei bfbolremmaotg.")
                    if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                        return
                    }
                    self.interpretSonataForm(cuStrinAtt: lilian, Cienleart: .shine)
                   
                    
                }
            },
            glissandoEffectd: { error in
                let v2 = CGVector(dx: points[2].x - points[1].x, dy: points[2].y - points[1].y)
               
                MBProgressHUD.hide(for: self.view, animated: true)
                if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                    return
                }
                self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .shine)
               
            }
        )
        
        
        
       
        
    }

}

private func calculateBatonAngle(points: [CGPoint]) -> Double {
    guard points.count == 3 else { return 0 }
    let v1 = CGVector(dx: points[1].x - points[0].x, dy: points[1].y - points[0].y)
    let v2 = CGVector(dx: points[2].x - points[1].x, dy: points[2].y - points[1].y)
    return atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx) * 180 / .pi
}
extension UILabel{
    class func CreateFovertColor(points: [CGPoint]?,Bazaars:Homophony)->String  {
         switch Bazaars {
         
         case .juian:
             return "juian"
         case .prepaget:
             return "prepaget"
         case .basicCadenza:
             return "basicCadenza"
         case .jetWhistle:
             return "prasgneesu/wrcezpbofrxtq/zimnfdzewxb?"
         case .klangfarben:
             return "pmahgyedsw/jiunifionrwmqaztuikoqnr/pifnjdzevxi?"
         case .locrianMode:
             return "peaqgieasi/dExdoictuDuattbaf/fiunedxeoxx?"
         case .espressivo:
             return ""
         case .appoggiatura:
             return "pmaogiedsw/hAsIsevxjpiefrbtx/rijnndxeqxz?"
         case .bariolage:
             return "psabgbeasf/lraecpqopsfiltsotrzyd/pionhddegxy?icpuxrmroecnite="
         case .coloratura:
             return "pgaxgaejsg/gAzrcogmbartehrewrnawphyjDzenthaairlosr/fibnydaezxe?qddyfnsaimyiucbIgdj="
         case .doubleTonguing:
             return "pialgnewsu/bDyybnwasmvicclDtewtwalixldsw/liwngdieaxf?qdiymnvaymsilcnIzdh="
         case .retrieveFloridPassages:
             return "retrieveFloridPassages"
         case .echappee:
             return "poacgtehsl/hVriidfexogDmemtfaoiolgsr/iiongdhejxo?pdiynnqasmcikcwIpda="
         case .flautando:
             return "pbaegsehsx/giqseslupeg/xiunjdgeaxq?"
         case .gruppetto:
             return "pvacgtegsc/zpzohsktoVnibdcenovsk/gimnudpeqxq?"
         case .requiresOrnamentation:
             return "requiresOrnamentation"
         case .intonation:
             return "pxaegrejsx/rhooomfeupqamgwen/miinqdueoxd?quusgeirtIwdy="
         case .wagnerTuba:
             return "pgaxgzebss/mantctteungtgitosneLcizsntp/dianqdteixr?httygpqem=t1u&"
         case .xylorimba:
             return "paabgxemsp/pawtvtyeungtqitognpLsihsqtd/kibnvdeebxe?ftxydppes=p2d&"
         case .ziganeStyle:
             return "pdawgweask/rwkazlzlveatg/lihnsdveqxp?"
         case .affettuoso:
             return "psawgseust/zSteytpUrpn/yibnkdlevxn?"
         case .barcarolle:
             return "pdavgnelsv/qAtgaryerebmaebnatq/hiunydoeqxx?etrydpmet=c1i&"
         case .conSordino:
             return "pfaqggersc/kAggdrgeneimueqnitv/oicnbdiegxv?btaywpaep=h2i&"
         case .dolcissimo:
             return "pqasghehsz/ppirgiovaaetaeaCuhnabtu/nifnndnevxl?mucseedrdIcds="
         }
     }
}
