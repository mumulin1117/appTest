//
//  CRETEMCMOASleepHavenController.swift
//  Nurmiaofd
//
//  Created by Nurmiaofd on 2025/6/17.
//

import UIKit

class CRETEMCMOASleepHavenController: CRETEMCMOASacalNulriamControler {
    private let parasympatheticCanvas: UIView = {
            
        let view = UIView()
        
        view.layer.cornerRadius = 16
   
        return view
       
    }()
    
    private  var CRETEMCMOAactiveDatre:Array<CRETEMCMOAMindfulSerenity>  = Array<CRETEMCMOAMindfulSerenity>()
    
    @IBOutlet weak var pureSounds: UICollectionView!
    
    @IBOutlet weak var drawingSounds: UIButton!
    
    @IBOutlet weak var craftingSounds: UIButton!
    
    
    @IBOutlet weak var distractionFree: UIButton!
    

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CRETEMCMOAcorticalActivityIndicator.center = self.view.center
        let lauio = UICollectionViewFlowLayout.init()
        parasympatheticCanvas.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.92, alpha: 1)
        lauio.minimumLineSpacing = 20
        parasympatheticCanvas.layer.borderWidth = 1
       
        lauio.minimumInteritemSpacing = 20
        parasympatheticCanvas.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.92, alpha: 1)
        lauio.scrollDirection = .vertical
        parasympatheticCanvas.layer.borderColor = UIColor(white: 0.9, alpha: 1).cgColor
       
        lauio.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 352)
        parasympatheticCanvas.translatesAutoresizingMaskIntoConstraints = false
        pureSounds.showsVerticalScrollIndicator = false
        CRETEMCMOAconfigureAutonomicInterface()
        CRETEMCMOAcurrentCoherence()
        pureSounds.collectionViewLayout = lauio
        self.view.addSubview(CRETEMCMOAcorticalActivityIndicator)
        
        CRETEMCMOAUIoshPrefresh(CRETEMCMOAtaignmy:1)
    }
    
    private func CRETEMCMOAcurrentCoherence()  {
        pureSounds.dataSource = self
        CRETEMCMOAcorticalActivityIndicator.center = self.view.center
        pureSounds.register(UINib(nibName: "CRETEMCMOASleepHavenCell", bundle: nil), forCellWithReuseIdentifier: "CRETEMCMOASleepHavenCell")
    }
    
    
    private func CRETEMCMOAconfigureAutonomicInterface()  {
        pureSounds.backgroundColor = .clear
        CRETEMCMOAcorticalActivityIndicator.center = self.view.center
        pureSounds.delegate = self
    }
    
    func CRETEMCMOAUIoshPrefresh(CRETEMCMOAtaignmy:Int)  {
        self.CRETEMCMOAcorticalActivityIndicator.startAnimating()
        var minimumValu = [
           
            "visualTriggers":1,
            "threeDimensional":CRETEMCMOAtaignmy
        ] as [String : Any]
        
        minimumValu["audioVisual"] = 21
        
        minimumValu["immersive"] = CreatorUserlicell.sonicFrequencyID
        
        let OIAn = "/sndkccgzfctdxdz/xyadanwmayz"
        
        
        CRETEMCMOASleepHavenCell.triggerTemporalLobeStimulation(dredrejao:"immersiveExperience",
                                                      yeliakoFLayPath:false,
            auditoryCortexPath: OIAn,
            dendriticResponse: minimumValu,
            synapticPotential: { [weak self] response in
                
                self?.CRETEMCMOAhandleNeurotransmitterResponse(response, CRETEMCMOAtagint: 1)
            },
            neuralFeedback: { [weak self] error in
                self?.CRETEMCMOAcorticalActivityIndicator.stopAnimating()
            }
        )
    }
    private func CRETEMCMOAhandleNeurotransmitterResponse(_ corticalData: Any?,CRETEMCMOAtagint:Int) {
        CRETEMCMOAcorticalActivityIndicator.stopAnimating()
        
        
        guard let neuralMap = corticalData as? [String: Any],
              let authRest = neuralMap[CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "dlaxtka")] as? Array<Dictionary<String,Any>>
        else {
            
            return
        }
        if CRETEMCMOAtagint == 1 {
            self.CRETEMCMOAactiveDatre = authRest.map({ tru in
                CRETEMCMOAMindfulSerenity.init(activeDatre: tru)
            })
            self.pureSounds.reloadData()
        }
        
      
    }
    @IBAction func focusedListening(_ sender: Any) {
        self.navigationController?.pushViewController(CRETEMCMOAgoptimController.init(arpeggiatorPro: (UIViewController.CRETEMCMOASoundNavigationPath.CRETEMCMOASlowBliss,"")), animated: true)
    }
    
    private let CRETEMCMOAhrvGraphView: CRETEMCMOBiofeedbackGraph = {
        let graph = CRETEMCMOBiofeedbackGraph(frame: .zero)
        graph.primaryColor = UIColor(red: 0.3, green: 0.5, blue: 0.8, alpha: 1)
        graph.translatesAutoresizingMaskIntoConstraints = false
        return graph
        
    }()
    @IBAction func stressHormones(_ sender: UIButton) {
        let currentPhase = UIView()
              
        
        
        if sender ==  drawingSounds{
            currentPhase.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
            currentPhase.layer.cornerRadius = 20
            CRETEMCMOAVdfuiep(CRETEMCMOAethse:(true,false,false))
            CRETEMCMOAUIoshPrefresh(CRETEMCMOAtaignmy:1)
        }
        
        if sender ==  craftingSounds{
            currentPhase.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
            currentPhase.layer.cornerRadius = 20
           
            CRETEMCMOAVdfuiep(CRETEMCMOAethse:(false,true,false))
            CRETEMCMOAUIoshPrefresh(CRETEMCMOAtaignmy:3)
        }
        
        if sender ==  distractionFree{
            currentPhase.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
            currentPhase.layer.cornerRadius = 20
         
            CRETEMCMOAVdfuiep(CRETEMCMOAethse:(false,false,true))
            CRETEMCMOAUIoshPrefresh(CRETEMCMOAtaignmy:2)
        }
        
        if sender.tag == 23434534 {
            self.view.addSubview(currentPhase)
        }
        
    }
    
  
    private let CRETEMCMOApacingCircle: UIView = {
           let view = UIView()
        
           view.layer.cornerRadius = 20
           return view
      
    }()
       
    enum BreathingPhase {
           case inhalation
           case exhalation
       }
    
    func CRETEMCMOAVdfuiep(CRETEMCMOAethse:(Bool,Bool,Bool))  {
        drawingSounds.isSelected = CRETEMCMOAethse.0
        craftingSounds.isSelected = CRETEMCMOAethse.1
        CRETEMCMOApacingCircle.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.9, alpha: 1)
        distractionFree.isSelected = CRETEMCMOAethse.2
    }
}


