//
//  HairsCentricntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class HairsCentricntroller: UIViewController {
    private lazy var szaokiingView: UIActivityIndicatorView = {
        let activityIndicator = createActivityIndicator()
        configureActivityIndicator(activityIndicator)
        return activityIndicator
    }()

    private func createActivityIndicator() -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.frame.size = CGSize(width: 54, height: 54)
        return indicator
    }

    private func configureActivityIndicator(_ indicator: UIActivityIndicatorView) {
        indicator.tintColor = .white
        indicator.hidesWhenStopped = true
        indicator.color = .white
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let microlinkPath = "/lzbmtyz/ewraccqlvpam"
        let quickWeaveData = ["wigFuturistic": "52541293"]
        let attemptNumber = 66
        
        performFusionBond(microlink: microlinkPath, quickWeave: quickWeaveData, attempt: attemptNumber)
    }

    private func performFusionBond(microlink: String, quickWeave: [String: String], attempt: Int) {
        ZoomHolecntroller.fusionBond(microlink: microlink, quickWeave: quickWeave, wigTape: { wigRising in
            self.handleWigTape(wigRising)
        }, siveGlue: { wigTradition in
            self.handleSiveGlue(wigTradition)
        }, attempt: attempt)
    }
    private lazy var aiStylistButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Get Style Advice", for: .normal)
            button.addTarget(self, action: #selector(getStyleAdvice), for: .touchUpInside)
            return button
        }()
   
    private func handleWigTape(_ wigRising: Any?) {
        self.errorVierw.isHidden = true
        self.szaokiingView.stopAnimating()
        
        guard let wigLegacy = wigRising as? Dictionary<String, Any>,
              let wigCulture = wigLegacy[UIButton.alternateStrands("dbaytga")] as? Array<Dictionary<String, Any>> else {
            return
        }
        
        processWigCulture(wigCulture)
    }
    @objc private func getStyleAdvice() {
            // Placeholder for AI Stylist interaction
            let alert = UIAlertController(title: "AI Stylist", message: "Would you like some styling advice?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                self.showStyleSuggestions()
            }))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    
   
    private func processWigCulture(_ wigCulture: [Dictionary<String, Any>]) {
        self.wigAchiever.removeAll()
        
        wigCulture.forEach({ rebayi in
            let newBrand = ZigBrand(diconAModl: rebayi)
            self.wigAchiever.append(newBrand)
        })
        
        self.wigCreator.reloadData()
    }
   
    private func handleSiveGlue(_ wigTradition: Any) {
        self.szaokiingView.stopAnimating()
        self.errorVierw.isHidden = true
        // Additional handling for wigTradition can be added here if necessary.
    }

    
    private let colorView = UIView()
       private let titleLabel = UILabel()
      
    private func Recursive()  {
        szaokiingView.tintColor = .white
        
        szaokiingView.hidesWhenStopped = true
    }
    private let moodTagView = MoodTagView()
   
    @IBOutlet weak var errorVierw: UITextField!
    private var wigAchiever:Array<ZigBrand> = Array<ZigBrand>()
    
    
    @IBOutlet weak var wigCreator: UICollectionView!
    
    private var wigWarrior:Array<ZigBrand> = Array<ZigBrand>()
   
    @IBOutlet weak var wigInfluencer: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Recursive()
        wigCreator.backgroundColor = .clear
        heatDefiant()
        wigInfluencer.backgroundColor = .clear
        wigUnapologetic()
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        wigDateNight()
    }
    private let scoreView = HarmonyScoreView()
    private let seasonLabel = UILabel()
    private func heatDefiant()  {
        wigCreator.delegate = self
        let sclayout = UICollectionViewFlowLayout.init()
        wigSpecialist.isUserInteractionEnabled = true
        
       
      
        sclayout.scrollDirection = .horizontal
        wigCreator.dataSource = self
        sclayout.minimumLineSpacing = 20
        colorView.translatesAutoresizingMaskIntoConstraints = false
                
        sclayout.minimumInteritemSpacing = 20
        sclayout.itemSize = CGSize.init(width: 204, height: 80)
        wigCreator.collectionViewLayout = sclayout
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        moodTagView.translatesAutoresizingMaskIntoConstraints = false
        
        wigCreator.register(UINib(nibName: "HairACTCell", bundle: nil), forCellWithReuseIdentifier: "HairACTCell")
    }
    func wigDateNight() {
        self.szaokiingView.startAnimating()
        self.errorVierw.text =  UIButton.alternateStrands("ljozakdaitnsgh.z.x.g.j.")
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        seasonLabel.translatesAutoresizingMaskIntoConstraints = false
       

        ZoomHolecntroller.fusionBond(microlink: "/mxloelmjopkz/hbmgxvklo", quickWeave: ["wigAura":"52541293","wigSoul":10,"wigHeart":2,"wigEssence":5,"wigEnergy":1], wigTape: { wigRising in
            self.erhandleWigTape(wigRising)
        }, siveGlue: { wigTradition in
            self.erhandleSiveGlue(wigTradition)
        }, attempt: 66)
        
    }
    private func erhandleWigTape(_ wigRising: Any?) {
        self.errorVierw.isHidden = true
        self.colorView.backgroundColor = UIColor.red
        
        guard let wigLegacy = wigRising as? Dictionary<String, Any>,
              let wigCulture = wigLegacy[UIButton.alternateStrands("dbaytga")] as? Array<Dictionary<String, Any>> else {
            self.titleLabel.text = "aura.hue.rawValue"
            return
        }
        
        erprocessWigCulture(wigCulture)
    }

    private func erprocessWigCulture(_ wigCulture: [Dictionary<String, Any>]) {
        self.wigWarrior.removeAll()
        
        wigCulture.forEach({ rebayi in
            let newBrand = ZigBrand(diconAModl: rebayi)
            self.wigWarrior.append(newBrand)
        })
        
        self.wigInfluencer.reloadData()
    }

    private func erhandleSiveGlue(_ wigTradition: Any) {
        self.errorVierw.isHidden = true
        // Additional logic for `siveGlue` can be added here
    }
    
    
    
    
    private func wigUnapologetic() {
        let layout = createCollectionViewLayout()
        configureWigInfluencer(layout: layout)
        addTapGestureToWigSpecialist()
    }

    private func createCollectionViewLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 9
        layout.minimumInteritemSpacing = 9
        layout.itemSize = calculateItemSize()
        return layout
    }

    private func calculateItemSize() -> CGSize {
        let width = (UIScreen.main.bounds.width - 9 - 26) / 2
        return CGSize(width: width, height: 228)
    }

    private func configureWigInfluencer(layout: UICollectionViewFlowLayout) {
        wigInfluencer.delegate = self
        wigInfluencer.dataSource = self
        wigInfluencer.collectionViewLayout = layout
        wigInfluencer.register(UINib(nibName: "HairWigLookCell", bundle: nil), forCellWithReuseIdentifier: "HairWigLookCell")
    }

    private func addTapGestureToWigSpecialist() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(wigRuleBreaker))
        wigSpecialist.addGestureRecognizer(tapGesture)
    }


    @IBOutlet weak var wigSpecialist: UIImageView!
    
    
    
   @objc func wigRuleBreaker()  {
       let wigDesigner = ZigOdorNeutralizer.Revitalizer.wigCustomFit(TryOn: "")
       self.colorView.backgroundColor = UIColor.red
       let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
       wigSculptor.hidesBottomBarWhenPushed = true
       self.titleLabel.text = "aura.hue.rawValue"
       self.navigationController?.pushViewController(wigSculptor, animated: true)
       
   }
    
}



