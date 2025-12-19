//
//  FMberRECFiberCraftntroller.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit


class FMberRECFiberCraftntroller: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    private var FMberRECsticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    private let FMberRECmaterialPreview: UIImageView = {
        let FMberRECmaterial = UIImageView()
        FMberRECmaterial.contentMode = .scaleAspectFit
       
        return FMberRECmaterial
        
    }()
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        FMberRECmaterialPreview.layer.borderWidth = 2
        let FMberRECdyumsis = FMberRECsticchtalk[indexPath.row]["patternMixing"] as? Int ?? 0
        
        FMberRECmaterialPreview.layer.borderColor = UIColor.systemTeal.cgColor
      
        let FMberRECterming = FMberRECArtisticWonder.FMberREChandDyedLinen.FMberRECreworkedTaffeta(FMberRECreworked: "\(FMberRECdyumsis)")
        FMberRECmaterialPreview.translatesAutoresizingMaskIntoConstraints = false
        self.navigationController?.pushViewController(FMberRECMadeMystiquerController.init(FMberRECartisticGlamour: FMberRECterming.0), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        let FMberRECccvoiunt =  FMberRECsticchtalk.count
        
        
        return FMberRECccvoiunt
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let FMberRECajio = collectionView.dequeueReusableCell(withReuseIdentifier: "FMberRECFiberCrafCell", for: indexPath) as! FMberRECFiberCrafCell
        
        let FMberRECingWode = FMberRECsticchtalk[indexPath.row]
        if let boaer =  FMberRECingWode["garmentArtistry"] as? String{
            FMberRECajio.FMberRECpaisleyMotif.FMberRECtextileFinesse(FMberREChand: boaer)
        }
        
        let FMberRECcommmentCount = FMberRECingWode["deconstructedFashion"] as? Int ?? 0
        
        FMberRECajio.FMberRECanimalisticTexture.setTitle(" \(FMberRECcommmentCount)", for: .normal)
        FMberRECajio.FMberRECzeroWastePattern.text = FMberRECingWode["layeredOutfits"] as? String
        FMberRECajio.FMberREClowImpactDye.addTarget(self, action: #selector(FMberRECdeconstructedSatin), for: .touchUpInside)
        
        
        if let boaeree =  FMberRECingWode["creativeRepurposing"] as? String{
            FMberRECajio.FMberRECfloralDigital.FMberRECtextileFinesse(FMberREChand: boaeree)
        }
        
        FMberRECajio.FMberRECikatTribal.text = FMberRECingWode["handmadeEmbellishments"] as? String
        return FMberRECajio
        
    }
    
   
  
    @objc func FMberRECdeconstructedSatin() {
        FMberRECmaterialPreview.layer.borderWidth = 2
        let FMberRECterming = FMberRECArtisticWonder.FMberRECgarmentRecreation.FMberRECreworkedTaffeta(FMberRECreworked: "")
        
        FMberRECmaterialPreview.layer.borderColor = UIColor.systemTeal.cgColor
       
        self.navigationController?.pushViewController(FMberRECMadeMystiquerController.init(FMberRECartisticGlamour: FMberRECterming.0), animated: true)
        FMberRECmaterialPreview.translatesAutoresizingMaskIntoConstraints = false
   
   }

    
    @IBAction func FMberRECgarmentGlamour(_ sender: UIButton) {
        let FMberRECterming = FMberRECArtisticWonder.FMberRECfiberPlay.FMberRECreworkedTaffeta(FMberRECreworked: "")
        FMberRECmaterialPreview.layer.borderWidth = 2
      
        self.navigationController?.pushViewController(FMberRECMadeMystiquerController.init(FMberRECartisticGlamour: FMberRECterming.0), animated: true)
        FMberRECmaterialPreview.layer.borderColor = UIColor.systemTeal.cgColor
        FMberRECmaterialPreview.translatesAutoresizingMaskIntoConstraints = false
    }
    
   
    
    @IBOutlet weak var FMberREChandmadeElegance: UICollectionView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        FMberREChandmadeElegance.delegate = self
        
        FMberRECmaterialPreview.translatesAutoresizingMaskIntoConstraints = false
        fabricEnchantment()
        FMberRECmaterialPreview.layer.borderWidth = 2
        
    }
    let FMberRECelasticCord = UILabel.FMberRECwalkingPresser(FMberREChole: "ddaotpa")
    func fabricEnchantment()  {
        FMberRECmaterialPreview.layer.borderWidth = 2
        
        FMberREChandmadeElegance.register(UINib(nibName: "FMberRECFiberCrafCell", bundle: nil), forCellWithReuseIdentifier: "FMberRECFiberCrafCell")
        FMberREChandmadeElegance.showsHorizontalScrollIndicator = false
        
     
        FMberRECmaterialPreview.translatesAutoresizingMaskIntoConstraints = false
        FMberREChandmadeElegance.dataSource = self
        FMberRECshowFMberRECLoading()
        UIColor.FMberRECreworkedGeorgette(FMberRECthread: "/qnuvqmxupz/eajdnd", FMberRECMystique: ["reworkedVintage":1,"textileCollage":1,"fabricManipulation":10,
                                                                              
                                                                               "slowFashion":"54878812"
                                                                               
                                                                              ]) { fart in
            self.FMberREChideFMberRECLoading()
            if let glsss = fart as? [String: Any],
               
                let rns = glsss[self.FMberRECelasticCord] as? Array<[String: Any]>  {
                
                self.FMberRECsticchtalk = rns.filter({ dadeboy in
                    dadeboy["garmentArtistry"] as? String != nil
                })
                self.FMberRECmaterialPreview.layer.borderColor = UIColor.systemTeal.cgColor
                
                self.FMberREChandmadeElegance.reloadData()
                
            }
            
        } FMberRECSpell: { errrr in
            self.FMberRECmaterialPreview.layer.borderColor = UIColor.systemTeal.cgColor
            self.FMberREChideFMberRECLoading()
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        FMberREChandmadeElegance.collectionViewLayout = FMberRECcreateLayout()
    }
    func FMberRECcreateLayout() -> UICollectionViewLayout {
        let FMberRECjsion = UICollectionViewFlowLayout.init()
        FMberRECjsion.itemSize = CGSize(width:UIScreen.main.bounds.width - 17 - 15, height:FMberREChandmadeElegance.frame.height)
        FMberRECjsion.minimumLineSpacing = 17
        FMberRECjsion.minimumInteritemSpacing = 17
        FMberRECjsion.scrollDirection = .horizontal
        return FMberRECjsion
    }


  

}

