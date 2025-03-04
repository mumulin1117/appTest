//
//  LiSSpMeaddgeBootomrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/10.
//

import UIKit
struct SSIPChatUSerFwbnke {
    var whoseSSIP:[String: String]
    var framREct:CGRect?
    
    var chatSSIPList:Array<(Bool,String)>
    var loagegt:String?
    
}

class LiSSpMeaddgeBootomrbucue: LiSSpNOrmalSnmingertips,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate {
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    
    @IBOutlet weak var nomesagtipSSIP: UILabel!
    
    
    static var cxhatArraySSIP = [SSIPChatUSerFwbnke].init()//聊天列表
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.activVieSSIP {
            return CGSize.init(width: 65, height: 65)
        }else{
            return CGSize.init(width: UIScreen.main.bounds.size.width - 24, height: 88)
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.activVieSSIP {
            
            if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
                return appledeelgate.totalvrdataSSIP.count
            }else{
                return 0
            }
            
        }else{
            return LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.count
        }
    }
    
    
    private func ssuipCreaNet() {
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        notifationViewSSIP.register(LiSSpmeassgrLifarCell.self, forCellWithReuseIdentifier: "LiSSpmeassgrLifarCellUsed")
        activVieSSIP.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "actieavtoerUsed")
       
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.activVieSSIP {
           
            let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "actieavtoerUsed", for: indexPath)
            
            if let avotoer = cokiactivecell.viewWithTag(33) as? UIImageView {
                if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
                    avotoer.image = UIImage.init(named: appledeelgate.totalvrdataSSIP[indexPath.row]["ssipPicdty"] ?? "")
                }
               
            }else{
                if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
                    let yuplder = UIImageView(image:UIImage.init(named: appledeelgate.totalvrdataSSIP[indexPath.row]["ssipPicdty"] ?? ""))
                    yuplder.maskLippaRoundCorner(rMakLSSIpadius: 32.5)
                    cokiactivecell.addSubview(yuplder)
                    yuplder.contentMode = .scaleAspectFill
                    yuplder.snp.makeConstraints { make in
                        make.edges.equalToSuperview()
                    }
                }
                
                
            }
             
            
            return cokiactivecell
        }else{
            
            let cokiactivecell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpmeassgrLifarCellUsed", for: indexPath) as! LiSSpmeassgrLifarCell
            cokiactivecell.talkingSang = LiSSpMeaddgeBootomrbucue.cxhatArraySSIP[indexPath.row]
            return cokiactivecell
        }
        
        
        
    }
    

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.activVieSSIP {
            if let appledeelgate = (UIApplication.shared.delegate) as? AppDelegate {
                let userssip = appledeelgate.totalvrdataSSIP[indexPath.row]
                
                let useriSSIP = LiSSpItmeringBucue.init()
                useriSSIP.postCenDataSSIP = userssip
                self.navigationController?.pushViewController(useriSSIP, animated: true)
              
               
            }
           
        }else{
            let userssip = LiSSpMeaddgeBootomrbucue.cxhatArraySSIP[indexPath.row]
            
            self.navigationController?.pushViewController(LiSSpChatstfrbucue.init(_PChatUSerFwbnke: userssip), animated: true)
        }
    }
    
    @IBOutlet weak var relationlistSSIP: UIButton!
    
    
  
    @IBOutlet weak var activVieSSIP: UICollectionView!
    
    
    
    @IBOutlet weak var notifationViewSSIP: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updataSSIPUI()
    }
    
    
   @objc func updataSSIPUI() {
       self.notifationViewSSIP.reloadData()
       
       self.activVieSSIP.reloadData()
       
       nomesagtipSSIP.isHidden = !(LiSSpMeaddgeBootomrbucue.cxhatArraySSIP.count == 0)
    }
    
    
    @IBAction func fanceToSIPP(_ sender: UIButton) {
        let akoij = LiSSpPersionlistPostfrbucue.init()
       
        self.navigationController?.pushViewController(akoij, animated: true)
    }
    
    
  
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ssuitreatNet()
        
        ssuipCreaNet()
        self.activVieSSIP.isHidden = true
        self.notifationViewSSIP.isHidden = true
     
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lyofapdoienrgj.a.f.".oranApolWothCharrterString(), loaingShowView: self.view)
        
        self.performBlockAfterDelayINSSIP(secondsSSIP: 1.0) {
            self.activVieSSIP.isHidden = false
            self.notifationViewSSIP.isHidden = false
            AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
        }
    }

    private func ssuitreatNet() {
        activVieSSIP.delegate = self
        activVieSSIP.dataSource = self
        NotificationCenter.default.addObserver(self, selector: #selector(updataSSIPUI), name: NSNotification.Name.init("deleteUserSIPPish"), object: nil)
      
        notifationViewSSIP.delegate = self
        notifationViewSSIP.dataSource = self
        
    }

}