extension CRETEMCMOASleepHavenController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        CRETEMCMOAactiveDatre.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let KoaiCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CRETEMCMOASleepHavenCell", for: indexPath) as! CRETEMCMOASleepHavenCell
        KoaiCell.tone = CRETEMCMOAactiveDatre[indexPath.row]
        KoaiCell.fabricSounds.addTarget(self, action: #selector(anxietyReduction), for: .touchUpInside)
        KoaiCell.topoFij.tag = indexPath.row
        KoaiCell.topoFij.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( environmental(CanllINto:))))
        return KoaiCell
        
    }
    
    private func configurePacerInterface() {
        self.view.addSubview(CRETEMCMOApacingCircle)
            
        CRETEMCMOApacingCircle.frame = CGRect(x: 80, y: 10, width: 40, height: 40)
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if  let peaceful = CRETEMCMOAactiveDatre[indexPath.row].activeDatre["meditation"] as? Int {
            self.navigationController?.pushViewController(CRETEMCMOAgoptimController.init(arpeggiatorPro: (UIViewController.CRETEMCMOASoundNavigationPath.CRETEMCMOASoothingBliss,  "\(peaceful)")), animated: true)
        }
    }
    
    @objc func anxietyReduction()  {
        self.navigationController?.pushViewController(CRETEMCMOAgoptimController.init(arpeggiatorPro: (UIViewController.CRETEMCMOASoundNavigationPath.CRETEMCMOAPeacefulSerenity,"")), animated: true)
    }
    func CRETEMCMOAstopPacing() {
        
        CRETEMCMOApacingCircle.layer.removeAllAnimations()
        
    }
        
    @objc func environmental(CanllINto:UITapGestureRecognizer)  {
        if  let peaceful = CRETEMCMOAactiveDatre[CanllINto.view?.tag ?? 0].activeDatre["sleepAid"] as? String {
           self.navigationController?.pushViewController(CRETEMCMOAgoptimController.init(arpeggiatorPro: (UIViewController.CRETEMCMOASoundNavigationPath.CRETEMCMOAHealingArtistryView, "\(peaceful)&CallVideo=1")), animated: true)
       }
    }
    
}