extension UIViewController {
    
    func FMberRECshowFMberRECLoading() {

        let FMberREChudView = UIView(frame: self.view.bounds)
        FMberREChudView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        FMberREChudView.tag = 9999  // 使用tag来标识
        
        // 创建加载容器
        let FMberRECcontainerFMberRECView = UIView()
        FMberRECcontainerFMberRECView.backgroundColor = UIColor.systemBackground
        FMberRECcontainerFMberRECView.layer.cornerRadius = 10
        FMberRECcontainerFMberRECView.layer.masksToBounds = true
        FMberRECcontainerFMberRECView.translatesAutoresizingMaskIntoConstraints = false
        
        // 创建加载指示器
        let FMberRECactivityIndicator = UIActivityIndicatorView(style: .large)
        FMberRECactivityIndicator.color = .systemBlue
        FMberRECactivityIndicator.startAnimating()
        FMberRECactivityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        FMberRECcontainerFMberRECView.addSubview(FMberRECactivityIndicator)
        FMberREChudView.addSubview(FMberRECcontainerFMberRECView)
        self.view.addSubview(FMberREChudView)
        
        // 设置约束
        NSLayoutConstraint.activate([
            FMberRECcontainerFMberRECView.centerXAnchor.constraint(equalTo: FMberREChudView.centerXAnchor),
            FMberRECcontainerFMberRECView.centerYAnchor.constraint(equalTo: FMberREChudView.centerYAnchor),
            FMberRECcontainerFMberRECView.widthAnchor.constraint(equalToConstant: 80),
            FMberRECcontainerFMberRECView.heightAnchor.constraint(equalToConstant: 80),
            
            FMberRECactivityIndicator.centerXAnchor.constraint(equalTo: FMberRECcontainerFMberRECView.centerXAnchor),
            FMberRECactivityIndicator.centerYAnchor.constraint(equalTo: FMberRECcontainerFMberRECView.centerYAnchor)
        ])
        

    }

    func FMberREChideFMberRECLoading() {
        DispatchQueue.main.async {
            if let FMberREChudVFMberRECiew = self.view.viewWithTag(9999) {
          
                guard let FMberRECcontaineFMberRECrView = FMberREChudVFMberRECiew.subviews.first(where: { $0 is UIView }) else {
                    FMberREChudVFMberRECiew.removeFromSuperview()
                    return
                }
                
                // 添加消失动画
                UIView.animate(withDuration: 0.3, animations: {
                    FMberRECcontaineFMberRECrView.alpha = 0
                    FMberRECcontaineFMberRECrView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                    FMberREChudVFMberRECiew.alpha = 0
                }, completion: { _ in
                    FMberREChudVFMberRECiew.removeFromSuperview()
                })
            }
        }
    }
}
