//
//  FMberRECStitchTalkntroller.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

struct FMberRECPatternChallenge {
       let theme: String
       let durationDays: Int
       var submissions: [FMberRECThreadPost]
   }
class FMberRECStitchTalkntroller: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout, FMberRECMaBottomUHEgydelegate, FMberRECThriftFlipViewdelegate{
    func FMberRECSidu() {
        FMberRECdareplaure()
    }
    
    func FMberRECdareplaure() {
        FMberRECbeforeImageView.contentMode = .scaleAspectFit
       
        let terming = FMberRECArtisticWonder.FMberRECgarmentRecreation.FMberRECreworkedTaffeta(FMberRECreworked: "")
        FMberRECbeforeImageView.clipsToBounds = true
       
        self.navigationController?.pushViewController(FMberRECMadeMystiquerController.init(FMberRECartisticGlamour: terming.0), animated: true)
        FMberRECbeforeImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private let FMberRECtechniquesLabel: UILabel = {
           
        let FMberRECtechniqu = UILabel()
        
        FMberRECtechniqu.translatesAutoresizingMaskIntoConstraints = false
        return FMberRECtechniqu
       
    }()
    func FMberRECcuffBarrelKnowedge(FMberRECdi: Int) {
        //知识
        FMberRECbeforeImageView.contentMode = .scaleAspectFit
       
        let terming = FMberRECArtisticWonder.FMberRECgarmentSpell.FMberRECreworkedTaffeta(FMberRECreworked: "\(FMberRECdi)")
        FMberRECbeforeImageView.clipsToBounds = true
      
        self.navigationController?.pushViewController(FMberRECMadeMystiquerController.init(FMberRECartisticGlamour: terming.0), animated: true)
        FMberRECbeforeImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private let FMberRECbeforeImageView: UIImageView = {
        let beforeImage = UIImageView()
      
        beforeImage.layer.cornerRadius = 8
       
        return beforeImage
        
    }()
    
    
    func FMberRECcuffBarrel(FMberRECdi: Int) {
        
        FMberRECtechniquesLabel.font = UIFont(name: "Avenir-Medium", size: 14)
        
        let FMberRECterming = FMberRECArtisticWonder.FMberRECtextileCharm.FMberRECreworkedTaffeta(FMberRECreworked: "\(FMberRECdi)")
        FMberRECtechniquesLabel.textColor = .systemGray
      
        self.navigationController?.pushViewController(FMberRECMadeMystiquerController.init(FMberRECartisticGlamour: FMberRECterming.0), animated: true)
        FMberRECtechniquesLabel.numberOfLines = 0
    }
    
    var FMberRECrecorireusehead:FMberRECThriftFlipView?
    
    var FMberRECsticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()//cha香薰
    
    var FMberRECknowedgealk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()//
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 327)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind ==  UICollectionView.elementKindSectionHeader{
            let FMberRECvvrsdsd = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FMberRECThriftFlipView", for: indexPath)  as! FMberRECThriftFlipView
            FMberRECvvrsdsd.FMberRECstickTalkAI.addTarget(self, action: #selector(FMberRECasTAlk), for: .touchUpInside)
            FMberRECvvrsdsd.FMberRECtalk = self
            
            self.FMberRECrecorireusehead = FMberRECvvrsdsd
            
            return FMberRECvvrsdsd
        }
        return UICollectionReusableView()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let FMberRECmaing = collectionView.dequeueReusableCell(withReuseIdentifier: "MaBottomUHEgy", for: indexPath) as! FMberRECMaBottomUHEgy
        FMberRECmaing.FMberRECsticchtalk = self.FMberRECknowedgealk
        FMberRECmaing.FMberRECtalk = self
        
        return FMberRECmaing
        
    }
    

   @objc func FMberRECasTAlk()  {
        let terming = FMberRECArtisticWonder.FMberRECreclaimedGeorgette.FMberRECreworkedTaffeta(FMberRECreworked: "")
        
       self.navigationController?.pushViewController(FMberRECMadeMystiquerController.init(FMberRECartisticGlamour: terming.0), animated: true)
    }
  
    @IBOutlet weak var FMberRECfiberGlamour: UICollectionView!
    
    
    
    
    func FMberRECphotographicPrint()  {
        FMberRECfiberGlamour.dataSource = self
        FMberRECbeforeImageView.contentMode = .scaleAspectFit
        
        FMberRECfiberGlamour.register(UINib.init(nibName: "FMberRECThriftFlipView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FMberRECThriftFlipView")
        FMberRECbeforeImageView.clipsToBounds = true
       
        FMberRECfiberGlamour.register(FMberRECMaBottomUHEgy.self, forCellWithReuseIdentifier: "MaBottomUHEgy")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FMberRECphotographicPrint() 
        FMberRECfiberGlamour.collectionViewLayout = FMberRECcreateLayout()
        FMberRECfiberGlamour.showsHorizontalScrollIndicator = false
        

        FMberRECfiberGlamour.showsHorizontalScrollIndicator = false
        
        FMberRECfiberGlamour.delegate = self
        
        FMberRECauthenticateUser()
    }
    
    func FMberRECcreateLayout() -> UICollectionViewLayout {
        let FMberRECjsion = UICollectionViewFlowLayout.init()
        FMberRECjsion.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 422)
        FMberRECjsion.minimumLineSpacing = 0
        FMberRECjsion.minimumInteritemSpacing = 0
        FMberRECjsion.scrollDirection = .vertical
        return FMberRECjsion
    }

    let FMberRECelasticCord = UILabel.FMberRECwalkingPresser(FMberREChole: "ddaotpa")
    
    private func FMberRECauthenticateUser() {
        self.FMberRECshowFMberRECLoading()
        FMberRECbeforeImageView.translatesAutoresizingMaskIntoConstraints = false
        let FMberRECtexfio = UITextField.init()
        FMberRECtexfio.layer.cornerRadius = 1
        
        UIColor.FMberRECreworkedGeorgette(FMberRECthread: "/qnuvqmxupz/eajdnd", FMberRECMystique: ["textileCollage":1,"fabricManipulation":10,
                                                                               "wearableArt":2,
                                                                                        "reworkedVintage":5,
                                                                                        "slowFashion":"54878812"
                                                                                       
                                                                                       ]) { fart in
            FMberRECtexfio.text = "Enter nowing...."
            FMberRECtexfio.placeholder = "entwr"
            self.FMberREChideFMberRECLoading()
            if let FMberRECglsss = fart as? [String: Any],FMberRECtexfio.text?.count ?? 0 > 0,
                              
                let rns = FMberRECglsss[self.FMberRECelasticCord] as? Array<[String: Any]>  {
                FMberRECtexfio.textColor = .white
                self.FMberRECrecorireusehead?.FMberRECsticchtalk = rns
                FMberRECtexfio.borderStyle = .bezel
                self.FMberRECrecorireusehead?.FMberRECshareingUserView.reloadData()
            }
            
        } FMberRECSpell: { errrr in
            FMberRECtexfio.textColor = .white
            self.FMberREChideFMberRECLoading()
        }
        
        
        UIColor.FMberRECreworkedGeorgette(FMberRECthread: "/qnuvqmxupz/eajdnd", FMberRECMystique: ["textileCollage":1,"fabricManipulation":10,
                                                                                        "reworkedVintage":4,
                                                                                        "slowFashion":"54878812"
                                                                                       
                                                                                       ]) { fart in
            
            FMberRECtexfio.text = "Enter nowing...."
            FMberRECtexfio.placeholder = "entwr"
            if let glsss = fart as? [String: Any],FMberRECtexfio.text?.count ?? 0 > 0,
                              
                let rns = glsss[self.FMberRECelasticCord] as? Array<[String: Any]>  {
                FMberRECtexfio.borderStyle = .bezel
                self.FMberRECknowedgealk = rns
                FMberRECtexfio.textColor = .white
                self.FMberRECfiberGlamour.reloadData()
            }
            
        } FMberRECSpell: { errrr in
            self.FMberREChideFMberRECLoading()
        }

    }
    
}
