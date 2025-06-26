//
//  CChieCenterCotnoer.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/1.
//

import UIKit


//his center
class CChieCenterCotnoer: LaterPageContirl {
    
   
    private lazy var gravitonPulse: UIButton = {
       let mains = UIButton.init()
       mains.setBackgroundImage(UIImage.init(named: "gravitonFluxsss"), for: .normal)
       mains.addTarget(self, action: #selector(ChaingforDue), for: .touchUpInside)
       return mains
   }()
   
    @objc func ChaingforDue() {
        if  let inbau = AppDelegate.allMeasgfijg.filter({ DIOLogdiaologall in
            DIOLogdiaologall.userdiocm["Due_oID"] == dfoloower["Due_oID"]
        }).first {
          self.navigationController?.pushViewController(ITremixipoContoll.init(appdelegateFei: inbau), animated: true)
      }
       
        
    }
    
    
    //foloowe
    @objc func followertngforDue() {
         
        followengDUE.isSelected = !followengDUE.isSelected
        if followengDUE.isSelected {
            AppDelegate.follorrPAPA.insert(dfoloower)
            return
        }
        AppDelegate.follorrPAPA.remove(dfoloower)
        
    }
    
    private let postlabel = UILabel.init()
    private var fansCountlAbl:UILabel?
    private var followingCount:UILabel?
    private var wallentCount:UILabel?
    
    
    var dfoloower:Dictionary<String,String>
    init( dfoloower: Dictionary<String, String>) {
     
        self.dfoloower = dfoloower
        super.init(nibName: nil, bundle: nil)
        self.recordidDUE = dfoloower["Due_oID"]
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUserinfoFoeing()
        if AppDelegate.follorrPAPA.contains(dfoloower){
            followengDUE.isSelected = true
        }
    }
    private lazy var followengDUE: UIButton = {
       let mains = UIButton.init()
       mains.setBackgroundImage(UIImage.init(named: "notFoflofollow"), for: .normal)
        mains.setBackgroundImage(UIImage.init(named: "DUERfollowed"), for: .selected)
       mains.addTarget(self, action: #selector(followertngforDue), for: .touchUpInside)
       return mains
   }()
    
    private let duerSCrollview = UIScrollView.init()
    private  lazy var duerSNameLabhi: UILabel = {
        let label = UILabel.init()
        label.textColor = .white
        label.textAlignment = .left
        
        label.font = UIFont.systemFont(ofSize: 48, weight: .bold)
        return label
    }()
    
    private  lazy var MainaviheadDUE: UIImageView = {
        let maijko = UIImageView.init(image: UIImage.init(named: ""))
        maijko.contentMode = .scaleAspectFill
        maijko.frame = CGRect(origin: CGPoint.init(x: 0, y: 0), size: CGSize(width: UIScreen.main.bounds.width, height: 446))
        return maijko
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        shitMorengDUE.isHidden = false
        shitBackDUE.isHidden = false
        view.insertSubview(MainaviheadDUE, at: 0)
        //cover
        let covermaijko = UIImageView.init(image: UIImage.init(named: "oijur_jbtm"))
        covermaijko.contentMode = .scaleToFill
        view.addSubview(covermaijko)
        covermaijko.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(MainaviheadDUE)
            make.height.equalTo(243)
        }
        
        
       
        duerSCrollview.backgroundColor = .clear
        duerSCrollview.contentInsetAdjustmentBehavior = .never
        view.addSubview(duerSCrollview)
        duerSCrollview.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(205)
        }
        
        let bootomView = UIView()
        bootomView.backgroundColor = .clear
        duerSCrollview.addSubview(bootomView)
        bootomView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(780)
        }
        
        
        insertStatckView()
        
        shamePostingBotto()
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    
    private func insertStatckView()  {
        duerSCrollview.addSubview(self.duerSNameLabhi)
        duerSNameLabhi.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.top.equalToSuperview().offset(80)
            
        }
        
        let stack = UIStackView.init()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
       
