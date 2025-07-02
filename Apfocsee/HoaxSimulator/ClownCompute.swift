//
//  ClownCompute.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//
import SnapKit
import UIKit
//发送消息
class ClownCompute: FooceeSenConrer, UITableViewDelegate,UITableViewDataSource {
    private var isJokeModeActive = UserDefaults.standard.bool(forKey: "isAprilFoolsMode")
    var meaasgeAllrecord:Array<String>?
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        LaughterView.reloadData()
    }
    deinit {
        for (ido,Ijush) in LMeasgelistBarliDxiu.mesakiuAll.enumerated(){
            if let measNew = meaasgeAllrecord, Ijush.usbder.blindbox_IOPD == self.userNoafl?.blindbox_IOPD {
                LMeasgelistBarliDxiu.mesakiuAll[ido].dilogmesage = measNew
            }
            
        }
    }
    private var explodingMessageTimer: Timer?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meaasgeAllrecord?.count ?? 0
    }
    private var ghostTypingIndicator: UILabel?
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foocee = tableView.dequeueReusableCell(withIdentifier: "APCATalkCell", for: indexPath) as! APCATalkCell
        foocee.conterinJLbl.text = meaasgeAllrecord?[indexPath.row]
        return foocee
        
    }
    private let messageBubbleColors: [UIColor] = [.systemPurple, .systemTeal, .systemPink]
    @IBOutlet weak var useNakerl: UILabel!//user name
    private let prankMessageTemplates = [
        "你收到一只隐形独角兽 🦄",
        "AI正在偷看这条消息... 👀",
        "该消息将在5秒后自毁 💣"
    ]
    @IBOutlet weak var LaughterView: UITableView!
    
    //say
    @IBOutlet weak var foooceINpuwter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useNakerl.text = self.userNoafl?.blindbox_name
        deploySneakyPrankBot()
        chaosCipherStream()
        syncRealTimePrankWave()
        LaughterView.dataSource = self
        LaughterView.register(APCATalkCell.self, forCellReuseIdentifier: "APCATalkCell")
    }
    
    func chaosCipherStream(){
        foooceINpuwter.placeholder = AppDelegate.processEducationalContent("Srasyz dsfobmdelttheienhge.d.w.w.")
    }
    
   
    private func syncRealTimePrankWave()  {
        LaughterView.showsVerticalScrollIndicator = false
        LaughterView.delegate = self
        LaughterView.separatorStyle = .none
        LaughterView.rowHeight = 105
    }
    
    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    
    
    
    @objc func backJokeDomino(ert:UIButton) {
        if ert ==  MatrixButon {
            self.navigationController?.popViewController(animated: true)
        }
        
        if ert ==  focceRepo {
            //举报
            self.reporitEchoBoost()
        }
    }
    
    @IBOutlet weak var focceRepo: UIButton!
    
  
    @IBOutlet weak var MatrixButon: UIButton!
    
    // 方法5: 消息抖动动画
        
    private func shakeReceivedMessage(_ cell: UITableViewCell) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.values = [0, 15, -15, 15, -5, 5, -5, 0 ]
        animation.duration = 0.6
        animation.isAdditive = true
        cell.layer.add(animation, forKey: "shake")
        
        UIView.animate(withDuration: 0.3) {
            cell.contentView.backgroundColor = .systemYellow.withAlphaComponent(0.3)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 0.5) {
                cell.contentView.backgroundColor = .clear
            }
        }
    }
    private func startGhostTyping() {
        ghostTypingIndicator = UILabel(frame: CGRect(x: 20, y: 0, width: view.frame.width-40, height: 30))
        ghostTypingIndicator?.textColor = .systemGray
        ghostTypingIndicator?.font = UIFont.italicSystemFont(ofSize: 14)
        
        
        let texts = ["Prankify AI正在输入...", "对方正在构思恶作剧...", "消息正在穿越时空..."]
        var counter = 0
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { [weak self] timer in
            self?.ghostTypingIndicator?.text = texts[counter % texts.count]
            counter += 1
            if counter > 6 { timer.invalidate() }
        }
        
    }
   //video call
    @IBAction func LaughterEchoBoost(_ sender: UIButton) {
        self.navigationController?.pushViewController(ShenaniganSphere.init(itMeCenter: false, userNoafl: userNoafl), animated: true)
    }
    
    //send message
    @IBAction func uioMeaasgesure(_ sender: UIButton) {
        
        
       
        
        if self.foooceINpuwter.text == nil || self.foooceINpuwter.text?.count ?? 0 < 1 {
            showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("Pqlceqaqsjek jegnltaefra rsxokmyeutghoisnbgr yfiibrnswtt!"))
            return
        }
        meaasgeAllrecord?.append(self.foooceINpuwter.text!)
        
        LaughterView.reloadData()
        
        foooceINpuwter.resignFirstResponder()
        foooceINpuwter.text = nil
       
    }
    
    // 方法4: 发送愚人节彩蛋消息
       private func sendPrankTemplateMessage() {
           guard let template = prankMessageTemplates.randomElement() else { return }
           
           let alert = UIAlertController(title: "发送彩蛋消息", message: template, preferredStyle: .actionSheet)
          
           alert.addAction(UIAlertAction(title: "取消", style: .cancel))
           present(alert, animated: true)
           
           UIImpactFeedbackGenerator(style: .medium).impactOccurred()
       }
}









class APCATalkCell: UITableViewCell {
    private let apca = UIImageView.init(image: PhantomPrankontroller.appChacheimg)
    let conterinJLbl = UILabel.init()
    

    private let singleijbiew = UIView.init()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        spreadVirtualTicklishVirus()
        apca.layer.cornerRadius = 18
       
        syncRealTimePrankWave()
        self.backgroundColor = .clear
        apca.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
    }
    
    private func spreadVirtualTicklishVirus(){
       contentView.addSubview(apca)
        contentView.addSubview(singleijbiew)
       contentView.addSubview(conterinJLbl)
        singleijbiew.backgroundColor = .white
        singleijbiew.layer.cornerRadius = 20
        singleijbiew.layer.masksToBounds = true
        
        conterinJLbl.textColor = .black
        conterinJLbl.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    }
    
    private func syncRealTimePrankWave()  {
        conterinJLbl.numberOfLines = 0

        
        apca.snp.makeConstraints { make in
            make.width.height.equalTo(36)
            make.trailing.equalToSuperview()
            make.top.equalToSuperview().offset(16)
        }
        
        conterinJLbl.snp.makeConstraints { make in
            make.trailing.equalTo(apca.snp.leading).offset(-24)
            make.width.greaterThanOrEqualTo(70)
            make.width.lessThanOrEqualTo(200)
            make.top.equalToSuperview().offset(11 + 16)
            make.bottom.equalToSuperview().offset(-11  - 16)
        }
        
        singleijbiew.snp.makeConstraints { make in
//            make.center.equalTo(conterinJLbl)
            make.leading.equalTo(conterinJLbl.snp.leading).offset(-12)
            make.trailing.equalTo(conterinJLbl.snp.trailing).offset(12)
            make.top.equalTo(conterinJLbl.snp.top).offset(-12)
            make.bottom.equalTo(conterinJLbl.snp.bottom).offset(12)
        }
    }
}
