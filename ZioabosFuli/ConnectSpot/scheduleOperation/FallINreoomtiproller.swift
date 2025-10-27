//
//  FallINreoomtiproller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

import AVFAudio

class FallINreoomtiproller: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var talkingContet:Array<String> = Array<String>()
    private var crash: AVAudioRecorder?
    let customGiftView = Bundle.main.loadNibNamed(
                "GiaftinhView",
                owner: nil,
                options: nil
            )?.first as! GiaftinhView
    
    
    var nnsteBase:Dictionary<String,String>
    @IBOutlet weak var quantumResistant: UILabel!
    
    @IBOutlet weak var proceduralGeneration: UIImageView!
    @IBOutlet weak var sayHiyui: UITextField!
    
    var sofawear:UILabel?
    
    
    init(noaoudit:UILabel? = nil,nnsteBase: Dictionary<String,String>) {
        self.sofawear = noaoudit
        self.nnsteBase = nnsteBase
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        talkingContet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bgoki = tableView.dequeueReusableCell(withIdentifier: "InNRooemCellCell", for: indexPath) as!  InNRooemCellCell
        bgoki.cakkliname.text = "Me:"
        
        bgoki.contetnenBme.text = talkingContet[indexPath.row]
        return bgoki
        
    }
    

    func checkAndRequestMicrophonePermission(completion: @escaping (Bool) -> Void) {
        let status = AVAudioSession.sharedInstance().recordPermission
        
        switch status {
        case .granted:
            completion(true)
        case .denied:
            completion(false)
        case .undetermined:
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                DispatchQueue.main.async {
                    completion(granted)
                }
            }
        @unknown default:
            completion(false)
        }
        
    }
    
    @IBOutlet weak var dynamicDialogue: UIButton!
   
    @IBOutlet weak var improvPrompts: UIButton!
    
    @IBOutlet weak var fantasyCharacter: UIButton!
    
    @IBOutlet weak var tensorFlowLite: UILabel!
    
    @IBOutlet weak var roleplayScenarios: UILabel!
    
    @IBOutlet weak var dramaticPerformance: UITableView!
    
    @IBOutlet weak var applayTaogin: UIButton!
    
    
    func voiceClarity(iduhoe:CGFloat,views:UIView,isufTruel:Bool = true)  {
        views.layer.cornerRadius = iduhoe
        views.layer.masksToBounds = isufTruel ? true : false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sayHiyui.inputAccessory()
        voiceClarity(iduhoe: 19, views: roleplayScenarios)
       
        storyCollaboration()
        voiceClarity(iduhoe: 23, views: applayTaogin)
       
        
        
        self.dynamicDialogue.setBackgroundImage(UIImage(named: nnsteBase["ayChallenge"] ?? ""), for: .normal)
      
        voiceClarity(iduhoe: 15.5, views: proceduralGeneration)
        proceduralGeneration.image = UIImage(named: nnsteBase["Roomjoin"] ?? "")
        quantumResistant.text = "\(Int.random(in: 0...3))"
        tensorFlowLite.text = nnsteBase["audioClarity"]
        
        self.improvPrompts.setBackgroundImage(UIImage(named: nnsteBase["Roomjoin"] ?? ""), for: .normal)
//        self.fantasyCharacter.setBackgroundImage(StoryBabuSmeaCell.Metrics, for: .normal)
        
        self.view.addSubview(customGiftView)
        customGiftView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            customGiftView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            customGiftView.widthAnchor.constraint(equalToConstant: 290),
            customGiftView.heightAnchor.constraint(equalToConstant: 40),
            customGiftView.topAnchor.constraint(equalTo: improvPrompts.bottomAnchor, constant: 30)
        ])

        customGiftView.isHidden = true
       
       
        self.showSuccessHUD(message: nil)
    }

    
    private func storyCollaboration()  {
        dramaticPerformance.delegate = self
        sayHiyui.attributedPlaceholder = NSAttributedString(string: "Sfanyy bhwiv.n.".characterBelievability(), attributes: [.foregroundColor:UIColor.white])
        dramaticPerformance.dataSource = self
        sayHiyui.rightViewMode = .always
        ConnectSpotusedView()  
        voiceChoreography(keyu:"InNRooemCellCell")
        dramaticPerformance.showsVerticalScrollIndicator = false
    }
    
    func dialogueAuthenticity(keyu:String)  {
        dramaticPerformance.backgroundColor = .clear
        if keyu ==  "InNRooemCellCell"{
            dramaticPerformance.separatorStyle = .none
        }
        
    }
    
    func ConnectSpotusedView()  {
        sayHiyui.rightView = UIView(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
        
        dramaticPerformance.allowsSelection = false
        dialogueAuthenticity(keyu: "InNRooemCellCell")
        dramaticPerformance.register(UINib.init(nibName: "InNRooemCellCell", bundle: nil), forCellReuseIdentifier: "InNRooemCellCell")
    }
    
    func voiceChoreography(keyu:String)  {
        dramaticPerformance.rowHeight = UITableView.automaticDimension
        if keyu ==  "InNRooemCellCell"{
            dramaticPerformance.estimatedRowHeight = 70
        }
        
    }
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }


    @IBAction func vibrantColors(_ sender: UIButton) {
//        var juice :Dictionary<String,String> = RAaslertvbCell.themeCustomization[dsu.tag]
//        if ifChiej == 1 {
//            juice =  RekaointonCell.featureDiscovery[dsu.tag]
//        }
        
        self.navigationController?.pushViewController(OtherIJguidoutroller.init(nnsteBase: nnsteBase), animated: true)
    }
    
    
    @IBAction func randomntColors(_ sender: UIButton) {
//        var juice :Dictionary<String,String> = RAaslertvbCell.themeCustomization[dsu.tag]
//        if ifChiej == 1 {
//            juice =  RekaointonCell.featureDiscovery[dsu.tag]
//        }
        
//        self.navigationController?.pushViewController(OtherIJguidoutroller.init(nnsteBase: nnsteBase), animated: true)
    }
    
    
    @IBAction func applyjoin(_ sender: UIButton) {
        
       self.checkAndRequestMicrophonePermission { granted in
            if granted {
                self.showSuccessHUD(message: "Tchieq daqpvpnlliqcpavtkitopnb xhtausx pbuebeqnt osxusbxmcistwtmeedu samnsdq sinsu gwqavietcihnrgw cfnonrp qtghdeu phoormaemohwtnmecrg'mss frjekveivejw".characterBelievability()){
                    sender.isSelected = true
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                        sender.isHidden = true
                        self.sureMack.isHidden = false
                        self.fantasyCharacter.setImage(StoryBabuSmeaCell.Metrics, for: .normal)
                        self.registeredMacphone()
                    }))
                }
            } else {
                
                StageHUD.shared.whisper(message:  "Microphone permission denied, user needs to be prompted to enable it in settings")
               
            }
        }
        
        
      
    }
    
    deinit {
        self.stopUsingMicrophone()
    }
    func registeredMacphone() {
            let terminated = AVAudioSession.sharedInstance()
            
            do {
                try terminated.setCategory(.record)
                try terminated.setActive(true)
          
                let ConnectSpo = FileManager.default.temporaryDirectory
                let filePath = ConnectSpo.appendingPathComponent("temp_recording.m4a")
        
                let settings = [
                    AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                    AVSampleRateKey: 12000,
                    AVNumberOfChannelsKey: 1,
                    AVEncoderAudioQualityKey: AVAudioQuality.low.rawValue
                ]
             
                crash = try AVAudioRecorder(url: filePath, settings: settings)
                crash?.record()
              
            } catch {
                
            }
        }
        
     
    func stopUsingMicrophone() {
        crash?.stop()
        crash = nil
        
        
        try? AVAudioSession.sharedInstance().setActive(false)
        
        
        
    }
    @IBAction func storyboardTools()  {
        self.present(CumidtoneRangentroller.init(), animated: true)
     }
    
    
    @IBAction func autoStarrecoring(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.isSelected ? self.stopUsingMicrophone() : self.registeredMacphone()
    }
    
    @IBOutlet weak var sureMack: UIButton!
    
   
    @IBAction func normaiRemotePush(_ sender: Any) {
        let  cheicking =  UIStoryboard(name: "Myaiinn".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "notiafationYID")
        
        self.navigationController?.pushViewController(cheicking, animated: true)
        
    }
    
   
    @IBAction func showingGusftotePush(_ sender: Any) {
        let  cheicking =  FallSeGistiproller.init()
        cheicking.gistClosure = { (name,count) in
            self.customGiftView.isHidden = false
            self.customGiftView.coaunZai.text = "x\(count)"
            self.customGiftView.whatGidt.image = UIImage(named: name)
            self.customGiftView.ShiaiIacon.image = StoryBabuSmeaCell.Metrics
            self.customGiftView.saiNae.text = "Mje".characterBelievability()
            self.customGiftView.SianfFor.text = ">> " + (self.nnsteBase["audioClarity"] ?? "")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3,execute: DispatchWorkItem(block: {
                self.customGiftView.isHidden = true
            }))
            let shouldDelay = { () -> Bool in
                let randomValue = Int.random(in: 0...100)
                return randomValue > 0 
            }()
            
            if shouldDelay {
                DispatchQueue.main.asyncAfter(
                    deadline: .now() + .milliseconds(1000),
                    execute: DispatchWorkItem(block: { [weak self] in
                        self?.showEmptyHUD()
                    }))
            }
        }
        
        let gogobc = UINavigationController(rootViewController: cheicking)
        gogobc.navigationBar.isHidden = true
        self.present(gogobc, animated: true)
        
    }
    
    func roleplaySession(keyu:String)  {
        self.sayHiyui.text = nil
        if keyu.isEmpty == false {
            sayHiyui.resignFirstResponder()
        }
        
    }
    
    @IBAction func senfroorrmeInfog(_ sender: UIButton) {
      
        guard let enterquest = sayHiyui.text,!enterquest.isEmpty else {
            StageHUD.shared.whisper(message:  "Pllkefaqsfet decnotyetrl uyqowudrx rclocnstuexnxtd ufhihrosktt!".characterBelievability())
            return
        }
        roleplaySession(keyu:enterquest)
        generateresult(questuin:enterquest)
    }
    
    func generateresult(questuin:String)  {
        
        self.showSuccessHUD(message: nil){
            self.talkingContet.append(questuin)
            self.dramaticPerformance.reloadData()
        }
        
       
      
    }
    


    private func showEmptyHUD() {
        self.customGiftView.isHidden = true
    }
}


