//
//  DUEIVAiChunCotnoler.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/7.
//
import TagListView
import UIKit
import Loaf
import Alamofire
//Ai
class DUEIVAiChunCotnoler: DUELaterPageContirl {
    
    let texDUEfview = UITextView.init()
    
    private  var scrollTopviewf = UIView.init(frame: CGRect.init(x: 12, y: 0, width: UIScreen.main.bounds.width - 24, height: 700))
    private var selectedTagTheme: TagView? //
    private var selectedTagStyle: TagView? //
    private  let Billobao = UITextField()
    private var selectedTagType: TagView? //
    override func viewDidLoad() {
        super.viewDidLoad()
        var scrollBaminf = UIScrollView.init()
        self.shitMorengDUE.isHidden = true
        
        let tolayer = UIImageView.init(image: UIImage.init(named: "AjioClolpaonner"))
        tolayer.contentMode = .scaleAspectFill
        self.view.insertSubview(tolayer, at: 0)
        tolayer.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(418)
        }
        self.view.backgroundColor = UIColor(red: 0.15, green: 0.02, blue: 0.11, alpha: 1)
        scrollBaminf.backgroundColor = .clear
        view.addSubview(scrollBaminf)
        scrollBaminf.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().inset(290)
        }
        
        scrollBaminf.addSubview(scrollTopviewf)
        scrollTopviewf.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.width.equalTo(UIScreen.main.bounds.width - 24)
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(720)
        }
        scrollTopviewf.layer.cornerRadius = 12
        scrollTopviewf.layer.masksToBounds = true
        scrollTopviewf.backgroundColor = UIColor(red: 0.14, green: 0.01, blue: 0.11, alpha: 0.3800)

        scrollTopviewf.layer.borderColor =  UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1).cgColor
        scrollTopviewf.layer.borderWidth = 1
        igniteDuelEnergy()
        
        themlEnergy()
        stylelEnergy()
        tylenergy()
        
        let layud = UIButton.init()
        layud.tag = 500
        layud.setBackgroundImage(UIImage.init(named: "nnepaoAierate"), for: .normal)
        layud.addTarget(self, action: #selector(JAHohmkajd), for: .touchUpInside)
        view.addSubview(layud)
        layud.snp.makeConstraints { make in
            make.width.equalTo(287)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-33)
        }
    }
    //创建
    @objc func JAHohmkajd() {
        guard let appdanceName = self.Billobao.text,appdanceName.count > 0 else {
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pulmecabsteu geqndtiekrg zdiarnmcjevru fnuasmge"), sender: self).show()
            return
        }
        
        
        var use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
        var coainfhkO = Int( use?["DueCoin"] ?? "0") ?? 0
        if coainfhkO >= 300 {
            coainfhkO -= 300
            self.Billobao.resignFirstResponder()
            use?["DueCoin"] = "\(coainfhkO)"
            UserDefaults.standard.set(use, forKey: "dueUserNowing")
            
            chuiSpring(use:use,appdanceName:appdanceName)
           
            
            return
        }
        
        
        
        Aplyingalert()
        
       
     
    }
    
    
    private func chuiSpring(use:Dictionary<String,String>?,appdanceName:String)  {
        UserDefaults.standard.set(use, forKey: use?["Due_oID"] ?? "")

        UserDefaults.standard.synchronize()
       
        createrResulertinh(titile: appdanceName)
    }
    
    private func Aplyingalert()  {
        let aldfkt = UIAlertAction(title:DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "rveucjhqasrxgme") , style: .default) { alo in
            self.navigationController?.pushViewController(DUEIPLoaPauinChailive.init(), animated: true)
        }
        
        let ahurelae = UIAlertController(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Isnfswuofdfnifcsiyegnstt oBdazluajnacne"), message: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "AdIc iDeasndcxen fChrtewavtgipvxiftgyt trveiqeugikrnehst d3u0g0w xdwisacmtolnldjsz npmeira bsoeysasqiqotn"), preferredStyle:.actionSheet)
        ahurelae.addAction(aldfkt)
        
        ahurelae.addAction(UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "csawntcdeyl"), style: .default, handler: nil))
        
        self.present(ahurelae, animated: true)
    }
    
    @objc func igniteDuelEnergy()  {
        let tolayer = UIImageView.init(image: UIImage.init(named: "starMAinhu"))
        tolayer.contentMode = .scaleToFill
        self.scrollTopviewf.addSubview(tolayer)
        tolayer.snp.makeConstraints { make in
            make.width.height.equalTo(18)
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(27)
            
            
        }
        
        let Toio = UILabel.init()
        Toio.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Deakncckebr")
        Toio.textColor = .white
        Toio.textAlignment = .left
        Toio.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        self.scrollTopviewf.addSubview(Toio)
        Toio.snp.makeConstraints { make in
            make.leading.equalTo(tolayer.snp.trailing).offset(3)
            make.centerY.equalTo(tolayer)
        
        }
        
        
       
        Billobao.textAlignment = .center
        Billobao.textColor = .white
        Billobao.layer.borderColor =  UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 0.62).cgColor
        Billobao.backgroundColor = UIColor(red: 0.22, green: 0.08, blue: 0.2, alpha: 1)
        Billobao.layer.cornerRadius = 23
        Billobao.layer.borderWidth = 1
        Billobao.layer.masksToBounds = true
        Billobao.attributedPlaceholder =  NSAttributedString.init(string: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pyloesajsiev oegnctbepri tDmaxneczerrq wnfakmse"), attributes: [.foregroundColor:UIColor.white])
        
        self.scrollTopviewf.addSubview(Billobao)
        Billobao.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.top.equalTo(tolayer.snp.bottom).offset(19)
            make.height.equalTo(46)
        }
        
    }
    
    
    @objc func themlEnergy()  {
        let tolayer = UIImageView.init(image: UIImage.init(named: "starMAinhu"))
        tolayer.contentMode = .scaleToFill
        self.scrollTopviewf.addSubview(tolayer)
        tolayer.snp.makeConstraints { make in
            make.width.height.equalTo(18)
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(137)
            
            
        }
        
        let Toio = UILabel.init()
        Toio.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Daaqncchet gTwheemmge")
        Toio.textColor = .white
        Toio.textAlignment = .left
        Toio.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        self.scrollTopviewf.addSubview(Toio)
        
        Toio.snp.makeConstraints { make in
            make.leading.equalTo(tolayer.snp.trailing).offset(3)
            make.centerY.equalTo(tolayer)
        }
        
        let daceTagoB = TagListView.init()
        daceTagoB.textFont = UIFont.systemFont(ofSize: 15, weight: .bold)
        daceTagoB.delegate  = self
        daceTagoB.tagSelectedBackgroundColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        daceTagoB.tagBackgroundColor =  UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 0.1600)
        daceTagoB.clipsToBounds = true
        daceTagoB.selectedTextColor = .white
        daceTagoB.textColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        daceTagoB.tag = 200
        daceTagoB.delegate = self
        daceTagoB.cornerRadius = 18
        daceTagoB.paddingX =  12
        daceTagoB.paddingY = 12
        daceTagoB.marginX = 12
        daceTagoB.marginY = 12
        daceTagoB.addTags(["Love Story","Dream Chaser","Fantasy World","Nature's Beauty","Friendship Forever"])
        daceTagoB.alignment = .left
       
        self.scrollTopviewf.addSubview(daceTagoB)
        daceTagoB.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.height.equalTo(58*3)
            make.top.equalTo(tolayer.snp.bottom).offset(19)
        }
        
        // 初始选中第一个（可选）
        
        if let firstTag = daceTagoB.tagViews.first {
            firstTag.isSelected = true
            selectedTagTheme = firstTag
        }
    }
    
  
    
    @objc func stylelEnergy()  {
        let tolayer = UIImageView.init(image: UIImage.init(named: "starMAinhu"))
        tolayer.contentMode = .scaleToFill
        self.scrollTopviewf.addSubview(tolayer)
        tolayer.snp.makeConstraints { make in
            make.width.height.equalTo(18)
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(363)
            
            
        }
        
        let Toio = UILabel.init()
        Toio.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Dkatnqccee pSutzyvloe")
        Toio.textColor = .white
        Toio.textAlignment = .left
        Toio.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        self.scrollTopviewf.addSubview(Toio)
        Toio.snp.makeConstraints { make in
            make.leading.equalTo(tolayer.snp.trailing).offset(3)
            make.centerY.equalTo(tolayer)
        }
        
        let daceTagoB = TagListView.init()
        daceTagoB.textFont = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        daceTagoB.tagSelectedBackgroundColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        daceTagoB.tagBackgroundColor =  UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 0.1600)
        daceTagoB.clipsToBounds = true
        daceTagoB.selectedTextColor = .white
        daceTagoB.textColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        daceTagoB.tag = 300
        daceTagoB.delegate = self
        daceTagoB.cornerRadius = 18
        daceTagoB.paddingX =  12
        daceTagoB.paddingY = 12
        daceTagoB.addTags(["Energetic","Charming","Wild","Graceful","Elegant"])
        daceTagoB.alignment = .left
        daceTagoB.marginX = 12
        daceTagoB.marginY = 12
      
        self.scrollTopviewf.addSubview(daceTagoB)
        daceTagoB.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.height.equalTo(58*2)
            make.top.equalTo(tolayer.snp.bottom).offset(19)
        }
        if let firstTag = daceTagoB.tagViews.first {
            firstTag.isSelected = true
            selectedTagStyle = firstTag
        }
    }
    
    
    @objc func tylenergy()  {
        let tolayer = UIImageView.init(image: UIImage.init(named: "starMAinhu"))
        tolayer.contentMode = .scaleToFill
        self.scrollTopviewf.addSubview(tolayer)
        tolayer.snp.makeConstraints { make in
            make.width.height.equalTo(18)
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(531)
            
            
        }
        
        let Toio = UILabel.init()
        Toio.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ddaonvcteh tTzygple")
        Toio.textColor = .white
        Toio.textAlignment = .left
        Toio.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        self.scrollTopviewf.addSubview(Toio)
        Toio.snp.makeConstraints { make in
            make.leading.equalTo(tolayer.snp.trailing).offset(3)
            make.centerY.equalTo(tolayer)
        }
        
        let daceTagoB = TagListView.init()
        daceTagoB.textFont = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        daceTagoB.tagSelectedBackgroundColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        daceTagoB.tagBackgroundColor =  UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 0.1600)
        daceTagoB.clipsToBounds = true
        daceTagoB.selectedTextColor = .white
        daceTagoB.textColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        
        daceTagoB.cornerRadius = 18
        daceTagoB.paddingX =  12
        daceTagoB.paddingY = 12
        daceTagoB.addTags(["Hip-hop","Jazz","Ballet","Latin Dance","Contemporary"])
        daceTagoB.alignment = .left
        daceTagoB.marginX = 12
        daceTagoB.marginY = 12
        daceTagoB.tag = 400
        daceTagoB.delegate = self
        self.scrollTopviewf.addSubview(daceTagoB)
        daceTagoB.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.height.equalTo(58*2)
            make.top.equalTo(tolayer.snp.bottom).offset(19)
        }
        if let firstTag = daceTagoB.tagViews.first {
            firstTag.isSelected = true
            selectedTagType = firstTag
        }
    }
}


