//
//  SparkleShenanigan.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
import SwiftMessages

//个人中心
class SparkleShenanigan: FooceeSenConrer {
   
    
    
    
    @IBOutlet weak var fooceUserphoto: UIImageView!
    
    
    
    
    @IBOutlet weak var usernauioLbl: UILabel!
    
    
    @IBOutlet weak var folooweingcounter: UILabel!
    
    
    
 
    
    @IBOutlet weak var fanceFoce: UILabel!
    
    
    
    //active
    
    
    @IBOutlet weak var postlineffoe: UIImageView!
    
    @IBOutlet weak var timeolaber: UILabel!
    
    @IBOutlet weak var contetnepostm: UILabel!
    
    @IBOutlet weak var contentPostLabr: UIImageView!
    
    
    @IBOutlet weak var noehtingtiposd: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deploySneakyPrankBot()
        focusBureon.isSelected = (PhantomPrankontroller.allFolloweingDatu.filter({ APCEuserFlauy in
            APCEuserFlauy.blindbox_IOPD == userNoafl?.blindbox_IOPD
        }).count > 0)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        GiggleByteBuffer()
    }
    @IBOutlet weak var MatrixButon: UIButton!
    
    
    private func deploySneakyPrankBot() {
        contentPostLabr.layer.cornerRadius = 20
        contentPostLabr.isUserInteractionEnabled = true
        contentPostLabr.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapinestaeeMah)))
        fooceUserphoto.layer.cornerRadius = 59
        contentPostLabr.layer.masksToBounds = true
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        fooceUserphoto.layer.masksToBounds = true
    }
    
    @objc func tapinestaeeMah()  {
        guard let userNoafl = self.userNoafl else {
            return
        }
        self.navigationController?.pushViewController(BaffleBoxShowingApro.init(itMeCenter: false, userNoafl: userNoafl), animated: true)
    }
    
    func GiggleByteBuffer() {
        if  itMeCenter {
            fooceUserphoto.image = PhantomPrankontroller.appChacheimg
            
            var userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
            usernauioLbl.text = userDioemnt?["blindbox_name"]
            
            
            self.folooweingcounter.text = "\(PhantomPrankontroller.allFolloweingDatu.count)"
            
            self.focceRepo.isHidden = true
            focusBureon.isHidden = true
            sendINgGui.isHidden = true
            spINgGui.isHidden = true
            
        }else{
            fooceUserphoto.image = UIImage(named: userNoafl?.blindbox_avpter ?? "")
            usernauioLbl.text = userNoafl?.blindbox_name
            self.folooweingcounter.text = "\(Int.random(in: 0...3))"
            self.fanceFoce.text = "\(Int.random(in: 0...3))"
            if let avvtor = userNoafl?.MH_PICt{
                
                
                postlineffoe.isHidden = false
                noehtingtiposd.isHidden = true
                timeolaber.isHidden = false
                contentPostLabr.isHidden = false
                contentPostLabr.image = UIImage(named: avvtor)
                contetnepostm.isHidden = false
                contetnepostm.text = userNoafl?.MH_Sayuing
                
                
            }else{
                noehtingtiposd.isHidden = false
            }
        }
        
   
    }
    @IBOutlet weak var sendINgGui: UIButton!
    @IBOutlet weak var spINgGui: UIButton!
    
    @objc func backJokeDomino(ert:UIButton) {
        if ert ==  MatrixButon {
            self.navigationController?.popViewController(animated: true)
        }
        
        if ert ==  focceRepo {
            reporitEchoBoost()
        }
    }
    
    @IBOutlet weak var focceRepo: UIButton!
    
    
    @IBOutlet weak var focusBureon: UIButton!
        //关注
    @IBAction func focustchangestarut(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            PhantomPrankontroller.allFolloweingDatu.insert(self.userNoafl!, at: 0)
        }else{
            PhantomPrankontroller.allFolloweingDatu = PhantomPrankontroller.allFolloweingDatu.filter({ APCEuserFlauy in
                APCEuserFlauy.blindbox_IOPD != self.userNoafl?.blindbox_IOPD
            })
        }
        
        
    }
    
    @IBAction func chaitred(_ sender: UIButton) {
        
        //90 chat
        if sender.tag == 90 {
            
            let mainu = ClownCompute.init(itMeCenter: false, userNoafl: userNoafl)
            mainu.meaasgeAllrecord = LMeasgelistBarliDxiu.mesakiuAll.filter({ MeasgtOGFOOCe in
                MeasgtOGFOOCe.usbder.blindbox_IOPD == self.userNoafl?.blindbox_IOPD
            }).first?.dilogmesage
            self.navigationController?.pushViewController(mainu, animated: true)
        }else{
            self.navigationController?.pushViewController(ShenaniganSphere.init(itMeCenter: false, userNoafl: userNoafl), animated: true)
        }
        //99 video
    }
    
    
  
}