        duerSCrollview.addSubview(stack)
      
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.trailing.equalToSuperview().inset(50)
            make.height.equalTo(55)
            make.top.equalTo(duerSNameLabhi.snp.bottom).offset(10)
        }
        
        for (i,item) in [LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Fkaynrs"),LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Fjoclzltoawfiznggws"),LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Poonsjt")].enumerated() {
            let huan = UIButton.init()
            
           
            stack.addArrangedSubview(huan)
            
            
            let DuerCuoaojmView = UILabel.init()
            DuerCuoaojmView.textColor = UIColor.white
            DuerCuoaojmView.textAlignment = .center
            DuerCuoaojmView.text = "0"
            DuerCuoaojmView.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            huan.addSubview(DuerCuoaojmView)
            DuerCuoaojmView.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
                make.top.equalToSuperview().offset(10)
                make.height.equalTo(20)
                
                
            }
            
            let label = UILabel.init()
            label.textColor = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1)
            label.textAlignment = .center
            label.text = item
            label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            huan.addSubview(label)
            label.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
                make.height.equalTo(25)
                make.bottom.equalToSuperview().inset(-12)
            }
            
           
            if i == 0 {
                fansCountlAbl = DuerCuoaojmView
            }
            
            if i == 1 {
                followingCount = DuerCuoaojmView
            }
            
            if i == 2 {
                self.wallentCount = DuerCuoaojmView
            }
        }
       
        self.duerSCrollview.addSubview(followengDUE)
        self.duerSCrollview.addSubview(gravitonPulse)
        followengDUE.snp.makeConstraints { make in
            make.width.equalTo(143)
            make.height.equalTo(42)
            make.trailing.equalTo(self.view.snp.centerX).offset(-10)
            make.top.equalTo(stack.snp.bottom).offset(20)
        }
        gravitonPulse.snp.makeConstraints { make in
            make.width.equalTo(143)
            make.height.equalTo(42)
            make.leading.equalTo(self.view.snp.centerX).offset(10)
            make.top.equalTo(stack.snp.bottom).offset(20)
        }
        
        postlabel.textColor = UIColor.white
        
        postlabel.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pvonswtes")
        postlabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        duerSCrollview.addSubview(postlabel)
        postlabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalTo(gravitonPulse.snp.bottom).offset(32)
        }
    }

    
    
    
    
    
    
    
    private func updateUserinfoFoeing()  {
       
        MainaviheadDUE.image =  UIImage(named: dfoloower["Due_avmter"] ?? "")
        duerSNameLabhi.text  =  dfoloower["Due_Nopme"]
        
        if dfoloower["Due_ComuPic"] != nil {
            wallentCount?.text = "1"
        }else{
            wallentCount?.text = "0"
        }
        
        generateBattleRoutine()
    }
    
    
    func generateBattleRoutine(){
        fansCountlAbl?.text = dfoloower["fasount"]
        followingCount?.text = dfoloower["followseexount"]
    }
    
    private func shamePostingBotto()  {
        
        if dfoloower["Due_ComuPic"] != nil {
            
            
            let img = UIImageView()
            if let aos = dfoloower["Due_ComuPic"]?.components(separatedBy: "^").first {
                img.image = UIImage(named: aos)
            }
            img.contentMode = .scaleToFill
            img.layer.cornerRadius = 15
            img.layer.masksToBounds = true
            img.isUserInteractionEnabled = true
            duerSCrollview.addSubview(img)
            img.snp.makeConstraints { make in
                make.top.equalTo(postlabel.snp.bottom).offset(20)
                make.width.height.equalTo(168)
                make.leading.equalToSuperview().inset(12)
            }
            
            let contetnlak = UILabel.init()
            contetnlak.textColor = UIColor.white
            
            contetnlak.text = dfoloower["Due_ComuTItle"]
            contetnlak.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            contetnlak.numberOfLines = 2
            duerSCrollview.addSubview(contetnlak)
            contetnlak.snp.makeConstraints { make in
                make.leading.trailing.equalTo(img)
                make.top.equalTo(img.snp.bottom).offset(8)
                
            }
            contetnlak.isUserInteractionEnabled = true
            contetnlak.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ApllldkFoingner)))
            img.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ApllldkFoingner)))
        }else{
            
            spawnInteractiveSequence()
        }
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(refreshinggindication), name: .contentBlocked, object: nil)
    }

    private func spawnInteractiveSequence()  {
        let contetnlak = UILabel.init()
        contetnlak.textColor = UIColor.white
        
        contetnlak.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tihoezriej khsanvxecnq'atq qpwossutieidn yaznaye gunpidiabtbefsj wyjest") 
        contetnlak.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        contetnlak.numberOfLines = 2
        duerSCrollview.addSubview(contetnlak)
        contetnlak.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(10)
            make.top.equalTo(postlabel.snp.bottom).offset(80)
            
        }
    }
    @objc func refreshinggindication()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    //动态详情
    @objc func ApllldkFoingner()  {
        
        self.navigationController?.pushViewController(IPkdanDydetailCotnoller.init(duerDic: self.dfoloower), animated: true)
    }
    

    
   
}