extension DUEIVAiChunCotnoler: TagListViewDelegate {
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        if sender.tag == 200 {
            // 取消之前选中的样式
            self.selectedTagTheme?.isSelected = false
            // 设置新选中样式
            tagView.isSelected = true
            // 更新记录
            self.selectedTagTheme = tagView
            
            // 获取选中值
            if let selectedTitle = tagView.currentTitle {
                print("当前选中: \(selectedTitle)")
            }
        }
        
        if sender.tag == 300 {
            // 取消之前选中的样式
            self.selectedTagStyle?.isSelected = false
            // 设置新选中样式
            tagView.isSelected = true
            // 更新记录
            self.selectedTagStyle = tagView
            
            // 获取选中值
            if let selectedTitle = tagView.currentTitle {
                print("当前选中: \(selectedTitle)")
            }
        }
        
        
        if sender.tag == 400 {
            // 取消之前选中的样式
            self.selectedTagType?.isSelected = false
            // 设置新选中样式
            tagView.isSelected = true
            // 更新记录
            self.selectedTagType = tagView
            
            // 获取选中值
            if let selectedTitle = tagView.currentTitle {
                print("当前选中: \(selectedTitle)")
            }
        }
    }
    
    

}


extension DUEIVAiChunCotnoler{
    
    private func createrResulertinh(titile:String) {
        
        
        
        texDUEfview.backgroundColor = .black
        texDUEfview.textColor = .white
        texDUEfview.isEditable = false
        texDUEfview.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Riemsbudljtt qgoemnlemryaetuimovnj hihnh apqrooagarneasfs")
        texDUEfview.font = UIFont(name: "HarmonyOS Sans Medium", size: 15)
        texDUEfview.contentInset = UIEdgeInsets(top: 25, left: 15, bottom: 15, right: 15)
        
        self.scrollTopviewf.addSubview(texDUEfview)
        texDUEfview.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        
        
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        self.view.addSubview(indicate)
        indicate.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        indicate.startAnimating()
        
        self.view.isUserInteractionEnabled = false
        
        
        self.view.viewWithTag(500)?.isHidden = true
        
        let layud = UIButton.init()
        layud.setTitle(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "GpEqT"), for: .normal)
        layud.setTitleColor(.white, for: .normal)
        layud.setBackgroundImage(UIImage.init(named: "img_btn_bg"), for: .normal)
        layud.addTarget(self, action: #selector(savegetingj), for: .touchUpInside)
        view.addSubview(layud)
        layud.snp.makeConstraints { make in
            make.width.equalTo(287)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-33)
        }
        
        Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Gueqngetruautzisnvgf ncyrpeyaotoilvxei pixdxesaksj.n.a.n.q."), state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
        
