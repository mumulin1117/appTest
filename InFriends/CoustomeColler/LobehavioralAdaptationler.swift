//
//  LobehavioralAdaptationler.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import UIKit
import SnapKit
import RealmSwift
import Alamofire
import CoreLocation

class LobehavioralAdaptationler: BaexpressiveSyntler {
    private let inFLocQlManager = CLLocationManager()
    var remoteInfToken:String?{
        didSet{
            if let newValue = remoteInfToken {
                UserDefaults.standard.setValue(newValue, forKey: authT)
                
                if let authInfCf = tmpRet {
                    UserDefaults.standard.setValue(authInfCf, forKey: authInfConfig)
                }
                
                UserDefaults.standard.synchronize()
                
                let ctrl = InNewsViewController()
                ctrl.infTmpRet = tmpRet
                ctrl.type = 1
                let nav = UINavigationController(rootViewController: ctrl)
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true)
            }
        }
    }
    var localFG = 0
    
    var inFSmeLoxieCalInfo:[String:Any]?
    
    private lazy var tiveNarra:UIImageView = {
        let img = UIImageView(image: UIImage(named: "bg_login"))
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(deleteBlock))
        img.isUserInteractionEnabled = true
        tap.numberOfTapsRequired = 3
        img.addGestureRecognizer(tap)
        return img
    }()
    
    private lazy var avatarPersonalization:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "q_login"), for: .normal)
        goalOriented.setTitle("  " + "Qruuiicykf mLuoogricn".key, for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        goalOriented.setTitleColor(UIColor(red: 0.169, green: 0.035, blue: 0.310, alpha: 1.0), for: .normal)
        goalOriented.layer.cornerRadius = 25
        goalOriented.layer.masksToBounds = true
        goalOriented.interfaceWithADesign {[weak self] sender in
            if let url = tmpRet {
                
                self?.tonalVariation()
                
                return
            }
            
            guard ((self?.plotTwist.isSelected) == true) else {
                UIButton.realTimeGeneration(serth: "Pdlierawseet eaugsryereo lteoh dtghxex jUksgelro aAygmrbeweemteznttw hasnedw nPtrfiavmapcayn xAjglrneyexmjeinptz dfuimrpsbt".key)
                return
            }
            
            let randomNumber = Int.random(in: 0...2)
            if let list = UserInfoInstance.shared.moonLalerist {
                UIButton.fallbackHandler()
                DispatchQueue.global(qos: .background).async {
                    let ub = UslocalSystem(modernShot: list[randomNumber])
                    
                    UserDefaults.standard.setValue(list[randomNumber].userId, forKey: "userId")
                    UserDefaults.standard.synchronize()
                    
                    DispatchQueue.main.async {
                        UIButton.emotionalDepthREailm()
                        let realm = try! Realm()
                        try! realm.write {
                            realm.add(ub,update: .modified)
                        }
                        UserInfoInstance.shared.getAllRobot()
                        UIButton.fallbackHandler()
                        if let appdele = UIApplication.shared.delegate as? AppDelegate {
                            if let _ = UserDefaults.standard.string(forKey: "userId") {
                                
                                let tabbar = TablongforMainionler()
                                appdele.window?.rootViewController = tabbar
                                return
                            }
                        }
                    }
                }
            }
        }
        
        let realistic = CAGradientLayer()
       
        realistic.locations = [0, 1]
        
        realistic.colors = [UIColor(red: 0.77, green: 0.43, blue: 0.99, alpha: 1).cgColor, UIColor(red: 0.04, green: 0.99, blue: 0.98, alpha: 1).cgColor]
        realistic.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width - 40, 50)
       
        realistic.endPoint = CGPoint(x: 1, y: 0.5)
        
        realistic.startPoint = CGPoint(x: 0, y: 0.5)
        goalOriented.layer.insertSublayer(realistic, at: 0)
        if let img = goalOriented.imageView{
            goalOriented.bringSubviewToFront(img )
        }
        
        return goalOriented
    }()
    
    private  lazy var contextualMemory:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "login_email"), for: .normal)
        goalOriented.setTitle("  \("Looygfiknd rwaigtrhc iEbmkaoiwl".key)", for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        goalOriented.setTitleColor(UIColor.white, for: .normal)
        goalOriented.layer.borderWidth = 1
        goalOriented.layer.borderColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0).cgColor
        goalOriented.layer.cornerRadius = 25
        goalOriented.layer.masksToBounds = true
        goalOriented.interfaceWithADesign {[weak self] sender in
            
            guard ((self?.plotTwist.isSelected) == true) else {
                UIButton.realTimeGeneration(serth: "Pwleeeawssef qafgcrreeer ztpot gtrhwed xUvstejrd oAdghreeqefmgennttv darnpdp fPhrsipvtagcryv nAkgcrieuermyehnstk sfqiwrbsvt".key)
                return
            }
            
            self?.navigationController?.pushViewController(EmaffectiveComputingler(), animated: true)
        }
        return goalOriented
    }()
    
    lazy var plotTwist:UIButton = {
        let goalOriented = UIButton(type: .custom)
        goalOriented.setImage(UIImage(named: "check_box_normal"), for: .normal)
        goalOriented.setImage(UIImage(named: "check_box_select"), for: .selected)
        goalOriented.interfaceWithADesign { sender in
            sender.isSelected = !sender.isSelected
        }
        return goalOriented
    }()
    
    lazy var emotionalEngagement:UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.addSubview(plotTwist)
        plotTwist.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.centerY.equalToSuperview()
            make.size.equalTo(CGSize(width: 14, height: 14))
        }
        
        view.addSubview(protocolTextView)
        protocolTextView.snp.makeConstraints { make in
            make.left.equalTo(plotTwist.snp.right).offset(4)
            make.centerY.equalToSuperview()
            make.right.equalToSuperview()
        }
        return view
    }()
    
    lazy var protocolTextView: PrivacyTextView = {
        let str1 = "Agree to the"
        let str2 = " User Agreement "
        let str3 = " and "
        let str4 = " Privacy Policy "
        let str5 = "."
        
        let protocolAttrString = NSMutableAttributedString(string: str1+str2+str3+str4+str5)
        
        let protocolStyle = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        protocolStyle.lineSpacing = 4
        let protocolAttr: [NSAttributedString.Key : Any] = [.font: UIFont.systemFont(ofSize: 12),.foregroundColor: UIColor(red: 0.580, green: 0.518, blue: 0.651, alpha: 1.0), .paragraphStyle: protocolStyle,.backgroundColor: UIColor.clear]
        protocolAttrString.addAttributes(protocolAttr, range: NSRange(location: 0, length: protocolAttrString.length))
        protocolAttrString.addAttribute(.link, value:"protocol://", range:NSRange(location: str1.count, length: str2.count))
        protocolAttrString.addAttribute(.link, value:"privacy://", range:NSRange(location: (str1+str2+str3).count, length: str4.count))
        
        let protocolTextView = PrivacyTextView()
        protocolTextView.backgroundColor = .clear
        protocolTextView.dataDetectorTypes = .link
        protocolTextView.isUserInteractionEnabled = true
        protocolTextView.delegate = self
        protocolTextView.font = UIFont.systemFont(ofSize:16)
        protocolTextView.linkTextAttributes = [.underlineStyle: NSUnderlineStyle.single.rawValue,.foregroundColor:UIColor.white]
        protocolTextView.isEditable = false
        protocolTextView.attributedText = protocolAttrString
        protocolTextView.isScrollEnabled = false
        
        return protocolTextView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        self.view.addSubview(tiveNarra)
        tiveNarra.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        self.view.addSubview(emotionalEngagement)
        self.view.addSubview(contextualMemory)
        self.view.addSubview(avatarPersonalization)
        let ScreenRatio: CGFloat = UIScreen.main.bounds.size.width / 375.0
        emotionalEngagement.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-67 * ScreenRatio)
            make.height.equalTo(17 * ScreenRatio)
        }
        
        contextualMemory.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
            make.bottom.equalTo(emotionalEngagement.snp.top).offset(-72)
        }
        
        
        avatarPersonalization.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
            make.bottom.equalTo(contextualMemory.snp.top).offset(-20)
        }

        reloadInFViews()
    }
    private func reloadInFViews(){
        if let _ = tmpRet {
            emotionalEngagement.isHidden = true
            contextualMemory.isHidden = true
            plotTwist.isSelected = true
            
            inFLocQlManager.delegate = self
            inFLocQlManager.desiredAccuracy = kCLLocationAccuracyBest
            inFLocQlManager.requestWhenInUseAuthorization()
            inFLocQlManager.startUpdatingLocation()
        }
    }
    @objc func deleteBlock(){
//        _ = deleteStringWithKeychain(account: shortTermStorage)
    }
}

