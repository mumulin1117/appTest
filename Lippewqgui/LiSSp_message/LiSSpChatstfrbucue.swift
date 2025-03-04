//
//  LiSSpChatstfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpChatstfrbucue: LissipSecondFrbucue,UITableViewDelegate,UITableViewDataSource {
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        PChatUSerFwbnke.chatSSIPList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let asdSSIp = tableView.dequeueReusableCell(withIdentifier: "LiSSTagwCellID", for: indexPath) as! LiSSTagwCell
        asdSSIp.selectionStyle = .none
        
        asdSSIp.buberryoleSSIP.text = PChatUSerFwbnke.chatSSIPList[indexPath.row].1
        asdSSIp.okayIsMinwe = PChatUSerFwbnke.chatSSIPList[indexPath.row].0
        return asdSSIp
        
    }
    
    @IBOutlet weak var puitertView: UITextField!
    
    
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var nicmerSSIP: UILabel!
    
    @IBOutlet weak var babdaerView: UIImageView!
    
    @IBOutlet weak var appChatMeassgeSSIP: UITableView!
    
    var PChatUSerFwbnke:SSIPChatUSerFwbnke
    init(_PChatUSerFwbnke :SSIPChatUSerFwbnke) {
        self.PChatUSerFwbnke = _PChatUSerFwbnke
        super.init(nibName: nil, bundle: nil)
    }
    

     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        enImageSSIPOViol.isHidden = true
        for (id,itru) in LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.enumerated() {
            if itru.whoseSSIP["ssipAccID"] == PChatUSerFwbnke.whoseSSIP["ssipAccID"]{
                LiSSpMeaddgeBootomrbucue.cxhatArraySSIP[id] = PChatUSerFwbnke
            }
        }
        
        if LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.filter({ SSIPChatUSerFwbnked in
            return SSIPChatUSerFwbnked.whoseSSIP["ssipAccID"] == PChatUSerFwbnke.whoseSSIP["ssipAccID"]
        }).count == 0 {
            LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.append(PChatUSerFwbnke)
        }
    }
    
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        ssuitreatNet()
        appChatMeassgeSSIP.delegate = self
        appChatMeassgeSSIP.dataSource = self
        enImageSSIPOViol.isHidden = true
       
    }

    
    private func ssuitreatNet() {
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        nicmerSSIP.text = PChatUSerFwbnke.whoseSSIP["ssipNadme"] ?? ""
        babdaerView.image = UIImage(named: PChatUSerFwbnke.whoseSSIP["ssipPicdty"] ?? "")
        
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        NotificationCenter.default.addObserver(self, selector: #selector(ctterBsdNoingSSIP), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 18)

        appChatMeassgeSSIP.separatorStyle = .none
        appChatMeassgeSSIP.register(LiSSTagwCell.self, forCellReuseIdentifier: "LiSSTagwCellID")
    }
    
    
    @IBAction func chpickedCLIKSSip(_ sender: UIButton) {
        let onlyID = self.PChatUSerFwbnke.whoseSSIP["ssipAccID"] ?? ""
        
        showingBloakjPickVC(withBloackID: onlyID)
    }
    
    

    
    @IBAction func surepostingSSIp(_ sender: UIButton) {
      
        guard let puictertView = self.puitertView.text,puictertView.isEmpty == false else {
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: "Eenhtxehrf zwohqaktg vyyofus qwqaenttc atkok osbavyb xfaiorwsztr!".oranApolWothCharrterString(), loaingShowView: self.view)
            return  }
        
        let newmesag = (true,puictertView)
        
        PChatUSerFwbnke.chatSSIPList.append(newmesag)
        ssuipCreaNet()
        puitertView.text = nil
    }
    private func ssuipCreaNet() {
        appChatMeassgeSSIP.reloadData()
        puitertView.resignFirstResponder()
    }

}
