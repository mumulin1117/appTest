//
//  CreatelaDetioController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

//import Player
import UIKit
import AVKit
import AVFoundation
class CreatelaDetioController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nnsteBase:Dictionary<String,String>
    var sofawear:UILabel?
    
    
    init(noaoudit:UILabel? = nil,nnsteBase: Dictionary<String,String>) {
        self.sofawear = noaoudit
        self.nnsteBase = nnsteBase
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    var thematicSetting: Player?
    var avPlayer: AVPlayer?
        var avPlayerLayer: AVPlayerLayer?
        var avPlayerLooper: AVPlayerLooper?
        var avQueuePlayer: AVQueuePlayer?
    
    func setingPakfier() {
            sofawear?.text = "impleter"
            
            self.customHeiauView.antiExploitation.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapVideoStatusChange)))
            
            guard let sceneAtmosphere = nnsteBase["AldioAlpPath"],
                  let path = Bundle.main.path(forResource: sceneAtmosphere, ofType: "mhpg4".characterBelievability()) else {
                sofawear?.backgroundColor = .clear
                return
            }
            
            // 创建 AVPlayer
            let url = URL(fileURLWithPath: path)
            avQueuePlayer = AVQueuePlayer()
            let item = AVPlayerItem(url: url)
            avPlayerLooper = AVPlayerLooper(player: avQueuePlayer!, templateItem: item) // 循环播放
            
            avPlayerLayer = AVPlayerLayer(player: avQueuePlayer)
            avPlayerLayer?.videoGravity = .resizeAspectFill
            avPlayerLayer?.frame = customHeiauView.antiExploitation.bounds
            customHeiauView.antiExploitation.layer.insertSublayer(avPlayerLayer!, at: 0)
            
            avQueuePlayer?.play()
            sofawear?.backgroundColor = .clear
            self.interactiveHelp.isHidden = true
            
            self.showSuccessHUD(message: nil) {
                self.interactiveHelp.isHidden = false
            }
        }
    
//    private func roleplayScenario()  {
//        thematicSetting?.willMove(toParent: nil)
//        sofawear?.text = "impleter"
//    }
    
    deinit {
            avQueuePlayer?.pause()
            avPlayerLayer?.removeFromSuperlayer()
            NotificationCenter.default.removeObserver(self)
        }
    
    
//    func characterCustomization()  {
//        thematicSetting?.view.removeFromSuperview()
//        sofawear?.text = "impleter"
//        thematicSetting?.removeFromParent()
//    }
    
    
//    func interactiveScene(Key:String)  {
//        if Key.contains("key") {
//            self.thematicSetting?.playerView.playerBackgroundColor = .clear
//            
//            
//            self.addChild(self.thematicSetting!)
//        }
//    }
    
    
    