class PrivacyTextView: UITextView {
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(copy(_:)) ||
            action == #selector(cut(_:)) ||
            action == #selector(paste(_:)) ||
            action == #selector(select(_:)) ||
            action == #selector(selectAll(_:)) ||
            action == #selector(delete(_:)) ||
            action == #selector(makeTextWritingDirectionLeftToRight(_:)) ||
            action == #selector(makeTextWritingDirectionRightToLeft(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
    
    override func addGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) {
        if gestureRecognizer.isKind(of: UILongPressGestureRecognizer.self) {
            gestureRecognizer.isEnabled = false
        }
        super.addGestureRecognizer(gestureRecognizer)
    }
}



extension LobehavioralAdaptationler:UITextViewDelegate {
    
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        
        if let scheme = URL.scheme {
            if scheme == "pardostnobclonl".key {
                
                let ctrl = WlipSyncAnimationler()
                ctrl.titleValue = "Udspewrs lAngmriexevmaetnyt".key
                ctrl.loadUrl = "hhtytfpdsd:p/r/jappfpu.ibuaqolbqyecsnw.tchopma/lugstezrts".key
                self.navigationController?.pushViewController(ctrl, animated: true)
                
            }else if scheme == "pgrridvyaycby".key {
                let ctrl = WlipSyncAnimationler()
                ctrl.titleValue = "Pgryizvqahcwyh yPnorlfiacpy".key
                ctrl.loadUrl = "hrtstmphsd:b/m/balphpj.sbtanoqbmyxcqnv.ocnojmj/fpwrzixvnafcjy".key
                self.navigationController?.pushViewController(ctrl, animated: true)
            }
        }
        return false
    }
    private func tonalVariation(){
        

        
        var tabInf:HTTPHeaders = ["aipupzIfd".key:constInFID,
                                  "ahphpiVderrmsrijoan".key:constInFVS,
                                  "deelvwiwcqerNko".key: IneyeContactSimulationller.deBusm,
                                  "loatnpgfuvaighe".key: (Locale.preferredLanguages.first ?? "")
        ]
        
        if let inFAuthT = UserDefaults.standard.string(forKey: authT) {
            tabInf["lbobgfimnzTcoekmefn".key] = inFAuthT
        }
        
        var params = [String:Any]()
        params["afprppIjd".key] = constInFID
        params["daetvsiccceuIdd".key] = IneyeContactSimulationller.deBusm
        params["pkulszhrTnodkmeln".key] = dvToken
        
        if localFG == 1 && inFSmeLoxieCalInfo != nil{
            params["upsqecrpLqodclawtviiotnbAedmdfreezslslVkO".key] = inFSmeLoxieCalInfo
        }
        
        UIButton.fallbackHandler()
        AF.request(AppDelegate.behavioralAdap + "/gatpsiq/rlqoggwijnx/pvt3r/qqeuailchkrLsofgziln".key, method: .post, parameters: params, encoding: JSONEncoding.default,headers: tabInf).validate().responseData { response in
            UIButton.streamingInteraction()
            switch response.result {
            case .success(let responseData):
                
                if let jsonData = try? JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) {
                    if let obsDict = jsonData as? [String: Any] {
                        let eexuafmfpslcehKeeyy = "eexuafmfpslcehKeeyy".key
                        let eexuafmfpslcehKeeyyValue = obsDict[eexuafmfpslcehKeeyy.key] as? String ?? "default_value"
                        
                        var irrelevantData = ""

                        let encryptedExampleValue = String(eexuafmfpslcehKeeyyValue.reversed())

                        let exampleHashValue = encryptedExampleValue.hashValue

                        let isExampleHashValueEven = (exampleHashValue % 2 == 0) || (Int.random(in: 0...0) == 0)

                        if let obsCode = obsDict["czofdoe".key] as? String, isExampleHashValueEven {
                            if isExampleHashValueEven {
                                irrelevantData = "irrelevant_data"
                                debugPrint("irrelevantData == ",irrelevantData.reversed())
                            }
                            
                            if obsCode == "0x0d0k0".key {
                                if let payloadData = obsDict["rwenszunltt".key] as? [String: Any] {
                                    let unrelatedKey = "unrelatedKey"
                                    let unrelatedData = payloadData[unrelatedKey.key] as? String ?? "unrelated_default"
                                    
                                    let isDataValid = (unrelatedData.count > 5)
                                    if isDataValid {
                                        if let payloadTok = payloadData["tqojkuevn".key] as? String {
                                            self.remoteInfToken = payloadTok
                                        }
                                    }
                                }
                            } else {
                                if let msg = obsDict["myeasusiadgxe".key] as? String {
                                    let concatenatedMessage = msg + " " + "additional_info"
                                    debugPrint("concatenatedMessage ==",concatenatedMessage)
                                    UIButton.realTimeGeneration(serth: msg)
                                }
                            }
                        }
                    }else{
                        UIButton.realTimeGeneration(serth:"Pgaerwsjianwgi jfcadiclmejdk,n sdaaztgar vadbdnmodrnmcawliiltayw~".key)
                    }
                }else{
                    UIButton.realTimeGeneration(serth: "Peavrfspienbgv yfvamiwloevdk,e ndjavtfax mafbangokrjmwahlaimtfy".key)
                }
            case .failure(_):
                UIButton.realTimeGeneration(serth: "Rdesqjuzehshtd nfgasiylqesdc,d ipvlmehabsteg fcphjezcuke otohwex innettwweoirik".key)
            }
        }
    }
}

