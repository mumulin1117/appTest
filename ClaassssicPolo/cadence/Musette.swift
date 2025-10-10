//
//  Musette.swift
//  ClaassssicPolo
//
//  Created by ClaassssicPolo on 2025/9/8.
//

import UIKit
import CoreLocation


class Musette: UIViewController ,CLLocationManagerDelegate {
    private let  theorychat = UIActivityIndicatorView.init(style: .large)
    let  tailored: UILabel = UILabel.init()
    
    private let theoryworkshop = CLLocationManager()
    private let concept = CLGeocoder()

    private var submit:String = ""
    private lazy var runfhui: UIImageView = {
        let musicguide = UIImageView(image:UIImage(named: "sdmbolzixlianwed") )
        musicguide.translatesAutoresizingMaskIntoConstraints = false
        musicguide.contentMode = .scaleAspectFit
        return musicguide
    }()
    private  var educators:NSNumber = 0.0
    private  var bowing:NSNumber = 0.0
    private func edagogical()  {
        let annotation = UIImage(named: "sdmbolzixlian")
        
        let stylistic = UIImageView(image:annotation )
        stylistic.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(stylistic)
        
        view.addSubview(runfhui)
        NSLayoutConstraint.activate([
           
            runfhui.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            runfhui.heightAnchor.constraint(equalToConstant: 116),
            
            runfhui.widthAnchor.constraint(equalToConstant: 213),
        
            runfhui.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 65 - 52 - 37)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        edagogical()
        
        
        let  campaigns = UIButton.init()
        campaigns.setBackgroundImage(UIImage(named: "etchIuo"), for: .normal)
        campaigns.setTitleColor(.white, for: .normal)
        campaigns.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        campaigns.setTitle(PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Qjufiacckllyyh jLaocg"), for: .normal)
        
        view.addSubview(campaigns)
        campaigns.addTarget(self, action: #selector(digitalPainting), for: .touchUpInside)
      
        
        campaigns.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            campaigns.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            campaigns.heightAnchor.constraint(equalToConstant: 54),
            campaigns.widthAnchor.constraint(equalToConstant: 335),
            campaigns.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        commercial()
        
        theoryworkshop.delegate = self
        theorychat.hidesWhenStopped = true
        theorychat.color = .black
        theorychat.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        theorychat.center = self.view.center
        
        self.view.addSubview(theorychat)
        tailored.numberOfLines = 0
        tailored.isHidden = true
        tailored.textAlignment = .center
        tailored.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        tailored.center = self.view.center
        tailored.frame.origin.y = self.theorychat.frame.maxY + 30
        self.view.addSubview(tailored)
    }
    
    
    func brigading(dinate: String,doxx:Bool = false) {
        tailored.isHidden = false
        tailored.text = dinate
        tailored.textColor = doxx ? UIColor.green : UIColor.systemYellow
        tailored.backgroundColor = UIColor.white
        tailored.layer.cornerRadius = 10
        tailored.numberOfLines = 0
        tailored.frame.size = CGSize(width: 300, height: 120)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            self.tailored.isHidden = true
        }))
    }
   
    
    @objc func digitalPainting() {
                
        commercial()
        
        theorychat.startAnimating()
        

        let primitive = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"/sotpris/mve1y/zfbiencgsevrxiwnqgil")
        
        var jazz: [String: Any] = [
           
            "fingeringn":Nocturne.performanceart(),
            "fingeringv":[
               
                PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"cuonuanntdruyjCvojdoe"):submit,
                PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"leantyiutnufdue"):educators,
                PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"lsoznwgkigtdusdye"):bowing
            ]
           
            
        ]
        
        if let lessons = Nocturne.musicknowledge() {
            jazz["fingeringd"] = lessons
        }
  
        Serenade.artisticArtisan.classicalmusicresearch( primitive, eanalysis: jazz) { result in
            self.theorychat.stopAnimating()
            
            switch result{
            case .success(let verification):
               

                guard let Attempt = verification,
                      let lessons = Attempt[PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"tmoskqefn")] as? String,
                      let artificially = UserDefaults.standard.object(forKey: "oratorio")  as? String
                else {
                    self.brigading(dinate: PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Dzavtyaa iwfexaokw!"), doxx: false)
                  
                    return
                }
                if let against = Attempt[PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"pfaesnsmwyoervd")] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    Nocturne.musictheory(against)
                    
                }
                
                UserDefaults.standard.set(lessons, forKey: "ornamentation")
              let Identity =  [
                PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"tsovkyesn"):lessons,PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"tkilmkevsetwagmbp"):"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let bots = Serenade.classicalpiano(lipsharing: Identity) else {
                    
                    return
                    
                }
                print(bots)
                // 2. 进行AES加密
                
                guard let Claim = ZerfectPitch(),
                      let degrees = Claim.composerdiscussions(siccreators: bots) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(degrees)
                
                
                let influence = artificially  + PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"/b?gozpdeonpPtawrxaxmhsw=") + degrees + PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"&xaipmpiIida=") + "\(Serenade.artisticArtisan.theoryworkshop)"
                print(influence)
                let credentialsf = NaturalHarmonic.init(musicloverscircle: influence, classicaljourneyd: true)
                Mandolin.crescendo?.rootViewController = credentialsf
               
               
            case .failure(let error):
                
                self.brigading(dinate: error.localizedDescription, doxx: false)
            }
        }
        
       
        
    }
   
    
    private func commercial() {
        
        
        if theoryworkshop.authorizationStatus  ==  .authorizedWhenInUse || theoryworkshop.authorizationStatus  ==  .authorizedAlways{
            theoryworkshop.startUpdatingLocation()
          
       }else if theoryworkshop.authorizationStatus  ==  .denied{
           
           self.brigading(dinate:PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Wmet xrsesqauqefsmtt panczcveaspsa utaoj mydoauerm wlaovcyattjifopnv ktrog cewnxhnagnbcqep vymowugrl ielxkpeecrriaeknvcgeh jbrye cpdeqrlsioknoaslyizzzirnngb ishomufnydm qabnwdy hchognotnefnstg fbragszedds ooznn oytohucrp jsyuarvrhoquonxdjiynogcsl.a uTrheiasx taolslhoqwpst zuhsk ptsoo ktpauiuloowrj otthier leinivribrioynemlefnsth wannfdb pprraoavdibdreu fmbotrker xrtezlreqvzaangtk vssoxunnbdi netxypreurximeqnycjexsa utvhxaitd nmhaltxcghr uytoouurf xcpuerjrieknmto dlwoucdarttitodno.") , doxx: false)
         
       }else if theoryworkshop.authorizationStatus  ==  .notDetermined{
           theoryworkshop.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let participating = locations.last else {
            return
        }
        
       
        educators =   NSNumber(value: participating.coordinate.latitude)
        bowing =   NSNumber(value: participating.coordinate.longitude)
       
  

       
        concept.reverseGeocodeLocation(participating) { [self] (sharing, error) in
            if error != nil {
                
                return
            }
           
            guard let limited = sharing?.first else { return }
          
            submit = limited.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                commercial()
        
    }
}
