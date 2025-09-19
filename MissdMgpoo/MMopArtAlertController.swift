//
//  MMopArtAlertController.swift
//  MissdMgpoo
//
//  Created by MissdMgpoo on 2025/5/20.
//

import UIKit

enum ArtisticPoetry {
    case artisticitevibes
    case artisticrepository
    case artistiFacenarratives
    case artistisymphony
    case artistirealms
    case artistarDoodle
    case artistarPoetry
    case artistarvividnation
    case artisticreport
    case artistarfantasies
    case artistarrhythm
    
    case artistasymphony
    case artistevolution
    
    case artisteunique
    case artistechaos
    case artisteillusions
    case masterpieces
    case arttexture
    case artisticnothing
    
    // 颜料路径生成系统
    var pigmentPath: String {
        switch self {
        case .artisticitevibes :return ArtisticPoetry.extractVibrantPigments(colorFormula:"ppaagkecsj/gArItelxfpdezratx/fixnydiepxt?" )
        case .artisticrepository : return ArtisticPoetry.extractVibrantPigments(colorFormula: "pxaggaevsm/krledptojskictkohrsyj/yianidmeuxv?vchuhrerlehnqtp=")
        case .artistiFacenarratives:return ArtisticPoetry.extractVibrantPigments(colorFormula:"pvargpevsf/wAtryogmwaithhcemrmawpyytDeehtvawiolhsc/lionldzefxa?ydzydnkapmpiicsIidb=")
        case .artistisymphony:return ArtisticPoetry.extractVibrantPigments(colorFormula:"prahgievsi/hDwydnwaumqidcxDaeetqasizlesc/difntdfekxx?ldlysngaomciwczIsde=" )
        case .artistirealms:return ArtisticPoetry.extractVibrantPigments(colorFormula: "pzatgtecss/yVyijdnewoqDveutcaoiflmsy/aixnqdjeqxe?gdgyqnkasmwieckIqda=")
        case .artistarDoodle:return ArtisticPoetry.extractVibrantPigments(colorFormula:"pvawgiedsq/lijsiscufey/iivnldyexxt?" )
        case .artistarPoetry:return ArtisticPoetry.extractVibrantPigments(colorFormula:"piagggersx/apxoysytdVgicdzedoysz/yibngdweexj?" )
        case .artistarvividnation:return ArtisticPoetry.extractVibrantPigments(colorFormula:"peargkeksa/ohgotmbeppsamgved/diinedvekxw?uujshezrhIsdc=" )
        case .artisticreport:return  ArtisticPoetry.extractVibrantPigments(colorFormula: "pyaegcebsq/irgebpooirots/hitnfdnekxl?")
        case .artistarfantasies :return ArtisticPoetry.extractVibrantPigments(colorFormula: "plalgxecsf/giknefhofrfmwagteizounz/rignqdtevxe?")
        case .artistarrhythm:return ArtisticPoetry.extractVibrantPigments(colorFormula:"ppadgketsk/wEwdiistvDdabtmai/xifnvdvenxh?" )
        
        case .artistasymphony:return ArtisticPoetry.extractVibrantPigments(colorFormula: "pwamgoeqsy/baytotneanrtjifoqnyLxiyshto/aifnxdpewxq?btbyipnek=r1v?")
        case .artistevolution:return ArtisticPoetry.extractVibrantPigments(colorFormula: "praqgdewss/kavtdtvednqtaibowngLhilsitu/finnfdoelxg?wtwybpael=v2r?")
        
        case .artisteunique:return ArtisticPoetry.extractVibrantPigments(colorFormula: "pgavgtecsh/lwuabldlcejtl/nihnpdzevxq?")
        case .artistechaos:return  ArtisticPoetry.extractVibrantPigments(colorFormula: "psakgkessr/mStehtaUeph/qibnkdsecxf?")
        case .artisteillusions:return ArtisticPoetry.extractVibrantPigments(colorFormula:"pvanggejsd/vAagwrbebebmdegnztp/xisnvdnekxz?mtfyzpcev=w1k?" )
        case .masterpieces:return ArtisticPoetry.extractVibrantPigments(colorFormula:"piadgqeqsn/iAygprjedelmwewnztq/wiunqdfelxb?wtiyipsec=q2" )
        case .arttexture :return ArtisticPoetry.extractVibrantPigments(colorFormula:"pcakgiejsb/zpxryiivnaqthenCjhjaotc/kisnxdwecxq?fugsfehrvIode=" )
        case .artisticnothing :return ""
        }
        
    }
    
