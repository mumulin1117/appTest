//
//  DUEIPGiftpeilCotnoller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/2.
//

import UIKit
protocol DUEIPGiftpeilCotnollerdelegae {
    func presnterintulp(steirnh:String,adgt:Int)
}
class DUEIPGiftpeilCotnoller: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    private var allCountPresent:Int = 1
    //礼物总价
    private lazy var needdmoneytLablLabfen: UILabel = {
        let sfe = UILabel.init()
        sfe.text = "199"
        sfe.textColor =  UIColor.white
        sfe.textAlignment = .center
        sfe.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return sfe
    }()
    //需要的数量
    private lazy var presentcountsndLabfen: UILabel = {
        let sfe = UILabel.init()
        sfe.text = "1"
        sfe.textColor =  UIColor.white
        sfe.textAlignment = .center
        sfe.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return sfe
    }()
    
    //add
    lazy var dueburreongincrea: UIButton = {
        let sjiako = UIButton.init()
        sjiako.addTarget(self, action: #selector(incrradttt(vxcn:)), for: .touchUpInside)
        return sjiako
    }()
    //减
    lazy var dueburreongDecrea: UIButton = {
        let sjiako = UIButton.init()
        sjiako.addTarget(self, action: #selector(incrradttt(vxcn:)), for: .touchUpInside)
        return sjiako
    }()
    
    //given post
    lazy var surepostgDecrea: UIButton = {
        let sjiako = UIButton.init()
        sjiako.addTarget(self, action: #selector(sureposdtpresent), for: .touchUpInside)
        return sjiako
    }()
    
    //MARK: - 送礼
    @objc func sureposdtpresent() {
        let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
    
        var balkfi =  Int(use?["DueCoin"] ?? "0") ?? 0
        
        if balkfi < allCountPresent*199 {
            self.navigationController?.pushViewController(DUEIPLoaPauinChailive.init(), animated: true)
            return
        }
        balkfi -= allCountPresent*199
        
        self.deflay?.presnterintulp(steirnh: self.alllPresentFuul[sendCidf], adgt: allCountPresent)
        
        self.dismiss(animated: true)
        
    }
    //dissmi
    lazy var dismissburreongDecrea: UIButton = {
        let sjiako = UIButton.init()
        sjiako.setImage(UIImage.init(named: "zhengjiclose"), for: .normal)
        sjiako.addTarget(self, action: #selector(aijdpoaiu), for: .touchUpInside)
        return sjiako
    }()
    
    @objc func aijdpoaiu()  {
        self.dismiss(animated: true)
    }
    
   @objc func incrradttt(vxcn:UIButton){
       if vxcn == dueburreongincrea {
           allCountPresent += 1
       }
       
       if vxcn == dueburreongDecrea {
           if allCountPresent <= 1 {
               return
           }
           
           allCountPresent -= 1
           
      
       }
       needdmoneytLablLabfen.text = "\(allCountPresent*199)"
       
       presentcountsndLabfen.text = "\(allCountPresent)"
    }
    
    
    private var sendCidf:Int = 0
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        alllPresentFuul.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let agt = collectionView.dequeueReusableCell(withReuseIdentifier: "DUEBadPresentCell", for: indexPath) as! DUEBadPresentCell
        agt.coreGiftbgray.image = UIImage(named: alllPresentFuul[indexPath.row])
        
        return agt
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        sendCidf = indexPath.row
    }
    private var alllPresentFuul = ["present_0DUE",
                           "present_1DUE",
                           "present_2DUE",
                           "present_3DUE",
                           "present_4DUE",
                           "present_5DUE",
                           "present_6DUE",
                           "present_7DUE",
                           "present_8DUE",
                           "present_9DUE",
                           "present_10DUE",
                           "present_11DUE",
                           "present_12DUE",
                           "present_13DUE",
                           "present_14DUE"
      ]
    


      var deflay:DUEIPGiftpeilCotnollerdelegae?
    
    private  var dafenibu:UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let IOsh = UICollectionViewFlowLayout.init()
        IOsh.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 24 - 24)/3 , height: 100)
        IOsh.minimumLineSpacing = 8
        IOsh.minimumInteritemSpacing = 8
        
        IOsh.scrollDirection = .vertical
       
        dafenibu = UICollectionView(frame: .zero, collectionViewLayout: IOsh)
        dafenibu?.collectionViewLayout = IOsh
        dafenibu?.backgroundColor = .clear
        dafenibu?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        dafenibu?.delegate = self
        dafenibu?.dataSource = self
        dafenibu?.register(DUEBadPresentCell.self, forCellWithReuseIdentifier: "DUEBadPresentCell")
        
        dafenibu?.selectItem(at: IndexPath.init(row: 0, section: 0), animated: true, scrollPosition: .top)
        
        dafenibu?.showsVerticalScrollIndicator = false
        
        self.view.backgroundColor = .clear
        
        
        
        remixChallengeParameters()
        
       
    }
    
    
    
    private func remixChallengeParameters()  {
        let oksjiop = UIView.init()
        oksjiop.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        oksjiop.layer.cornerRadius = 24
        oksjiop.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        view.addSubview(oksjiop)
        oksjiop.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(382 + 240)
        }
        oksjiop.addSubview(self.dismissburreongDecrea)
        dismissburreongDecrea.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.trailing.equalToSuperview().inset(12)
            make.top.equalToSuperview().offset(6)
        }
        oksjiop.addSubview(dafenibu!)
        dafenibu?.snp.makeConstraints({ make in
            make.left.right.equalToSuperview().inset(12)
            make.top.equalToSuperview().offset(16 + 30)
            make.height.equalTo(210 + 240)
        })
        
        let diomentftbgray = UIImageView(image: UIImage.init(named: "diopalold"))
        
        oksjiop.addSubview(diomentftbgray)
        diomentftbgray.snp.makeConstraints { make in
            make.width.height.equalTo(20)
            make.left.equalToSuperview().offset(12)
            make.top.equalTo(dafenibu!.snp.bottom).offset(53)
        }
       
        
        
        let jid = UIImageView(image: UIImage.init(named: "btn_Give PRESENT"))
        jid.contentMode = .scaleToFill
        jid.isUserInteractionEnabled = true
        view.addSubview(jid)
        jid.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(12)
            make.width.equalTo(205)
            make.height.equalTo(36)
            make.centerY.equalTo(diomentftbgray)
        }
       
        
        
        jid.addSubview(self.dueburreongincrea)
        jid.addSubview(self.dueburreongDecrea)
        
        //减少
        dueburreongDecrea.snp.makeConstraints { make in
            make.width.equalTo(30)
            make.height.equalTo(36)
            make.leading.equalToSuperview()
            make.centerY.equalTo(jid)
        }
        jid.addSubview(presentcountsndLabfen)
        presentcountsndLabfen.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30)
            
            make.width.equalTo(30)
            make.height.top.bottom.equalToSuperview()
        }
        //增加
        dueburreongincrea.snp.makeConstraints { make in
            
            make.height.equalTo(36)
            make.width.equalTo(30)
            make.leading.equalToSuperview().offset(60)
            make.centerY.equalTo(jid)
        }
        
        jid.addSubview(surepostgDecrea)
        surepostgDecrea.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()
            make.width.equalTo(110)
        
        }
        
        
        oksjiop.addSubview(needdmoneytLablLabfen)
        needdmoneytLablLabfen.snp.makeConstraints { make in
            make.centerY.equalTo(diomentftbgray)
            make.leading.equalTo(diomentftbgray.snp.trailing).offset(5)
        }
        
        
      
    }

   

}


