//
//  LisstingPlazyComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/21.
//

import UIKit

class LisstingPlazyComin: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    private let gsdd_loadActiveViw = DrhythmPursloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    
    var changvlodeoGS:Array<UserformanceShowcase>{
        return  DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.filter { DictionGSDD in
            return DictionGSDD.gsddPodermp4path != nil
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.upfloorGSDListview {
            return DiscoveryHubALoaing.chanGSDD.loafingDaGSDD.count
        }
        return changvlodeoGS.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.upfloorGSDListview {
            let gsddCEll = collectionView.dequeueReusableCell(withReuseIdentifier: "upfloorGSDListviewCEllID", for: indexPath) as! LisstingPlazyAvtoCell
            gsddCEll.gsddAvotp.image = UIImage(named: DiscoveryHubALoaing.chanGSDD.loafingDaGSDD[indexPath.row].gsddPIav)
            return gsddCEll
        }
        
        let gsddCEll = collectionView.dequeueReusableCell(withReuseIdentifier: "defloorVbolGSDListviewID", for: indexPath) as! LisstingPlazyCiceoCell
        
        gsddCEll.PuzzleFun.image = UIImage.init(named:self.changvlodeoGS[indexPath.row].gsddPIav )
        
        gsddCEll.vioklNamenGSDD.text =  self.changvlodeoGS[indexPath.row].singAndSolve
        gsddCEll.videghuContenGS.text =  self.changvlodeoGS[indexPath.row].gsddPodercontentext
        
        gsddCEll.poinusericonGSDD.image = UIImage(named:self.changvlodeoGS[indexPath.row].gsddPIav )
        gsddCEll.useringNAmeGS.text =
        self.changvlodeoGS[indexPath.row].gsddNjmet
        
        gsddCEll.ReporitgnVieoGSDD.addTarget(self, action: #selector(harmonyHunter), for: .touchUpInside)
        gsddCEll.zanGSDD.isSelected = self.changvlodeoGS[indexPath.row].toVidreStatusGSDD
        gsddCEll.liaortyGSDD.isSelected = self.changvlodeoGS[indexPath.row].ifCollVidre
        return gsddCEll
        
    }
    
   @objc func harmonyHunter() {
        let alertGSDD = UIAlertController(
            title: AppDelegate.descBABAString(upcaseGS:"Reeypkonrctq pvbiedrenod icvovnatveynqt"),
            message: AppDelegate.descBABAString(upcaseGS:"Pzlfeiagslef xseezlfeccbtw xtjhneo qrbeaaeseoyns wfyolrh jrqeppdoxrntsidnkg"),
            preferredStyle: .actionSheet
        )
        
        // 举报选项（视频特有原因）
        let reasonsGSDD = ["Vulgar content", "blurry image quality", "copyright issues","dangerous actions"]
        reasonsGSDD.forEach { reason in
            let action = UIAlertAction(title: reason, style: .default) { _ in
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                    self.gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(AppDelegate.descBABAString(upcaseGS:"Reecqzulebsattignwgd.q.c."))
                    self.gsdd_loadActiveViw.begin_GSDDAnimating()

                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                        self.gsdd_loadActiveViw.end_GSDDAnimating()
                        let resultsullormate = AppDelegate.descBABAString(upcaseGS: "Tchpamnpkr aywocul rfnoiru tycovuqrf yahtytvegnotxibvxez tshukpaetrgvrijsmilonng.m dWxed twvizlfll fvbeurtiafeyk ttmhtes ucxognttzemnktn yapnhdr vhgarnjdxlies yiqtg kafsm bsvoyoinj cansh bpkojssshiebolke")
                        self.gsdd_loadActiveViw.showGSDDSuccess(messageGSDD: resultsullormate)
                        
                        
                    }
                }))
            }
            
            alertGSDD.addAction(action)
        }
        let quFormate = AppDelegate.descBABAString(upcaseGS: "cqadnncoexl")
      
        alertGSDD.addAction(UIAlertAction(title: quFormate, style: .cancel))
        self.present(alertGSDD, animated: true)
    }
    
    

    private  var upfloorGSDListview:UICollectionView?
    private var defloorVbolGSDListview:UICollectionView?
   
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        defloorVbolGSDListview?.reloadData()
        upfloorGSDListview?.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

         //背景
         let nameringGSDD = UIImageView(image: UIImage.init(named: "mengbanGSDD"))
         nameringGSDD.frame = self.view.bounds
         nameringGSDD.contentMode = .scaleAspectFill
         view.addSubview(nameringGSDD)
         
         
         //backutton
         let bagcloGSDD = UIButton.init(frame: CGRect.init(x:18, y: framtipStartinset, width: 30, height: 30))
         bagcloGSDD.setBackgroundImage(UIImage.init(named: "backDSGG"), for: .normal)
        
         bagcloGSDD.addTarget(self, action: #selector(bagerinOkayot), for: .touchUpInside)
     
         view.addSubview(bagcloGSDD)
        
        //takeutton
        let takeloGSDD = UIButton.init()
        takeloGSDD.setBackgroundImage(UIImage.init(named: "musicExplorer"), for: .normal)
       
        takeloGSDD.addTarget(self, action: #selector(takeinginOkayot), for: .touchUpInside)
    
        view.addSubview(takeloGSDD)
        takeloGSDD.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(17)
            make.centerY.equalTo(bagcloGSDD)
            make.width.height.equalTo(30)
            
        }
         
         
         let emionext = UILabel.init()
         emionext.text = "Listening Plaza"
         emionext.textColor = .white
         emionext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
         view.addSubview(emionext)
         emionext.snp.makeConstraints { make in
             make.centerX.equalToSuperview()
             make.centerY.equalTo(bagcloGSDD)
         }
        
        
        let floweladou = UICollectionViewFlowLayout.init()
        floweladou.scrollDirection = .horizontal
        floweladou.minimumLineSpacing = 15.x_GSDD
        floweladou.minimumInteritemSpacing = 15.x_GSDD
        floweladou.itemSize = CGSize(width: 68, height: 68)
        upfloorGSDListview = UICollectionView(frame: .zero, collectionViewLayout: floweladou)
        upfloorGSDListview?.showsHorizontalScrollIndicator = false
        upfloorGSDListview?.delegate = self
        upfloorGSDListview?.backgroundColor = .clear
        upfloorGSDListview?.dataSource = self
        upfloorGSDListview?.register(LisstingPlazyAvtoCell.self, forCellWithReuseIdentifier: "upfloorGSDListviewCEllID")
        
        view.addSubview(upfloorGSDListview!)
        upfloorGSDListview?.snp.makeConstraints({ make in
            make.height.equalTo(68)
            make.left.equalToSuperview().inset(12)
            make.right.equalToSuperview()
            make.top.equalTo(bagcloGSDD.snp.bottom).offset(29)
        })
        
        
        
        let floweladouert = UICollectionViewFlowLayout.init()
       
        floweladouert.minimumLineSpacing = 15.x_GSDD
        floweladouert.minimumInteritemSpacing = 16
        floweladouert.itemSize = CGSize(width: UIScreen.main.bounds.width - 30, height: 345)
        defloorVbolGSDListview = UICollectionView(frame: .zero, collectionViewLayout: floweladouert)
        defloorVbolGSDListview?.showsVerticalScrollIndicator = false
        defloorVbolGSDListview?.delegate = self
        defloorVbolGSDListview?.backgroundColor = .clear
        defloorVbolGSDListview?.dataSource = self
        defloorVbolGSDListview?.register(UINib.init(nibName: "LisstingPlazyCiceoCell", bundle: nil), forCellWithReuseIdentifier: "defloorVbolGSDListviewID")
        defloorVbolGSDListview?.isHidden = true
        view.addSubview(defloorVbolGSDListview!)
        defloorVbolGSDListview?.snp.makeConstraints({ make in
            make.bottom.equalToSuperview()
            
            make.left.right.equalToSuperview().inset(15)
            
            make.top.equalTo(upfloorGSDListview!.snp.bottom).offset(26)
        })
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
        let loadinftext = AppDelegate.descBABAString(upcaseGS: "liorakdiitnzgn.u.e.")
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(loadinftext)
        gsdd_loadActiveViw.begin_GSDDAnimating()

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.gsdd_loadActiveViw.end_GSDDAnimating()
            
            self.defloorVbolGSDListview?.isHidden = false
            
            
        }
    }
    
    

    @objc  func takeinginOkayot() {
        
        let takeing = BaeatBrainTeaser.init()
        
        self.navigationController?.pushViewController(takeing, animated: true
        )
    }
    
    
    @objc  func bagerinOkayot() {
        self.navigationController?.popViewController(animated: true)
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.upfloorGSDListview {
            self.navigationController?.pushViewController(AcoustthsdergtaoDComin.init(plazDeinGSDD: DiscoveryHubALoaing.chanGSDD.loafingDaGSDD[indexPath.row]), animated: true)
            return
        }
        let enterGSDDPlazin = MPlazdegtaoDComin.init(plazDeinGSDD: self.changvlodeoGS[indexPath.row])
        
        self.navigationController?.pushViewController(enterGSDDPlazin, animated: true)
        
    }
}