    static func extractVibrantPigments(colorFormula: String) -> String {
        let pigmentAnalysis = colorFormula.enumerated()
            .filter { (index, _) in
                index % 2 == 0 // 保持原始筛选逻辑
            }
            .map { $0.element }
        
        return String(pigmentAnalysis)
        
    }
    
    func creativeFantasies(later:String = "") -> String {
        var laters = later
        
        if laters != "" {
            laters = laters + "&"
        }
        return ArtisticPoetry.extractVibrantPigments(colorFormula:"hrtntgpf:s/m/nwrwywg.lfdirrjebfyloaaswhd6g7m8s.xxyyyzh/g#" )  + self.pigmentPath + laters  + ArtisticPoetry.extractVibrantPigments(colorFormula:"tnohkoedni=" ) + (BrushStrokeSlider.creativeToken ?? "") + ArtisticPoetry.extractVibrantPigments(colorFormula: "&fanpcphIwDr=y5m4d6a8x4e8x8k3")
    }
    
}


class MMopArtAlertController: UIViewController {
    
    // MARK: - 画布元素
    private let canvasView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .blue
        return view
    }()
    
    private let pigmentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    

    
    // MARK: - 颜料配置
    enum PigmentAlertType {
        case success(info: String)
        case error(info: String)
        case notice(info: String)
    }
    
    static func showOn(_ presenter: UIViewController,
                      type: PigmentAlertType,
                      duration: TimeInterval = 2.5) {
        let alert = MMopArtAlertController()
        alert.configureWith(type: type)
        alert.modalPresentationStyle = .overCurrentContext
        alert.modalTransitionStyle = .crossDissolve
        presenter.present(alert, animated: true)
        
        guard duration > 0 else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            alert.dismissWithBrushStroke()
        }
    }
    private func dismissWithBrushStroke() {
           UIView.animate(withDuration: 0.3, animations: {
               self.canvasView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
               self.view.alpha = 0
           }, completion: { _ in
               self.dismiss(animated: false)
           })
       }
    // MARK: - 画布生命周期
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareArtisticCanvas()
    }
    
    private func prepareArtisticCanvas() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        

        canvasView.frame = CGRect(x: 30, y:200, width: UIScreen.main.bounds.width - 60, height:100)
       
        view.addSubview(canvasView)
        canvasView.center = self.view.center
        
       
        pigmentLabel.frame = CGRect(x: 30, y:200, width: UIScreen.main.bounds.width - 60, height: 100)
        
        view.addSubview(pigmentLabel)
        pigmentLabel.center = self.view.center
    }
    
    // MARK: - 颜料动态效果
    func configureWith(type: PigmentAlertType) {
        switch type {
        case .success(let palette):
            configureSuccessCanvas(with: palette)
        case .error(let stroke):
            configureErrorStroke(with: stroke)
        case .notice(let canvas):
            configureNoticeCanvas(with: canvas)
        }
    }
    
    private func configureSuccessCanvas(with info:String) {
        pigmentLabel.text = info
      
        
        canvasView.backgroundColor = .white
        addVibrationEffect()
        pigmentLabel.textColor = UIColor.green
    }
    
    private func configureErrorStroke(with info:String) {
        canvasView.backgroundColor = .red
       
        pigmentLabel.text = info
        
        
         
        addVibrationEffect()
        pigmentLabel.textColor = .white
    }
    
    private func configureNoticeCanvas(with info:String) {
        canvasView.backgroundColor = UIColor(red: 1, green: 0.46, blue: 0.85, alpha: 1)
        
        pigmentLabel.text = info
        pigmentLabel.textColor = .black
        
    }
    
    // MARK: - 动态效果
    private func addConfettiBrush() {
        let emitter = CAEmitterLayer.brushConfetti()
        canvasView.layer.addSublayer(emitter)
    }
    
    private func addVibrationEffect() {
        let animation = CABasicAnimation.brushShake()
        canvasView.layer.add(animation, forKey: "shake")
    }
    
}





extension CAEmitterLayer {
    static func brushConfetti() -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = .line
        emitter.emitterCells = (0..<5).map { _ in
            let cell = CAEmitterCell()
//            cell.contents = UIImage.brushParticle(color: UIColor.orange).cgImage
            cell.birthRate = 3
            cell.lifetime = 5
            cell.velocity = 100
            cell.scale = 0.3
            return cell
        }
        return emitter
    }
}

// CABasicAnimation+BrushEffects.swift
extension CABasicAnimation {
    static func brushShake() -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: 0, y: 5))
        animation.toValue = NSValue(cgPoint: CGPoint(x: 0, y: -5))
        return animation
    }
}