class DUEBadPresentCell: UICollectionViewCell {
    
    private var corebgray = UIImageView(image: UIImage.init(named: "avopiuyg"))
    
    private lazy var speendLabfen: UILabel = {
        let sfe = UILabel.init()
        sfe.text = "199"
        sfe.textColor =  UIColor(red: 0.98, green: 0.49, blue: 0.85, alpha: 1)
        sfe.textAlignment = .center
        sfe.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        return sfe
    }()
    
    private  var diomentftbgray = UIImageView(image: UIImage.init(named: "diopalold"))
    var coreGiftbgray = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        corebgray.contentMode = .scaleToFill
        coreGiftbgray.contentMode = .scaleAspectFit
        self.backgroundColor = .clear
        contentView.addSubview(corebgray)
        contentView.addSubview(coreGiftbgray)
        contentView.addSubview(speendLabfen)
        contentView.addSubview(diomentftbgray)
        
        corebgray.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        coreGiftbgray.snp.makeConstraints { make in
            make.width.height.equalTo(64)
            make.top.equalToSuperview().offset(6)
            make.centerX.equalToSuperview()
        }
        speendLabfen.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-5)
            make.top.equalTo(coreGiftbgray.snp.bottom).offset(4)
        }
        
        diomentftbgray.snp.makeConstraints { make in
            make.width.height.equalTo(12)
            make.leading.equalTo(speendLabfen.snp.trailing).offset(4)
            make.centerY.equalTo(speendLabfen)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isSelected: Bool{
        didSet{
            if isSelected {
                corebgray.image = UIImage(named: "avopiuygsel")
            }else{
                corebgray.image = UIImage(named: "avopiuyg")
            }
        }
    }
}