class FooceeSenConrer: UIViewController {
    
    
    var itMeCenter:Bool
    var userNoafl:APCEuserFlauy?
    init(itMeCenter: Bool, userNoafl: APCEuserFlauy?) {
        self.itMeCenter = itMeCenter
        self.userNoafl = userNoafl
      
        super.init(nibName: nil, bundle: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(tradmjkhsg), name: NSNotification.Name.init("postbhaieblico"), object: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
    }
    
    @objc func tradmjkhsg()  {
        self.navigationController?.popViewController(animated: true)
        
    }
    //report

    @objc   func reporitEchoBoost()  {
         
        
        let aposss = UIAlertController(title: AppDelegate.processEducationalContent("Rkevpqoyritz doirs kBwlsoxcdk"), message: "", preferredStyle: .alert)
        aposss.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("Bvleowckk"), style: .default, handler: { UIAlertAction in
            if let nerrID = self.userNoafl?.blindbox_IOPD {
                self.Blaokido(Iod:nerrID)
            }
            
            
        }))
        
        aposss.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("Rceqpfowrht"), style: .default, handler: { UIAlertAction in
            self.navigationController?.pushViewController(APCrepoIauiCntroller.init(), animated: true)
        }))
        aposss.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("cdaqnpczell"), style: .default))
        
        self.present(aposss, animated: true)
    }
    
    //拉黑
    func Blaokido(Iod:String)  {
        let aposss = UIAlertController(title:  AppDelegate.processEducationalContent("Balyolczki wUcsjejr"), message: AppDelegate.processEducationalContent("Axftteezrl lbalfoeclkoiinggg,i fyhoiub qwhiuljlr jnxouta krteocwehikvbef xaqnpyr wpwuasthr znwoltmiefriecxajtkitobnqst preezlvactteqdy rttow mtfhyizso gunssebr") , preferredStyle: .alert)
        aposss.addAction(UIAlertAction(title:AppDelegate.processEducationalContent("shugrue") , style: .default, handler: { UIAlertAction in
            
            self.laodingFlay(loadingText: AppDelegate.processEducationalContent("Bzlbohcxkeignpgs.x.s.k.v."))
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                SwiftMessages.hide(animated: true)
                PhantomPrankontroller.allFlayDatu = PhantomPrankontroller.allFlayDatu.filter({ APCEuserFlauy in
                    APCEuserFlauy.blindbox_IOPD != Iod
                })
                
                PhantomPrankontroller.allFolloweingDatu = PhantomPrankontroller.allFolloweingDatu.filter({ APCEuserFlauy in
                    APCEuserFlauy.blindbox_IOPD != Iod
                })
                LMeasgelistBarliDxiu.mesakiuAll = LMeasgelistBarliDxiu.mesakiuAll.filter({ APCEuserFlauy in
                    APCEuserFlauy.usbder.blindbox_IOPD != Iod
                })
                
                self.showingAlertingForSuccessfull(alsemessage:AppDelegate.processEducationalContent("Bhlxohcgka vsvuvcucteksesofourlj!"))
                NotificationCenter.default.post(name: NSNotification.Name.init("postbhaieblico"), object: nil, userInfo: nil)
               
            }))
            
        }))
        
        aposss.addAction(UIAlertAction(title: AppDelegate.processEducationalContent("cdaqnpczell"), style: .default))
        self.present(aposss, animated: true)
    }
}
