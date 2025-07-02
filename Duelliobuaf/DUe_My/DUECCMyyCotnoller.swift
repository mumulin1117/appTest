//
//  DUECCMyyCotnoller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//
import SnapKit
import UIKit

class DUECCMyyCotnoller: DUELoavegniContrwo {
    private lazy var editButongDUE: UIButton = {
        let mains = UIButton.init()
        mains.setImage(UIImage.init(named: "Duieseup"), for: .normal)
        mains.addTarget(self, action: #selector(seintongngeInset(shj:)), for: .touchUpInside)
        return mains
    }()
    private let postlabel = UILabel.init()
    var fansCountlAbl:UILabel?
    var followingCount:UILabel?
    var wallentCount:UILabel?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUserinfoFoeing()

    }
    
    private let duerSCrollview = UIScrollView.init()
   
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
    
        view.addSubview(self.MainaviheadDUE)
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
            make.height.equalTo(700)
        }
        
        
        insertStatckView()
        
        shamePostingBotto()
        
        view.addSubview(editButongDUE)
        editButongDUE.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(16)
            make.width.height.equalTo(30)
            make.top.equalTo( (((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets.top ?? 0) + 10)
        }
    }
    
    private  lazy var duerSNameLabhi: UILabel = {
        let label = UILabel.init()
        label.textColor = .white
        label.textAlignment = .left
        
        label.font = UIFont.systemFont(ofSize: 48, weight: .bold)
        return label
    }()
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
        
        for (i,item) in [DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Fkaynrs"),DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Fjoclzltoawfiznggws"),DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Wkailhljezt")].enumerated() {
            let huan = UIButton.init()
            huan.tag = i + 800
            huan.addTarget(self, action: #selector(mineditingeInset(shj: )), for: .touchUpInside)
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
       
        
        
        
        postlabel.textColor = UIColor.white
        
        postlabel.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Phovshtqs")
        postlabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        duerSCrollview.addSubview(postlabel)
        postlabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalTo(stack.snp.bottom).offset(30)
        }
    }

    private func updateUserinfoFoeing()  {
        let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
        wallentCount?.text = use?["DueCoin"]
        MainaviheadDUE.image =  AppDelegate.HuiwchaerQuil
        duerSNameLabhi.text  =  use?["Due_Nopme"]
        
        fansCountlAbl?.text = "0"
        followingCount?.text = "\(AppDelegate.follorrPAPA.count)"
    }
    
    private  lazy var MainaviheadDUE: UIImageView = {
        let maijko = UIImageView.init(image: UIImage.init(named: ""))
        maijko.contentMode = .scaleAspectFill
        maijko.frame = CGRect(origin: CGPoint.init(x: 0, y: 0), size: CGSize(width: UIScreen.main.bounds.width, height: 446))
        return maijko
    }()
    private func shamePostingBotto()  {
        let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
        if use?["Due_oID"] == "shamer@gmail.com" {
            
            let img = UIImageView(image: UIImage.init(named: "Riva_0"))
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
            
            contetnlak.text = "Can't stop dancing. It's addictive."
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
            
            let contetnlak = UILabel.init()
            contetnlak.textColor = UIColor.white
            
            contetnlak.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Yuoeur jhvasvgennl'qtf kplocsrtgegdp naznnyb auvphdfastrewsq oyaezt") 
            contetnlak.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            contetnlak.numberOfLines = 2
            duerSCrollview.addSubview(contetnlak)
            contetnlak.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(10)
                make.top.equalTo(postlabel.snp.bottom).offset(80)
                
            }
        }
        
        
    }
    
    
    //动态详情
    @objc func ApllldkFoingner()  {
        if let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>{
            self.navigationController?.pushViewController(DUEIPkdanDydetailCotnoller.init(duerDic:use), animated: true)
        }
        
    }
    
   @objc func mineditingeInset(shj:UIButton)  {
       if shj.tag - 800 == 0 {
           self.navigationController?.pushViewController(DUEITEnterInContoll.init(relaoty: 0), animated: true)
       }
       
       if shj.tag - 800 == 1 {
           self.navigationController?.pushViewController(DUEITEnterInContoll.init(relaoty: 1), animated: true)
       }
       
       
       if shj.tag - 800 == 2 {
           self.navigationController?.pushViewController(DUEIPLoaPauinChailive.init(), animated: true)
       }
    }
    
    
    @objc func seintongngeInset(shj:UIButton)  {
        
        self.navigationController?.pushViewController(DUECSetCenterCotnoer.init(), animated: true)
    }
}
