//
//  CRETEMCMOATingleCtyController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class CRETEMCMOATingleCtyController: CRETEMCMOASacalNulriamControler,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var mindfulness: UICollectionView!
    private let switchCRETEMCMOABackground: UIView = {
        let view = UIView(frame: .zero)
        
        view.layer.cornerRadius = 16
       
        return view
        
    }()
    
    @IBOutlet weak var CRETEMCMOArecent: UILabel!
    
    @IBOutlet weak var travelMoonCRETEMCMOA: UIImageView!
    
    @IBOutlet weak var travelTitleCRETEMCMOA: UILabel!
    
    
    static var BrushingAidsCRETEMCMOA :Array<CRETEMCMOAMindfulSerenity > = Array<CRETEMCMOAMindfulSerenity >()
    
    
    @IBOutlet weak var ambientNoiseCRETEMCMOA: UICollectionView!
    
    
    @IBOutlet weak var recentMeasgCRETEMCMOA: UILabel!
    func unwindingCRETEMCMOA()  {
        CRETEMCMOArecent.text = "💬" + CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "Rfeycyejnbt")
        mindfulness.showsHorizontalScrollIndicator = false
        switchCRETEMCMOABackground.backgroundColor = UIColor(white: 0.95, alpha: 1)
        mindfulness.delegate = self
        mindfulness.dataSource = self
        
        recentMeasgCRETEMCMOA.text =  CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "njou nrbedcceinttg fmjewsasfaygte")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        mindfulness.backgroundColor = .clear
        let lauio = UICollectionViewFlowLayout.init()
        lauio.minimumLineSpacing = 10
        switchCRETEMCMOABackground.translatesAutoresizingMaskIntoConstraints = false
        lauio.minimumInteritemSpacing = 10
        
        if self.view.frame.width == 1 {
            switchCRETEMCMOABackground.addSubview(switchThumbCRETEMCMOA)
        }
        lauio.scrollDirection = .horizontal
        lauio.itemSize = CGSize.init(width: 138, height: 59)
        unwindingCRETEMCMOA()
        mindfulness.register(UINib(nibName: "CRETEMCMOATingleComUserCell", bundle: nil), forCellWithReuseIdentifier: "CRETEMCMOATingleComUserCell")
        mindfulness.collectionViewLayout = lauio
        
        CRETEMCMOAcorticalActivityIndicator.center = self.view.center
        
        neurologicalResponseCRETEMCMOA()
        
    }
    
    private let switchThumbCRETEMCMOA: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    func neurologicalResponseCRETEMCMOA() {
        let lauio1 = UICollectionViewFlowLayout.init()
        lauio1.minimumLineSpacing = 10
        lauio1.minimumInteritemSpacing = 10
        
        if self.view.frame.width == 1 {
            self.view.addSubview(switchCRETEMCMOABackground)
        }
        
        
        
        
        lauio1.scrollDirection = .vertical
        lauio1.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 80)
        ambientNoiseCRETEMCMOA.showsHorizontalScrollIndicator = false
        ambientNoiseCRETEMCMOA.backgroundColor = .clear
        audioEnhancementCRETEMCMOA()
        ambientNoiseCRETEMCMOA.collectionViewLayout = lauio1
        self.view.addSubview(CRETEMCMOAcorticalActivityIndicator)
    }
    
    func audioEnhancementCRETEMCMOA()  {
        ambientNoiseCRETEMCMOA.delegate = self
        ambientNoiseCRETEMCMOA.dataSource = self
        ambientNoiseCRETEMCMOA.register(UINib(nibName: "CRETEMCMOARecentmeageUserCell", bundle: nil), forCellWithReuseIdentifier: "CRETEMCMOARecentmeageUserCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TrehuiForinCRETEMCMOA()
    }
    var SleepAids :Array<Dictionary<String,Any> > = Array<Dictionary<String,Any> >()
    
    
    func TrehuiForinCRETEMCMOA()  {
        switchThumbCRETEMCMOA.layer.cornerRadius = 13
        switchThumbCRETEMCMOA.layer.shadowRadius = 2
        switchThumbCRETEMCMOA.layer.shadowOpacity = 0.2
        self.CRETEMCMOAcorticalActivityIndicator.startAnimating()
        let ger = "/cefodfttfxz/ajuwzajyxu"
        switchCRETEMCMOABackground.translatesAutoresizingMaskIntoConstraints = false
        CRETEMCMOASleepHavenCell.triggerTemporalLobeStimulation(dredrejao:"immersiveExperience",
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: ger,
            dendriticResponse: [
                
                "slowSpeech": CreatorUserlicell.sonicFrequencyID
            ],
            synapticPotential: { [weak self] response in
                self?.switchCRETEMCMOABackground.translatesAutoresizingMaskIntoConstraints = false
                self?.CRETEMCMOAhandleNeurotransmitterResponse(response, CRETEMCMOAtagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.switchCRETEMCMOABackground.translatesAutoresizingMaskIntoConstraints = false
                self?.CRETEMCMOAcorticalActivityIndicator.stopAnimating()
            }
        )
    }
    
    private func CRETEMCMOAhandleNeurotransmitterResponse(_ corticalData: Any?,CRETEMCMOAtagint:Int) {
        CRETEMCMOAcorticalActivityIndicator.stopAnimating()
        
        
        guard let neuralMap = corticalData as? [String: Any],
              let authRest = neuralMap[CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "dealtsa")] as? Array<Dictionary<String,Any>>
        else {
            
            return
        }
        if CRETEMCMOAtagint == 1 {
            self.SleepAids = authRest.compactMap { item in
                
                let dic = (item["lightTriggers"] as? [[String: Any]])?.first ?? [:]
                return dic
            }
            self.ambientNoiseCRETEMCMOA.reloadData()
            
            if self.SleepAids.count == 0 {
                travelMoonCRETEMCMOA.isHidden = false
                travelTitleCRETEMCMOA.isHidden = false
            }else{
                travelMoonCRETEMCMOA.isHidden = true
                travelTitleCRETEMCMOA.isHidden = true
            }
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == mindfulness {
            return CRETEMCMOATingleCtyController.BrushingAidsCRETEMCMOA.count
        }
        return SleepAids.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == mindfulness {
            let DelicateTriggersCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CRETEMCMOATingleComUserCell", for: indexPath) as! CRETEMCMOATingleComUserCell
            DelicateTriggersCell.tone = CRETEMCMOATingleCtyController.BrushingAidsCRETEMCMOA[indexPath.row]
            return DelicateTriggersCell
        }
        let DelicateTriggersCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CRETEMCMOARecentmeageUserCell", for: indexPath) as! CRETEMCMOARecentmeageUserCell
        DelicateTriggersCell.tone = SleepAids[indexPath.row]
        DelicateTriggersCell.ceramicSounds.isUserInteractionEnabled = true
        DelicateTriggersCell.ceramicSounds.tag = indexPath.row
        DelicateTriggersCell.ceramicSounds.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(CRETEMCMOAenvironmental(CRETEMCMOACanllINto:))))
        return DelicateTriggersCell
        
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switchThumbCRETEMCMOA.layer.cornerRadius = 13
       
        if collectionView == mindfulness {
            if  let peaceful = CRETEMCMOATingleCtyController.BrushingAidsCRETEMCMOA[indexPath.row].activeDatre["tingling"] as? Int {
                self.navigationController?.pushViewController(CRETEMCMOAgoptimController.init(arpeggiatorPro: (UIViewController.CRETEMCMOASoundNavigationPath.CRETEMCMOAHealingArtistryView, "\(peaceful)")), animated: true)
            }
            switchThumbCRETEMCMOA.layer.shadowRadius = 2
            switchThumbCRETEMCMOA.layer.shadowOpacity = 0.2
            return
        }
        mindfulness.showsHorizontalScrollIndicator = false
        
        if  let peaceful = SleepAids[indexPath.row]["earCleaning"] as? Int {
            switchThumbCRETEMCMOA.layer.shadowRadius = 2
            switchThumbCRETEMCMOA.layer.shadowOpacity = 0.2
            self.navigationController?.pushViewController(CRETEMCMOAgoptimController.init(arpeggiatorPro: (UIViewController.CRETEMCMOASoundNavigationPath.CRETEMCMOAwhisperConnection,  "\(peaceful)")), animated: true)
        }
    }
    
    
    @objc func CRETEMCMOAenvironmental(CRETEMCMOACanllINto:UITapGestureRecognizer)  {
        mindfulness.showsHorizontalScrollIndicator = false
        if  let peaceful = SleepAids[CRETEMCMOACanllINto.view?.tag ?? 0]["earCleaning"] as? Int {
            switchThumbCRETEMCMOA.layer.shadowRadius = 2
            switchThumbCRETEMCMOA.layer.shadowOpacity = 0.2
            self.navigationController?.pushViewController(CRETEMCMOAgoptimController.init(arpeggiatorPro: (UIViewController.CRETEMCMOASoundNavigationPath.CRETEMCMOAHealingArtistryView, "\(peaceful)" + CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "&nCzablqltVviideejob=x1"))), animated: true)
       }
    }
}
