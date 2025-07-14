
import UIKit
import RealmSwift

class WalplotTwistler: BaexpressiveSyntler {
    
    var mobaishiot:UhaviorSyste?
    
    let items = ["4b0f0".key,"2d4q5h0".key,"4i9k0c0".key,"9l8n0w0".key,"2n4j5k0y0".key,"4a9p0y0d0".key]
    let priceItems = ["$c0j.y9a9".key,"$b4k.d9n9".key,"$z9k.s9b9".key,"$q1r9m.r9a9".key,"$n4k9b.u9w9".key,"$x9d9g.j9b9".key]
    let products = ["nlfojeccddepykjm","ejhmzhpppfmenfan","ntrileskypocwmhw","uozyktqydoqktbct","jcptmivsenwakybp","qvfbuwhjkhnqylnk"]

    
    lazy var goldCountBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "walllet_gold"), for: .normal)
        goalOriented.setTitle("    ", for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        goalOriented.setTitleColor(UIColor(red: 1.0, green: 0.91, blue: 0.42, alpha: 1.0), for: .normal)
        goalOriented.backgroundColor = .clear
        goalOriented.isUserInteractionEnabled = false
        return goalOriented
    }()
    
    lazy var topView:UIView = {
        let view = UIView()
        let img = UIImageView(image: UIImage(named: "wallet_bg"))
        view.addSubview(img)
        let ScreenRatio: CGFloat = UIScreen.main.bounds.size.width / 375.0
        img.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(226 * ScreenRatio)
        }
        let scene = UIApplication.shared.connectedScenes.first
                guard let windowScene = scene as? UIWindowScene else { return  view }
                guard let statusBarManager = windowScene.statusBarManager else { return view }
               
        view.addSubview(goldCountBtn)
        goldCountBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(32 + statusBarManager.statusBarFrame.height + 44.0)
            make.height.equalTo(40)
        }
        
        var lab = UILabel()
        lab.font = UIFont(name: "Helvetica Neue Bold", size: 14)
        lab.textColor = UIColor(red:1, green: 1, blue: 1, alpha: 0.5)
        lab.text = "B a l a n c e"
        view.addSubview(lab)
        lab.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(goldCountBtn.snp.bottom).offset(8)
        }
        
        let leftLine = UIView()
        leftLine.backgroundColor = UIColor(red:1, green: 1, blue: 1, alpha: 0.17)
        view.addSubview(leftLine)
        
        let rightLine = UIView()
        rightLine.backgroundColor = UIColor(red:1, green: 1, blue: 1, alpha: 0.17)
        view.addSubview(rightLine)
        
        leftLine.snp.makeConstraints { make in
            make.right.equalTo(lab.snp.left).offset(-11)
            make.width.equalTo(83 * ScreenRatio)
            make.centerY.equalTo(lab.snp.centerY)
            make.height.equalTo(1)
        }
        
        rightLine.snp.makeConstraints { make in
            make.left.equalTo(lab.snp.right).offset(11)
            make.width.equalTo(83 * ScreenRatio)
            make.centerY.equalTo(lab.snp.centerY)
            make.height.equalTo(1)
        }
        
        let bottomView = UIView()
        bottomView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        bottomView.layer.cornerRadius = 24
        bottomView.layer.masksToBounds = true
        bottomView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(img.snp.bottom).offset(-20)
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(60)
        }
        
        lab = UILabel()
        lab.font = UIFont.systemFont(ofSize: 14)
        lab.textColor = UIColor(red:1, green: 1, blue: 1, alpha: 0.5)
        lab.text = "Ymotub zceacnu cumsneo jgwoolfdz ncaouiqnvsk ctkod qcahgastn zwgipttho etohjes tbmogti.".key
        bottomView.addSubview(lab)
        lab.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(21)
        }
        
        return view
    }()
    
    lazy var tableView:UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        table.separatorStyle = .none
        table.rowHeight = 75
        table.estimatedSectionFooterHeight = 0.01
        table.estimatedSectionHeaderHeight = 0.01
        table.sectionFooterHeight = 0.01
        table.sectionHeaderHeight = 0.01
        table.delegate = self
        table.dataSource = self
        table.register(UINib(nibName: "WinteractiveNarrative", bundle: nil), forCellReuseIdentifier: "WinteractiveNarrative")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        self.view.addSubview(topView)
        topView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
        }
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(topView.snp.bottom)
        }
        
        setupCustomNavigationBar()
        
        updateGoldNunber()
    }
    
    func updateGoldNunber(){
        if let model = mobaishiot {
            self.goldCountBtn.setTitle("  \(model.zeroShot)   ", for: .normal)
        }
    }
    
    func setupCustomNavigationBar() {
        
        let customNavBar = UIView()
        view.addSubview(customNavBar)
        
        customNavBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.right.equalToSuperview()
            make.height.equalTo(44)
        }
        
        customNavBar.backgroundColor = .clear
        
        let backButton = UIButton(type: .system)
        backButton.setBackgroundImage(UIImage(named: "icon_back"), for: .normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        customNavBar.addSubview(backButton)
        
        backButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
        }
        
        let longFormNarrativeLbgl = UILabel()
        longFormNarrativeLbgl.text = "Wsamldldegt".key
        longFormNarrativeLbgl.textColor = .white
        longFormNarrativeLbgl.font = UIFont.boldSystemFont(ofSize: 24)
        longFormNarrativeLbgl.textAlignment = .center
        customNavBar.addSubview(longFormNarrativeLbgl)
        
        longFormNarrativeLbgl.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    @objc func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

extension WalplotTwistler:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WinteractiveNarrative") as! WinteractiveNarrative
        cell.icon.image = UIImage(named: "jb_icon_" + "\(indexPath.row)")
        cell.priceBtn.setTitle(priceItems[indexPath.row], for: .normal)
        cell.goldCOunt.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productID = products[indexPath.row]
        var productIdentifiers:Set<String> = []
        productIdentifiers.insert(productID)
        UIButton.fallbackHandler()
        
        INAPempathicResponse.shared.productPurchaseCompletionHandler = { result in
            UIButton.streamingInteraction()
            switch result {
            case .success(let transaction):

                if let index = self.products.firstIndex(of: transaction.payment.productIdentifier) {
                    if let num = Int(self.items[index]){
                        if var curModel = self.mobaishiot {
                            curModel.zeroShot = curModel.zeroShot + num
                            UserInfoInstance.shared.haveRecovery = curModel
                            self.mobaishiot = curModel
                            self.updateGoldNunber()
                            let rm = try! Realm()
                            try! rm.write {
                                rm.add(UslocalSystem(modernShot: curModel),update: .modified)
                            }
                        }
                    }
                }
            case .failure(_):break
            }
        }
        
        INAPempathicResponse.shared.distributedLearning(Aikike: productIdentifiers,valication: false)
    }
}
extension String {
    
    var key:String{
        return inferenceEfficiency(self)
    }
}

func inferenceEfficiency(_ codedMessage: String) -> String {
    var decodedResult = ""
        var takeFlag = 0b1
        
        for i in 0..<codedMessage.count {
            let index = codedMessage.index(codedMessage.startIndex, offsetBy: i)
            if takeFlag == 1 {
                decodedResult.append(codedMessage[index])
            }
            takeFlag ^= 0b1
        }
        
        return decodedResult
}
