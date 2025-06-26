//
//  BalletFusionerCotnolle.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit

class BalletFusionerCotnolle: LoavegniContrwo, UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    private var accaseDUE:DUETPEcase = .trending
    
    enum DUETPEcase {
        case trending
        case discover
        
        case following
    }
    
    //数据
    private var dueHomeData:[Dictionary<String,String>]{
        let POpsif = AppDelegate.dueAllPapa.filter { csxs in
            csxs["Due_ComuTItle"] != nil
        }
        
        if accaseDUE == .trending {
            return POpsif
        }
        
        
        if accaseDUE == .discover {
            if POpsif.count >= 2 {
                return Array(POpsif.suffix(2))
            }
            return POpsif
        }
        return Array()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dueHomeData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let due = collectionView.dequeueReusableCell(withReuseIdentifier: "CrashmStreamCell", for: indexPath) as! CrashmStreamCell
        let Adfe = dueHomeData[indexPath.row]
        if let aos = Adfe["Due_ComuPic"]?.components(separatedBy: "^").first {
            due.dueLiveCoverimageview.image = UIImage(named: aos)
        }
        
        
        due.avterDUE.tag = indexPath.row
        due.avterDUE.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(inserbuttone(tapsender:))))
    
        
        due.avterDUE.image = UIImage(named: dueHomeData[indexPath.row]["Due_avmter"] ?? "")
        
        due.namertlbel.text = dueHomeData[indexPath.row]["Due_Nopme"] ?? ""
        
        due.LiabeTitle.text = dueHomeData[indexPath.row]["Due_ComuTItle"] ?? ""
        
     
        return due
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let Adfe = dueHomeData[indexPath.row]
        let deaiurf = IPkdanDydetailCotnoller.init(duerDic: Adfe)
        self.navigationController?.pushViewController(deaiurf, animated: true)
        
    }

    
    @objc func inserbuttone(tapsender: UITapGestureRecognizer) {
       let tap = tapsender.view?.tag ?? 0
       let dex = dueHomeData[tap]
        let alertvf = CChieCenterCotnoer.init(dfoloower: dex)
        
        self.navigationController?.pushViewController(alertvf, animated: true)
    }
    
    @IBAction func adjustDatacataru(_ sender: UIButton) {
        let buif = view.viewWithTag(10) as? UIButton
        let buif1 = view.viewWithTag(20) as? UIButton
        let buif2 = view.viewWithTag(30) as? UIButton
        buif?.isSelected = false
        buif1?.isSelected = false
        buif2?.isSelected = false
        sender.isSelected = true
        if sender.tag == 10 {
            accaseDUE = .trending
            
        }
        
        if sender.tag == 20 {
            accaseDUE = .discover
        }
        
        
        if sender.tag == 30 {
            accaseDUE = .following
        }
        
       
        loadingindication()
    }
    
    
    @IBOutlet weak var mesageKFoig: UIImageView!
    
    private func loadingindication()  {
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            self.mainDUEDtartgerVire.isHidden = false
            self.defautedinft.stopAnimating()
            self.mainDUEDtartgerVire.reloadData()
        }))
        
    }
    
    @IBOutlet weak var mainDUEDtartgerVire: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout.init()
        layout.minimumLineSpacing = 12
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 324)
        layout.minimumInteritemSpacing = 12
        layout.scrollDirection = .vertical
        
        mesageKFoig.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Jfoforing)))
        mainDUEDtartgerVire.collectionViewLayout = layout
        self.amplifyStagePresence()
        mainDUEDtartgerVire.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
      
        
        projectMotionHologram()
        
        mainDUEDtartgerVire.showsVerticalScrollIndicator = false
        self.mainDUEDtartgerVire.isHidden = true
        
        
        loadingindication()
        
    }


    @objc func refreshinggindication()  {
        self.mainDUEDtartgerVire.reloadData()
    }
    
    
    
    func projectMotionHologram()  {
        self.view.addSubview(self.defautedinft)
        NotificationCenter.default.addObserver(self, selector: #selector(refreshinggindication), name: .contentBlocked, object: nil)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    
    
   @objc func Jfoforing()  {
       self.navigationController?.pushViewController(IVListforYnCotnoler.init(), animated: true)
    }
    private func amplifyStagePresence(){
        mainDUEDtartgerVire.delegate = self
        mainDUEDtartgerVire.dataSource = self
        mainDUEDtartgerVire.register(UINib(nibName: "CrashmStreamCell", bundle: nil), forCellWithReuseIdentifier: "CrashmStreamCell")
        
    }
    
    @IBAction func aDinasubij(_ sender: Any) {
        
        self.navigationController?.pushViewController(IVMixLabYnCotnoler.init(), animated: true)
    }
    

}