        let suret = "I hope to receive some creative AI dance movements." + " The dance name is:" + titile + ". The dance theme is:" + (self.selectedTagTheme?.titleLabel?.text ?? "")
        
        let skodk = ". The dance movement style is:"  + (self.selectedTagStyle?.titleLabel?.text ?? "") + "and the dance movement type is:" + (self.selectedTagType?.titleLabel?.text ?? "")
        AF.request(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "hwtrtspu:f/y/bwawgwt.bsheurleinlijteyrvyiisqtnax7y8k.sxjynzw/ctbawlmkstgwgov/aabsmktQuuceysvtoikobnxvo2"), method: .post, parameters: [DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "quubepsptgicokn"): suret + skodk + ".At least 300",DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "qpuzelsytqifoynfTiyvpne"): 1,DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "euqqNdo"):DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "5o5r5b5")], encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                self.view.isUserInteractionEnabled = true
                indicate.stopAnimating()
                Loaf.dismiss(sender: self, animated: true)
                switch response.result {
                case .success(let value):
                    self.remixChallengeParameters(value:value as? [String : Any])
                  
                   
                case .failure(let error):
                    Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ddagtpau eeprzrconr"), sender: self).show()
                }
                
            }
            
          
       
    
        
        
    }
    
    func amplifyStagePresence()  {
        
    }
    private func remixChallengeParameters(value:[String: Any]?)  {
        if let json = value  {
            guard let content = json[DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "dgaltfa")] as? String else {
                Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ddagtpau eeprzrconr"), sender: self).show()
               
                return
            }
           
            texDUEfview.text = content
            return
           
        }
        Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ddagtpau eeprzrconr"), sender: self).show()
    }
    
    @objc func savegetingj()  {
        self.navigationController?.popViewController(animated: true)
    }
    
}
