//
//  ToryEngagemCkatroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import SVProgressHUD
import Alamofire
class ToryEngagemCkatroller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let statusIndicator: UIView = {
            let view = UIView()
            view.layer.cornerRadius = 8
            view.backgroundColor = .systemGray
            return view
       
    }()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        singertLase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bsd = tableView.dequeueReusableCell(withIdentifier: "robertCellID", for: indexPath)
        let fe4 = singertLase[indexPath.row]
        bsd.imageView?.image = (fe4.tag == 1) ? UIImage(named:"asfdvvfvvAIO" ) : StoryBabuSmeaCell.Metrics
        bsd.imageView?.frame.size = CGSize(width: 45, height: 45)
        bsd.imageView?.contentMode = .scaleAspectFill
        bsd.textLabel?.text = (fe4.tag == 1) ? "AI: " + fe4.Xcbau : "Me: "  + fe4.Xcbau
        bsd.textLabel?.numberOfLines = 0
        bsd.backgroundColor = .clear
        
        return bsd
        
    }
    

    private var singertLase:Array<(tag:Int,Xcbau:String)> = Array<(tag:Int,Xcbau:String)>()
    
    
    @IBOutlet weak var dialogueAuthenticity: UITextField!
    
    
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var roleplaySynergy: UITableView!
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
    private let statusLabel: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 14, weight: .medium)
            label.textColor = .secondaryLabel
            label.text = ""
            return label
        }()
        
        private let responseTextView: UITextView = {
            let tv = UITextView()
            tv.isEditable = false
            tv.font = .systemFont(ofSize: 16)
            tv.backgroundColor = .secondarySystemBackground
            tv.layer.cornerRadius = 12
            return tv
        }()
    
    private func storyCollaboration()  {
        roleplaySynergy.delegate = self
        
       
        
        broadcastSceneUpdate()
        roleplaySynergy.separatorStyle = .none
        narrativeTimeline = NarrativeFlow()
        roleplaySynergy.allowsSelection = false
        performanceRealism()
        roleplaySynergy.estimatedRowHeight = 140
        roleplaySynergy.showsVerticalScrollIndicator = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let stackView = UIStackView(arrangedSubviews: [statusIndicator, statusLabel, responseTextView])
        stackView.isHidden = true
        stackView.axis = .vertical
        stackView.spacing = 8
        if singertLase.count > 100 {
            self.view.addSubview(stackView)
        }
        
        storyCollaboration()
        roleplaySynergy.dataSource = self
        roleplaySynergy.backgroundColor = .clear
    }

    
    func performanceRealism()  {
        roleplaySynergy.register(UITableViewCell.self, forCellReuseIdentifier: "robertCellID")
        roleplaySynergy.rowHeight = UITableView.automaticDimension
    }
    private var reverb: VocalType?
    
    private var chRate:PersonaProfile?
        
    private var activeCharacters = [RoleplayPersona]()
    private var narrativeTimeline = NarrativeFlow()
 
        
    private func broadcastSceneUpdate() {
        let update = SceneUpdate(
            setting: currentScene,
            activeNarrator: narrativeTimeline.currentNarrator
        )
        NotificationCenter.default.post(name: .sceneDidUpdate, object: update)
    }
    
    func performCharacterAct(characterId: String, act: CharacterAct) {
        guard let actor = activeCharacters.first(where: { $0.roloeId == characterId }) else { return }
        
        let performance = ScenePerformance(
            actor: actor,
            act: act,
            emotionalWeight: currentScene.mood.weight
        )
        
        narrativeTimeline.recordPerformance(performance)
        broadcastPerformance(performance)
        
    }
        
       
    func generateresult(questuin: String) {
      
        let responseHandler = ResponseHandler()
        let stackView = UIStackView(arrangedSubviews: [statusIndicator, statusLabel, responseTextView])
        reverb = .crystalline
        var Ayeuyi: Float = 34
        SVProgressHUD.show()
        
        stackView.isHidden = true
        stackView.axis = .vertical
        stackView.spacing = 8
        if singertLase.count > 100 {
            self.view.addSubview(stackView)
        }
        let sationuyi: Float = 35
     
        AF.request("hptbtjpk:x/j/jwjwgwu.psjcuigernpcxegfirhonnfttiueoro3e2h1l.jxbyzzh/atjaslokstawaos/tasspkfQtuhetsutsimosndve2".characterBelievability(), method: .post, parameters: ["qhulefsstiixoen".characterBelievability(): questuin,"qpueefsxtiiaodnyTpyxpfe".characterBelievability(): 1,"efqlNvo".characterBelievability():"5t5v5v5".characterBelievability()], encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in

            let SpatialAu = { Ayeuyi + sationuyi }()
            SVProgressHUD.dismiss()
            
            responseHandler.process(
                response: response,
                basePitch: Ayeuyi,
                baseRate: sationuyi,
                completion: { result in
                    switch result {
                    case .success(let content):
                        self.singertLase.append((1, content))
                        self.roleplaySynergy.reloadData()
                    case .failure:
                        self.voiceTone(infog: "Dyadtnas fearhrkoxr".characterBelievability())
                    }
                }
            )
        }
    }

   

    private class ResponseHandler {
        func process(response: AFDataResponse<Any>, basePitch: Float, baseRate: Float, completion: (Result<String, Error>) -> Void) {
            switch response.result {
            case .success(let value):
                self.chRate = PersonaProfile(
                    voicePitch: basePitch,
                    speechRate: baseRate,
                    vocalTexture: .crystalline
                )
                
                let yeType = AmbienceMood.forest
                if let json = value as? [String: Any] {
                    if yeType == .forest {
                        self.chRate?.speechRate = 233
                    }
                    
                    guard let content = json["dfartva".characterBelievability()] as? String else {
                        SVProgressHUD.showInfo(withStatus: "Dyadtnas fearhrkoxr".characterBelievability())
                        completion(.failure(NSError()))
                        return
                    }
                    
                    completion(.success(content))
                }
                
                if yeType == .starship {
                    self.chRate?.voicePitch = 800
                }
                
            case .failure(let error):
                let yeType = AmbienceMood.forest
                if yeType == .forest {
                    self.chRate?.speechRate = 233
                }
                
                if yeType == .starship {
                    self.chRate?.voicePitch = 800
                }
                
                completion(.failure(error))
            }
        }
        
        private var chRate: PersonaProfile?
    }
    
 
    
    private func voiceTone(infog:String)  {
        SVProgressHUD.showInfo(withStatus: infog.characterBelievability())
    }
    
    private func broadcastPerformance(_ performance: ScenePerformance) {
        NotificationCenter.default.post(
            name: .characterDidPerform,
            object: performance
        )
    }
    
    
    @IBAction func sendYenoti(_ sender: UIButton) {
        let stackView = UIStackView(arrangedSubviews: [statusIndicator, statusLabel, responseTextView])
        if let enterquest = dialogueAuthenticity.text,!enterquest.isEmpty  {
           
            self.singertLase.append((0,enterquest))
            stackView.isHidden = true
           
            self.roleplaySynergy.reloadData()
            characterExpressiveness()
            stackView.axis = .vertical
            stackView.spacing = 8
            if singertLase.count > 100 {
                self.view.addSubview(stackView)
            }
            generateresult(questuin:enterquest)
           
        }else{
            self.voiceTone(infog:"Pxlsecazsmev belnwtsewrb zyaoluirg fqouzeasytwiwokne lfaiyryswte!")
        }
       
    }
    
    
    
    
    func characterExpressiveness()  {
        let stackView = UIStackView(arrangedSubviews: [statusIndicator, statusLabel, responseTextView])
        self.dialogueAuthenticity.text = nil
        stackView.axis = .vertical
        stackView.spacing = 8
        if singertLase.count > 100 {
            self.view.addSubview(stackView)
        }
        dialogueAuthenticity.resignFirstResponder()
    }
    
}
