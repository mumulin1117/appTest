//
//  DUEIPkdanDydetailCotnoller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/2.
//

import UIKit
import SnapKit
import LLCycleScrollView
import Loaf
//动态详情
class DUEIPkdanDydetailCotnoller: DUELaterPageContirl,UITextFieldDelegate {
    deinit {
        for (ddssx,itmr)  in AppDelegate.dueAllPapa.enumerated(){
            if itmr["Due_oID"] == duerDic["Due_oID"]{
                AppDelegate.dueAllPapa[ddssx] = duerDic
            }
            
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        var result = textField.text ?? ""
        if result == "" {
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tchaeu omneqsoswaigtec isdeunztv xcoarnwnhoztf zbxen qefmhpktcyo!"), sender: self).show()
            
            return true
        }
        
        if  duerDic["livecommene"] != nil {
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "TYeoaug mpzozsrtg cllaobnemldsl ktgohos gfwrfexqyubeanhtrlpyx!"), sender: self).show()
            textField.resignFirstResponder()
            return true
        }
        
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.defautedinft.stopAnimating()
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cxogmcmuernrts osxuvcacmedsbsnfmuylh!"),state: .success, sender: self).show()
            self.duerDic["livecommene"] = result
            self.CreateStagePresence()
            
        }))
        textField.text = nil
        textField.resignFirstResponder()
        return true
    }
    lazy var maingscroolview: LLCycleScrollView = {
        let bannerDemo = LLCycleScrollView.llCycleScrollViewWithFrame(CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width - 48, height: 425))
        bannerDemo.autoScroll = true
        bannerDemo.autoScrollTimeInterval = 3.0
        bannerDemo.imageViewContentMode = .scaleAspectFill
        bannerDemo.scrollDirection = .horizontal
        bannerDemo.customPageControlStyle = .snake
        bannerDemo.customPageControlInActiveTintColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        bannerDemo.layer.cornerRadius = 24
        bannerDemo.layer.masksToBounds = true
        return bannerDemo
    }()
    private  lazy var nevershuldInput: UITextField = {
        let field = UITextField.init()
        field.backgroundColor = UIColor(red: 0.23, green: 0.17, blue: 0.22, alpha: 1)
        field.layer.cornerRadius = 28
        field.returnKeyType = .done
        field.delegate = self
        field.layer.masksToBounds = true
        field.leftViewMode = .always
        field.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        field.textColor = .white
        field.attributedPlaceholder = NSAttributedString.init(string:DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Sqaiyd bspojmpextchsitntgj.y.y.q.")
 , attributes: [.foregroundColor:UIColor.white])
        field.font = UIFont(name: "HarmonyOS Sans", size: 14)
        return field
    }()
    
    
    private lazy var nerHalikeing: UIButton = {
        let skfslkf = UIButton.init()
        skfslkf.setBackgroundImage(UIImage.init(named: "lakongirlike_line"), for: .normal)
        skfslkf.setBackgroundImage(UIImage.init(named: "sfillehaef"), for: .selected)
        skfslkf.addTarget(self, action: #selector(Apoinkido), for: .touchUpInside)
        return skfslkf
    }()
    
    @objc func Apoinkido()  {
       
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
           
            self.defautedinft.stopAnimating()
            
            self.nerHalikeing.isSelected = !self.nerHalikeing.isSelected
            self.duerDic["isSelectedlove"] = self.nerHalikeing.isSelected ? "love" : "dislove"
        }))
        
       
        
    }
    private var duerDic:Dictionary<String,String>
    init(duerDic: Dictionary<String, String>) {
        self.duerDic = duerDic
        super.init(nibName: nil, bundle: nil)
        self.recordidDUE = duerDic["Due_oID"]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private let duerSCrollview = UIScrollView.init()
    
    private let avterDUE = UIImageView()
    private let postlabel = UILabel.init()
    private  lazy var duerSNameLabhi: UILabel = {
        let label = UILabel.init()
        label.textColor = .white
        label.textAlignment = .center
        
        label.font = UIFont.systemFont(ofSize:14, weight: .medium)
        return label
    }()
    
    private  lazy var MainaviheadDUE: UIImageView = {
        let maijko = UIImageView.init()
        maijko.contentMode = .scaleAspectFill
        maijko.frame = CGRect(origin: CGPoint.init(x: 0, y: 0), size: CGSize(width: UIScreen.main.bounds.width, height: 446))
        return maijko
    }()
    
    
    private let toping = UIView.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        nerHalikeing.isSelected  = (duerDic["isSelectedlove"] == "love")
        avterDUE.layer.cornerRadius = 19
        avterDUE.layer.masksToBounds = true
        avterDUE.contentMode = .scaleAspectFill
        
        let wingh = ((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets
        self.view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        
        duerSCrollview.backgroundColor = .clear
        duerSCrollview.contentInsetAdjustmentBehavior = .never
        view.addSubview(duerSCrollview)
        duerSCrollview.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().offset((wingh?.top ?? 0) + 26 + 40 )
        }
        
        avterDUE.isUserInteractionEnabled = true
        avterDUE.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(inserbuttone(tapsender:))))
        toping.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        toping.layer.cornerRadius = 24
        toping.layer.masksToBounds = true
        duerSCrollview.addSubview(toping)
        toping.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.top.equalToSuperview()
            make.height.equalTo(536)
            make.width.equalTo(UIScreen.main.bounds.width - 24)
            make.bottom.equalToSuperview().offset(-400)
        }
        
        toping.addSubview(avterDUE)
        toping.addSubview(duerSNameLabhi)
        toping.addSubview(postlabel)
        toping.addSubview(self.maingscroolview)
        
        weaveCulturalRhythms()
        postlabel.numberOfLines = 0
        postlabel.textColor = .white
        postlabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        postlabel.snp.makeConstraints { make in
            make.leading.equalTo(avterDUE.snp.trailing).offset(14)
            make.trailing.equalToSuperview().inset(14)
            make.top.equalTo(avterDUE)
        }
        
        maingscroolview.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.top.equalTo(duerSNameLabhi.snp.bottom).offset(20)
            make.height.equalTo(425)
        }
        
        
        spawnInteractiveSequence()
        
        
        amplifyStagePresence()
        
        CreateStagePresence()
        
        
        view.addSubview(nevershuldInput)
        nevershuldInput.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(52)
            make.trailing.equalToSuperview().inset(84)
            make.bottom.equalTo(-(wingh?.bottom ?? 0) - 12)
        }
        
        view.addSubview(nerHalikeing)
        nerHalikeing.snp.makeConstraints { make in
            make.width.height.equalTo(48)
            make.trailing.equalToSuperview().inset(16)
            make.centerY.equalTo(nevershuldInput)
        }
        maingscroolview.imagePaths = duerDic["Due_ComuPic"]?.components(separatedBy: "^") ?? [""]
        
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    
    @objc func inserbuttone(tapsender: UITapGestureRecognizer) {
     

        let alertvf = DUECChieCenterCotnoer.init(dfoloower: duerDic)
        
        self.navigationController?.pushViewController(alertvf, animated: true)
    }
    
    
    private func sendComenngtNoaij() {
        
    }
    private func weaveCulturalRhythms()  {
        avterDUE.snp.makeConstraints { make in
            make.width.height.equalTo(38)
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(17)
        }
        duerSNameLabhi.snp.makeConstraints { make in
            make.centerX.equalTo(avterDUE)
            make.top.equalTo(avterDUE.snp.bottom).offset(4)
        }
        
        self.avterDUE.image = UIImage(named: duerDic["Due_avmter"] ?? "")
        self.postlabel.text = duerDic["Due_ComuTItle"]
        self.duerSNameLabhi.text = duerDic["Due_Nopme"]
    }
    
    
    private func spawnInteractiveSequence()  {
        
        let commentitle = UILabel.init()
        commentitle.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "-c-h-y-m-w-d gCbonmlmzebnwtvsb p-c-n-d-f-n-")
        commentitle.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        commentitle.textColor = .white
        commentitle.textAlignment = .center
        duerSCrollview.addSubview(commentitle)
        commentitle.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(toping.snp.bottom).offset(32)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(refreshinggindication), name: .contentBlocked, object: nil)
    }


    @objc func refreshinggindication()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    fileprivate func amplifyStagePresence() {
        let itemping = UIView.init()
        itemping.layer.masksToBounds = true
        itemping.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        itemping.layer.cornerRadius = 20
        
        duerSCrollview.addSubview(itemping)
        itemping.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.top.equalTo(self.toping.snp.bottom).offset(84)
            make.height.equalTo(85)
        }
        
        
        let avtercomentDUE = UIImageView()
        avtercomentDUE.layer.cornerRadius = 18
        avtercomentDUE.layer.masksToBounds = true
        avtercomentDUE.contentMode = .scaleAspectFill
        itemping.addSubview(avtercomentDUE)
        avtercomentDUE.snp.makeConstraints { make in
            make.width.height.equalTo(36)
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(12)
        }
        
        let namccdlabel = UILabel.init()
        namccdlabel.textColor = .white
        namccdlabel.textAlignment = .left
        namccdlabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        itemping.addSubview(namccdlabel)
        namccdlabel.snp.makeConstraints { make in
            make.top.equalTo(avtercomentDUE.snp.top)
            make.leading.equalTo(avtercomentDUE.snp.trailing).offset(5)
        }
        
        
        
        
        let savnuingcdlabel = UILabel.init()
        savnuingcdlabel.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        savnuingcdlabel.textAlignment = .left
        savnuingcdlabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        savnuingcdlabel.numberOfLines = 0
        itemping.addSubview(savnuingcdlabel)
        savnuingcdlabel.snp.makeConstraints { make in
            make.top.equalTo(namccdlabel.snp.bottom).offset(4)
            make.leading.equalTo(avtercomentDUE.snp.trailing).offset(5)
            make.trailing.equalToSuperview().inset(10)
        }
        
        
        let cjai = ["GrooveCatalyst moves = liquid mercury! Who's remixing? 💫 #DuellivMagic",
                    "3AM duel! Crash my stream - you pick the music! 🔥 #NightOwlBattles",
                    "Krump + ballet fusion recipe. Your remix? 🌍 #DuellivMixLab",
                    "@DanceMaverick97's ⚡boost = quantum-level tutting! Mindblown!",
                    "Passinho meets Kathak spins. Algorithm panic! 🌪️ #BorderlessBeats",
                    "127 fails → 8-direction isolations! Motion heatmap MVP. 🎯"
        ]
        
        let aaount = Int(duerDic["Due_oID"] ?? "0") ?? 0
        
        
        
        
        
        if let radomeHe = AppDelegate.dueAllPapa.filter({ fou in
            return fou["Due_oID"] == "\(aaount + 1)"
        }).first{
            avtercomentDUE.image = UIImage(named: radomeHe["Due_avmter"] ?? "")
            namccdlabel.text = radomeHe["Due_Nopme"]
            savnuingcdlabel.text = cjai.randomElement()
        }else{
            let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
            
            avtercomentDUE.image =  AppDelegate.HuiwchaerQuil
            namccdlabel.text  =  DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mke")

            savnuingcdlabel.text = cjai.randomElement()
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    fileprivate func CreateStagePresence() {
        
        if let mecomme = duerDic["livecommene"]  {
            let itemping = UIView.init()
            itemping.layer.masksToBounds = true
            itemping.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
            itemping.layer.cornerRadius = 20
            
            duerSCrollview.addSubview(itemping)
            itemping.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(12)
                make.top.equalTo(self.toping.snp.bottom).offset(84 + 75 + 20)
                make.height.equalTo(85)
            }
            
            
            let avtercomentDUE = UIImageView()
            avtercomentDUE.layer.cornerRadius = 18
            avtercomentDUE.layer.masksToBounds = true
            avtercomentDUE.contentMode = .scaleAspectFill
            itemping.addSubview(avtercomentDUE)
            avtercomentDUE.snp.makeConstraints { make in
                make.width.height.equalTo(36)
                make.top.equalToSuperview().offset(16)
                make.leading.equalToSuperview().offset(12)
            }
            
            let namccdlabel = UILabel.init()
            namccdlabel.textColor = .white
            namccdlabel.textAlignment = .left
            namccdlabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
            itemping.addSubview(namccdlabel)
            namccdlabel.snp.makeConstraints { make in
                make.top.equalTo(avtercomentDUE.snp.top)
                make.leading.equalTo(avtercomentDUE.snp.trailing).offset(5)
            }
            
            
            
            
            let savnuingcdlabel = UILabel.init()
            savnuingcdlabel.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
            savnuingcdlabel.textAlignment = .left
            savnuingcdlabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
            savnuingcdlabel.numberOfLines = 0
            itemping.addSubview(savnuingcdlabel)
            savnuingcdlabel.snp.makeConstraints { make in
                make.top.equalTo(namccdlabel.snp.bottom).offset(4)
                make.leading.equalTo(avtercomentDUE.snp.trailing).offset(5)
                make.trailing.equalToSuperview().inset(10)
            }
            
            
         
                let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
                
                avtercomentDUE.image =  AppDelegate.HuiwchaerQuil
                namccdlabel.text  =  DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mke")

                savnuingcdlabel.text = mecomme
                
            
        }
       
        
    }
}