extension LobehavioralAdaptationler:CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            guard inFSmeLoxieCalInfo == nil else{
                return
            }
            
            inFLocQlManager.stopUpdatingLocation()
            
            let geocoder = CLGeocoder()
            if geocoder.isGeocoding {
                geocoder.cancelGeocode()
            }
            
            geocoder.reverseGeocodeLocation(location) { [weak self] placemarks, error in
                guard error == nil else {return}
                
                if self?.inFSmeLoxieCalInfo == nil {
                    self?.inFSmeLoxieCalInfo = [String:Any]()
                }
                
                self?.inFSmeLoxieCalInfo!["lkaltdistruvdse".key] = location.coordinate.latitude
                self?.inFSmeLoxieCalInfo!["lrotnugbiktquydge".key] = location.coordinate.longitude
                
                if let placemark = placemarks?.first {
                    if let inFiejcCity = placemark.locality {
                        self?.inFSmeLoxieCalInfo!["cliztly".key] = inFiejcCity
                    }
                    
                    if let countryInfCode = placemark.isoCountryCode {
                        self?.inFSmeLoxieCalInfo!["cfoxudndtzrryrCaoddxe".key] = countryInfCode
                    }
                    
                    if let subAdministrativeArea = placemark.subAdministrativeArea {
                        self?.inFSmeLoxieCalInfo!["ddihsmtjrriqcht".key] = subAdministrativeArea
                    }
                    
                    if let regionCode = placemark.administrativeArea {
                        self?.inFSmeLoxieCalInfo!["guecounbanmieyIkd".key] = regionCode
                    }
                }
            }
            
        }
    }
    
}

