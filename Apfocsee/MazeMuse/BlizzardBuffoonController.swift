//
//  BlizzardBuffoon Controller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/6/4.
//
import CoreLocation
import SwiftMessages
import UIKit
//log

class BlizzardBuffoonController: UIViewController ,CLLocationManagerDelegate {
    
    
    private let prankEngine = CLLocationManager()
    private let jokeAlgorithm = CLGeocoder()
    
    
    private var riddleGenerator:String = ""
    private var trickDatabase:String = ""
    private var illusionCore:String = ""
    private   var hoaxSimulator:String = ""
    private  var laughterMetrics:NSNumber = 0.0
    private  var gagBlueprint:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
        let comedyNeuralNet = UIImageView.init(frame:UIScreen.main.bounds)
        comedyNeuralNet.contentMode = .scaleAspectFill
        comedyNeuralNet.image = UIImage(named: "joasoledy")
        view.addSubview(comedyNeuralNet)
        
        
        
        let  punProcessor = UIButton.init()
        punProcessor.setBackgroundImage(UIImage.init(named: "hipopLaobg"), for: .normal)
       
        punProcessor.setTitle("Quick Log", for: .normal)
        punProcessor.setTitleColor(UIColor.white, for: .normal)
        punProcessor.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        
        view.addSubview(punProcessor)
        punProcessor.addTarget(self, action: #selector(chuckleCircuit), for: .touchUpInside)
        punProcessor.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(52)
            make.width.equalTo(335)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
        }
        
        
        
      
        
        
        
        wackyWaveform()
        
        prankEngine.delegate = self
       
        
    }
    
    @objc func chuckleCircuit() {
        wackyWaveform()
        self.laodingFlay(loadingText:"log in...")
            
     
        

        let bamboozleBot = "/opi/v1/sdhfuishl"
        
        var quirkQuark: [String: Any] = [
           
            "xxn":DripDrollT.loonyLatency,
            "**v":[
               
                "countryCode":trickDatabase,
                "latitude":laughterMetrics,
                "longitude":gagBlueprint
            ]
           
            
        ]
        
        if let passwored = UserDefaults.standard.object(forKey: "password") {
            quirkQuark["xxd"] = passwored
        }
  
        DripDrollT.goofyGradient.sillySynapse( bamboozleBot, pranktopia: quirkQuark) { result in
           
            SwiftMessages.hide(animated: true)
            switch result{
            case .success(let shenaniganSchema):
               

                guard let prankster = shenaniganSchema,
                      let jesterLogic = prankster["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "openValue")  as? String
                else {
                    self.showingAlertingForSuccessfull(alsemessage: "data weak!")
                   
                    return
                }
                if let guffawGraph = prankster["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    
                    UserDefaults.standard.set(guffawGraph, forKey: "password")
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "absurdityEngine")
              let parama =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let nonsenseNode = DripDrollT.fooleryFramework(prankster: parama) else {
                    
                    return
                    
                }
                print(nonsenseNode)
                // 2. 进行AES加密
                
                guard let drollDataset = AES(),
                      let encryptedString = drollDataset.encrypt(string: nonsenseNode) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(encryptedString)
                
                
                let teaseTransformer = whopperWare  + "/?openParams=" + encryptedString + "&appId=\(DripDrollT.goofyGradient.illusionInterface)"
                print(teaseTransformer)
                let tickleApi = StormShenaniganController.init(riddleRanger: teaseTransformer, mischiefMeteorologist: true)
                MazeMusecontroller.whimsyWidget?.rootViewController = tickleApi
               
               
            case .failure(let error):
                self.showingAlertingForSuccessfull(alsemessage: error.localizedDescription)
               
            }
        }
        
       
        
    }

    
    private func wackyWaveform() {
        
        
        if prankEngine.authorizationStatus  ==  .authorizedWhenInUse || prankEngine.authorizationStatus  ==  .authorizedAlways{
            prankEngine.startUpdatingLocation()
          
       }else if prankEngine.authorizationStatus  ==  .denied{
           self.showingAlertingForSuccessfull(alsemessage: "it is recommended that you open it in settings location for better service")
           
       }else if prankEngine.authorizationStatus  ==  .notDetermined{
           prankEngine.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        laughterMetrics =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        gagBlueprint =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

       
        jokeAlgorithm.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let kookyKernel = plcaevfg?.first else { return }
            illusionCore = kookyKernel.subLocality  ?? ""
            hoaxSimulator = kookyKernel.administrativeArea  ?? ""

            trickDatabase = kookyKernel.country ?? ""
            riddleGenerator = kookyKernel.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        wackyWaveform()
        
    }
}