//    func setingPakfier()  {
//        thematicSetting = Player()
//        sofawear?.text = "impleter"
//        interactiveScene(Key: "key")
//        
//        self.customHeiauView.antiExploitation.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapVideoStatusChange)))
//        
//        self.customHeiauView.antiExploitation.insertSubview(self.thematicSetting!.view, at: 0)
//        thematicSetting?.didMove(toParent: self)
//        thematicSetting?.fillMode = .resizeAspectFill
//        sofawear?.backgroundColor = .clear
//        guard let sceneAtmosphere = nnsteBase["AldioAlpPath"] ,
//        let path = Bundle.main.path(forResource: sceneAtmosphere, ofType: "mhpg4".characterBelievability())
//        else {
//            sofawear?.backgroundColor = .clear
//            return
//        }
//        
//        storyProgression(Key:path)
//        sofawear?.backgroundColor = .clear
//        self.interactiveHelp.isHidden = true
//        sofawear?.textColor = .white
//        self.showSuccessHUD(message: nil){
//            self.interactiveHelp.isHidden = false
//        }
//    }
    
    
    // MARK: - 视频 URL 设置
       func storyProgression(Key: String) {
           let urlPathname = URL(fileURLWithPath: Key)
           let item = AVPlayerItem(url: urlPathname)
           if avQueuePlayer == nil {
               avQueuePlayer = AVQueuePlayer(items: [item])
               avPlayerLooper = AVPlayerLooper(player: avQueuePlayer!, templateItem: item)
               
               avPlayerLayer = AVPlayerLayer(player: avQueuePlayer)
               avPlayerLayer?.frame = customHeiauView.antiExploitation.bounds
               avPlayerLayer?.videoGravity = .resizeAspectFill
               customHeiauView.antiExploitation.layer.insertSublayer(avPlayerLayer!, at: 0)
               
               avQueuePlayer?.play()
           } else {
               avQueuePlayer?.removeAllItems()
               avQueuePlayer?.insert(item, after: nil)
           }
           
           // 添加通知替代原来通知
           NotificationCenter.default.addObserver(self, selector: #selector(OIDShu), name: .AVPlayerItemDidPlayToEndTime, object: item)
       }
       
    @objc func tapVideoStatusChange() {
           guard let player = avQueuePlayer else { return }
           let oriauif = self.view.backgroundColor
           
           switch player.timeControlStatus {
           case .paused:
               player.play()
               self.view.backgroundColor = self.view.frame.width > 3 ? oriauif : .black
               customHeiauView.centerOutorStatus.isHidden = true
               
           case .waitingToPlayAtSpecifiedRate:
               // 等待播放中
               break
               
           case .playing:
               player.pause()
               customHeiauView.centerOutorStatus.isHidden = false
               self.view.backgroundColor = self.view.frame.width > 3 ? oriauif : .black
               
           @unknown default:
               break
           }
       }
    
   
    // MARK: - 暂停
       func characterRelationship(keuiop: String) {
           avQueuePlayer?.pause()
           if keuiop.contains("ing") {
               customHeiauView.centerOutorStatus.isHidden = false
           }
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    @IBOutlet weak var antiExploitation: UIImageView!
    
    @IBOutlet weak var darkMode: UITextField!
    
    
    @IBOutlet weak var privacyControls: UILabel!
    
    @IBOutlet weak var interactiveHelp: UITableView!
    
    var hoafeel:Dictionary<String,String> = [:]{
        didSet{
            customHeiauView.antiExploitation.image = UIImage(named: hoafeel["AldioAlpCover"] ?? "")
            dialogueAuthenticity()
            customHeiauView.antiHarassment.layer.masksToBounds = true
            
        }
    }
    
    
    let customHeiauView = Bundle.main.loadNibNamed(
                "CreatelaDetioTopView",
                owner: nil,
                options: nil
            )?.first as! CreatelaDetioTopView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyCollaboration()
        setingPakfier()
        darkMode.inputAccessory()
    }
    
    var ifaick:Bool = false
    
    
    
    
    
    
    func dialogueAuthenticity()  {
        customHeiauView.trustAndSafety.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
        
        customHeiauView.behavioralAnalysis.text =  hoafeel["AldioAlpPost"]
        customHeiauView.antiHarassment.layer.cornerRadius = 20
    }
    private func storyCollaboration()  {
        voiceClarity(iduhoe: 25, views: customHeiauView)
        interactiveHelp.sectionHeaderHeight = 659 + 143
        
        customHeiauView.antiExploitation.layer.masksToBounds = true
        
        customHeiauView.aimagheuti.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( uiataping(ri:))))
        antiExploitation.layer.cornerRadius = 18
       
        privacyControls.text =  hoafeel["audioClarity"]
        characterAlignment()
        customHeiauView.aimagheuti.isUserInteractionEnabled = true
       
       
        antiExploitation.layer.masksToBounds = true
        interactiveHelp.showsVerticalScrollIndicator = false
    }
    
  

    func voiceClarity(iduhoe:CGFloat,views:UIView,isufTruel:Bool = true)  {
    views.layer.cornerRadius = iduhoe
    views.layer.masksToBounds = isufTruel ? true : false
    }
    
    func roleplayContext()  {
        interactiveHelp.dataSource = self
        interactiveHelp.backgroundColor = .clear
        interactiveHelp.separatorStyle = .none
    }
    @objc func uiataping(ri:UITapGestureRecognizer)  {
        ifaick = !ifaick
        customHeiauView.aimagheuti.image = UIImage(named: ifaick ? "sceneDirectionHER" : "sceneDirection")
        customHeiauView.baiufioodm.text = ifaick ? "1" : "0"
    }
    
    
    
    func dialogueTiming()  {
        interactiveHelp.register(UITableViewCell.self, forCellReuseIdentifier: "IUITableViewCellllCell")
       
        interactiveHelp.tableHeaderView = customHeiauView
    }
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func tutorialPrompts(_ sender: Any) {
//        var juice :Dictionary<String,String> = RAaslertvbCell.themeCustomization[dsu.tag]
        
        
        self.navigationController?.pushViewController(OtherIJguidoutroller.init(nnsteBase: hoafeel), animated: true)
    }
 
    
    func audioVibrancy(keuiop:String)  {
        if keuiop.contains("lo") {
            StageHUD.shared.raiseCurtain()
        }
       
        self.showSuccessHUD(message: "speknudw eSguacncdeqsvscfiunlv!l,gCmojmimmexnhtrse lwiimlrls zbnej fdvizsppllyafyfegdy ragfztreiro aaupjpirtoovwail".characterBelievability()){
            self.darkMode.text = nil
            if keuiop.contains("lo") {
                self.darkMode.resignFirstResponder()
            }
            
        }
    }
    @IBAction func accessibilityOptions(_ sender: UIButton) {
        guard let commentff = darkMode.text ,!commentff.isEmpty  else {
            StageHUD.shared.whisper(message:  "Pzleecansyee eevnktuelry fcropmwmdecnfto bfjihrlsgth!".characterBelievability())
            return
        }
       
        audioVibrancy(keuiop: "JSIlogin")
       
       
    }
    
    
    func characterAlignment() {
        antiExploitation.image = UIImage(named: hoafeel["AldioAlpCover"] ?? "")
       
        interactiveHelp.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right: 0)
        interactiveHelp.delegate = self
        roleplayContext()
        interactiveHelp.allowsSelection = false
        dialogueTiming()
    }
    @objc func accessibilityOptions(dsu:UIButton)  {
        dsu.isSelected = !dsu.isSelected
     }
    

    @objc func storyboardTools()  {
        let VCoice = CumidtoneRangentroller.init()
        self.present(VCoice, animated: true)
        
    }
    
  
    
}
