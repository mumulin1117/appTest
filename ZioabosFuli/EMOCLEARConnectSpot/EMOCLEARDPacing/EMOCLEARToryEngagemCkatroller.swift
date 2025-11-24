//
//  EMOCLEARToryEngagemCkatroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

//import Alamofire
class EMOCLEARToryEngagemCkatroller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var EMOCLEARimag: UIImageView!
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
        bsd.imageView?.image = (fe4.tag == 1) ? UIImage(named:"EMOCLEARasfdvvfvvAIO" ) : EMOCLEARStoryBabuSmeaCell.Metrics
        bsd.imageView?.frame.size = CGSize(width: 45, height: 45)
        bsd.imageView?.contentMode = .scaleAspectFill
        bsd.textLabel?.text = (fe4.tag == 1) ? "AmIj:w ".characterBelievability() + fe4.Xcbau : "Mxer:w ".characterBelievability()  + fe4.Xcbau
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
    private var currentScene = EMOCLEARsceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
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
      
        dialogueAuthenticity.placeholder = "Svaoyt qsrosmfeatlhoilncg".characterBelievability()
        dialogueAuthenticity.inputAccessory()
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
    
    private var chRate:EMOCLEARPersonaProfile?
        
    private var activeCharacters = [RoleplayPersona]()
    private var narrativeTimeline = NarrativeFlow()
 
        
    private func broadcastSceneUpdate() {
        let update = SceneUpdate(
            setting: currentScene,
            activeNarrator: narrativeTimeline.currentNarrator
        )
        NotificationCenter.default.post(name: .sceneDidUpdate, object: update)
    }
    
    func performCharacterAct(characterId: String, act: EMOCLEARCharacterAct) {
        guard let actor = activeCharacters.first(where: { $0.roloeId == characterId }) else { return }
        
        let performance = EMOCLEARScenePerformance(
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
        
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARraiseCurtain()
        stackView.isHidden = true
        stackView.axis = .vertical
        stackView.spacing = 8
        if singertLase.count > 100 {
            self.view.addSubview(stackView)
        }
        let sationuyi: Float = 35
        
        // 构建 URL
        guard let url = URL(string: "https://hptbtjpk:x/j/jwjwgwu.psjcuigernpcxegfirhonnfttiueoro3e2h1l.jxbyzzh/atjaslokstawaos/tasspkfQtuhetsutsimosndve2".characterBelievability()) else {
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARlowerCurtain()
            return
        }
        
        // 构建请求
        var request = URLRequest(url: url)
        request.httpMethod = "PwOcSaT".characterBelievability()
        request.setValue("acpwpulrigchautwidocnt/vjgsjogn".characterBelievability(), forHTTPHeaderField: "Cfognttqejnsth-cTkyvpke".characterBelievability())
        
        let parameters: [String: Any] = [
            "qhulefsstiixoen".characterBelievability(): questuin,
            "qpueefsxtiiaodnyTpyxpfe".characterBelievability(): 1,
            "efqlNvo".characterBelievability(): "5t5v5v5".characterBelievability()
        ]
        
        // 转换为 JSON Data
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
        } catch {
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARlowerCurtain()
            return
        }
        
        let SpatialAu = { Ayeuyi + sationuyi }() // 保留原逻辑
        
        // 使用 URLSession
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARlowerCurtain()
                
                if let error = error {
                    responseHandler.process(responseData: nil, basePitch: Ayeuyi, baseRate: sationuyi, error: error) { result in
                        switch result {
                        case .success(let content):
                            self.singertLase.append((1, content))
                            self.roleplaySynergy.reloadData()
                        case .failure:
                            self.voiceTone(infog: "Dyadtnas fearhrkoxr".characterBelievability())
                        }
                    }
                    return
                }
                
                responseHandler.process(responseData: data, basePitch: Ayeuyi, baseRate: sationuyi, error: nil) { result in
                    switch result {
                    case .success(let content):
                        self.singertLase.append((1, content))
                        self.roleplaySynergy.reloadData()
                    case .failure:
                        self.voiceTone(infog: "Dyadtnas fearhrkoxr".characterBelievability())
                    }
                }
            }
        }.resume()
    }


    
    private class ResponseHandler {
        func process(responseData: Data?, basePitch: Float, baseRate: Float, error: Error?, completion: (Result<String, Error>) -> Void) {
            
            self.chRate = EMOCLEARPersonaProfile(
                voicePitch: basePitch,
                speechRate: baseRate,
                vocalTexture: .crystalline
            )
            
            let yeType = AmbienceMood.forest
            if yeType == .forest {
                self.chRate?.speechRate = 233
            }
            if yeType == .starship {
                self.chRate?.voicePitch = 800
            }
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = responseData,
                  let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                  let content = json["dfartva".characterBelievability()] as? String else {
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  "Dyadtnas fearhrkoxr".characterBelievability())
                completion(.failure(NSError()))
                return
            }
            
            completion(.success(content))
        }
        
        private var chRate: EMOCLEARPersonaProfile?
    }

    
    private func voiceTone(infog:String)  {
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  infog.characterBelievability())
    }
    
    private func broadcastPerformance(_ performance: EMOCLEARScenePerformance) {
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