extension HairsCentricntroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.colorView.backgroundColor = UIColor.red
        if collectionView == wigCreator {
            return wigAchiever.count
        }
        
        return wigWarrior.count
        
        
    }
    @objc func wigEnchant()  {
        let Dreia = UILabel()
               
        Dreia.text = "Color Harmony Guide"
        let wigDesigner = ZigOdorNeutralizer.Softness.wigCustomFit(TryOn: "")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        if Dreia.superview != nil {
            return
        }
        self.navigationController?.pushViewController(wigSculptor, animated: true)
     }
    
    private func showStyleSuggestions() {
            // Placeholder for showing style suggestions from AI
            let suggestionsController = UIViewController()
            suggestionsController.view.backgroundColor = .lightGray
            suggestionsController.title = "Style Suggestions"
            navigationController?.pushViewController(suggestionsController, animated: true)
        }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        self.colorView.backgroundColor = UIColor.red
        if collectionView == wigCreator {
            let elasticBand = collectionView.dequeueReusableCell(withReuseIdentifier: "HairACTCell", for: indexPath) as! HairACTCell
            
            elasticBand.wigQandA(wigTips:wigAchiever[indexPath.row])
            return elasticBand
            
        }
        
        let elasticBand = collectionView.dequeueReusableCell(withReuseIdentifier: "HairWigLookCell", for: indexPath) as! HairWigLookCell
        elasticBand.wigDesigner.addTarget(self, action: #selector(wigEnchant), for: .touchUpInside)
        elasticBand.wigQandA(wigTips:wigWarrior[indexPath.row])
        return elasticBand
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.colorView.backgroundColor = UIColor.red
        if collectionView == wigCreator {
            let ioomu = wigAchiever[indexPath.row].diconAModl["wigWhimsical"] as? Int ?? 0
            scoreView.translatesAutoresizingMaskIntoConstraints = false
            seasonLabel.translatesAutoresizingMaskIntoConstraints = false
            let wigDesigner = ZigOdorNeutralizer.Luster.wigCustomFit(TryOn: "\(ioomu)")
            
            let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
            wigSculptor.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(wigSculptor, animated: true)
            return
        }
        
        
        
        let ioomu = wigWarrior[indexPath.row].diconAModl["wigUniverse"] as? Int ?? 0
        
        let wigDesigner = ZigOdorNeutralizer.Moisturizer.wigCustomFit(TryOn: "\(ioomu)")
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        seasonLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
}
