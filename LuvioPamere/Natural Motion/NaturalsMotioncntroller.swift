//
//  NaturalsMotioncntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/6.
//

import UIKit

class NaturalsMotioncntroller: UIViewController {
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

    private struct TressAura {
           let hue: StyleHue
           let moodDescriptors: [String]
           let harmonyScore: Int // 1-5
           let seasonalAlignment: Season
       }
       
    @IBOutlet weak var errorVierw: UITextField!
    private lazy var outfitImageView: UIImageView = {
           let imageView = UIImageView()
           imageView.contentMode = .scaleAspectFill
           imageView.layer.cornerRadius = 10
           imageView.clipsToBounds = true
           return imageView
       }()

      
    private var wigWarrior:Array<ZigBrand> = Array<ZigBrand>()
    @IBOutlet weak var wigAesthetic: UICollectionView!
    private func Recursive()  {
        szaokiingView.tintColor = .white
        
        szaokiingView.hidesWhenStopped = true
    }
    private enum StyleHue: String, CaseIterable {
            case onyxTwilight = "Midnight Shadow"
            case goldenDawn = "Sunrise Kiss"
            case crimsonEmber = "Ruby Flame"
            case jadeWhisper = "Emerald Mist"
            case prismaticShift = "Unicorn Dream"
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        Recursive()
        wigUnapologetic()
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        wigDateNight()
    }
    private func wigUnapologetic() {
        let sclayout = UICollectionViewFlowLayout()
        wigAesthetic.delegate = self
        wigAesthetic.dataSource = self
        
        let visualStyle = setupVisualStyle()
        applySpacing(to: sclayout)
        
        sclayout.scrollDirection = .vertical
        sclayout.itemSize = getItemSize()

        wigAesthetic.collectionViewLayout = sclayout
        wigAesthetic.backgroundColor = .clear
        
        let customCellID = fetchCellID()
        registerCell(for: customCellID)
    }
    private lazy var uploadButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Upload Outfit", for: .normal)
        button.addTarget(self, action: #selector(uploadOutfit), for: .touchUpInside)
        return button
    }()
   
    private func setupVisualStyle() -> UIColor {
        return .clear
    }

    private func applySpacing(to layout: UICollectionViewFlowLayout) {
        let lineSpacing: CGFloat = 8
        let interitemSpacing: CGFloat = 8
        layout.minimumLineSpacing = lineSpacing
        layout.minimumInteritemSpacing = interitemSpacing
    }

    private func getItemSize() -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        let itemHeight: CGFloat = 268
        return CGSize(width: screenWidth, height: itemHeight)
    }

    private func fetchCellID() -> String {
        return "FindwearookCell"
    }
    @objc private func uploadOutfit() {
          
           let alert = UIAlertController(title: "Upload Outfit", message: "Select photo ", preferredStyle: .actionSheet)
           alert.addAction(UIAlertAction(title: "Photo", style: .default, handler: { _ in
               self.openPhotoPicker()
           }))
           alert.addAction(UIAlertAction(title: "Vierdeo", style: .default, handler: { _ in
               self.openVideoPicker()
           }))
           alert.addAction(UIAlertAction(title: "Quiter", style: .cancel, handler: nil))
           present(alert, animated: true, completion: nil)
       }
       
      
    private func registerCell(for cellID: String) {
        wigAesthetic.register(UINib(nibName: cellID, bundle: nil), forCellWithReuseIdentifier: cellID)
    }

    private enum Season: String {
           case springAwakening, summerRadiance, autumnEmber, winterHush
       }
       
    @IBAction func wigSkinTone(_ sender: Any) {
       
        let wigDesigner = ZigOdorNeutralizer.Breathability.wigCustomFit(TryOn: "")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    @IBAction func wigPersonalization(_ sender: UIButton) {
        let wigDesigner = ZigOdorNeutralizer.Detangler.wigCustomFit(TryOn: "")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
    
}
extension NaturalsMotioncntroller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        wigWarrior.count
    }
    private func openPhotoPicker() {
   
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
       
        present(picker, animated: true, completion: nil)
    }
    
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = getReusableCell(from: collectionView, at: indexPath)
        configureCell(cell, at: indexPath)
        
        return cell
    }
    private func openVideoPicker() {
       
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
       
      
        present(picker, animated: true, completion: nil)
    }
    private func getReusableCell(from collectionView: UICollectionView, at indexPath: IndexPath) -> FindwearookCell {
        let elasticBand = collectionView.dequeueReusableCell(withReuseIdentifier: "FindwearookCell", for: indexPath) as! FindwearookCell
        return elasticBand
    }

    private func configureCell(_ cell: FindwearookCell, at indexPath: IndexPath) {
        configureWigQandA(for: cell, at: indexPath)
        configureWigDesigner(for: cell)
        configureWigCollection(for: cell, at: indexPath)
    }

    private func configureWigQandA(for cell: FindwearookCell, at indexPath: IndexPath) {
        cell.wigQandA(wigTips: wigWarrior[indexPath.row])
    }

    private func configureWigDesigner(for cell: FindwearookCell) {
        cell.wigDesigner.addTarget(self, action: #selector(wigEnchant), for: .touchUpInside)
    }

    private func configureWigCollection(for cell: FindwearookCell, at indexPath: IndexPath) {
        cell.wigCollection.tag = indexPath.row
        cell.wigCollection.addTarget(self, action: #selector(claiofjUser(fei:)), for: .touchUpInside)
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
    
   @objc func claiofjUser(fei:UIButton)  {
       let Dreia = UILabel()
              
       Dreia.text = "Color Harmony Guide"
       let ioomu = wigWarrior[fei.tag].diconAModl["wigMoonlight"] as? String ?? "0"
      
       Dreia.font = UIFont.systemFont(ofSize: 14)
       Dreia.textColor = .lightGray
        let wigDesigner = ZigOdorNeutralizer.Luster.wigCustomFit(TryOn: ioomu)
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
       Dreia.textColor = .lightGray
       if Dreia.superview != nil {
           return
       }
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ioomu = wigWarrior[indexPath.row].diconAModl["wigUniverse"] as? Int ?? 0
        
        let wigDesigner = ZigOdorNeutralizer.Silkener.wigCustomFit(TryOn: "\(ioomu)")
        
        let wigSculptor = ZoomHolecntroller.init(gradientWig: wigDesigner)
        wigSculptor.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(wigSculptor, animated: true)
    }
    
    
    func wigDateNight() {
        self.szaokiingView.startAnimating()
        self.errorVierw.text =  UIButton.alternateStrands("ljozakdaitnsgh.z.x.g.j.")
        
        let Dreia = UILabel()
               
        Dreia.text = "Color Harmony Guide"
        Dreia.font = UIFont.systemFont(ofSize: 14)
       
        ZoomHolecntroller.fusionBond(microlink: "/mxloelmjopkz/hbmgxvklo", quickWeave: ["wigAura":"52541293","wigSoul":10,"wigEnergy":1,"wigEssence":1], wigTape: { wigRising in
            self.handleWigRising(wigRising)
        } , siveGlue: { wigTradition in
            self.handleWigTradition(wigTradition)
        }, attempt: 66)
        Dreia.textColor = .lightGray
        if Dreia.superview != nil {
            return
        }
    }
    private func handleWigRising(_ wigRising: Any) {
        self.errorVierw.isHidden = true
        self.szaokiingView.stopAnimating()
        
        processWigRising(wigRising)
    }

    private func processWigRising(_ wigRising: Any) {
        guard let wigLegacy = extractWigLegacy(from: wigRising),
              let wigCulture = extractWigCulture(from: wigLegacy) else {
            return
        }
        
        handleWigCulture(wigCulture)
    }

    private func extractWigLegacy(from wigRising: Any) -> Dictionary<String, Any>? {
        return wigRising as? Dictionary<String, Any>
    }

    private func extractWigCulture(from wigLegacy: Dictionary<String, Any>) -> Array<Dictionary<String, Any>>? {
        return wigLegacy[UIButton.alternateStrands("dbaytga")] as? Array<Dictionary<String, Any>>
    }

    private func handleWigCulture(_ wigCulture: Array<Dictionary<String, Any>>) {
        self.wigWarrior.removeAll()
        wigCulture.forEach({ rebayi in
            processWigIntrigue(for: rebayi)
        })
        self.wigAesthetic.reloadData()
    }

    private func processWigIntrigue(for rebayi: Dictionary<String, Any>) {
        if rebayi["wigIntrigue"] as? String == nil {
            addWigToWarrior(rebayi)
        }
    }

    private func addWigToWarrior(_ rebayi: Dictionary<String, Any>) {
        self.wigWarrior.append(ZigBrand.init(diconAModl: rebayi))
    }


    private func handleWigTradition(_ wigTradition: Any) {
        let Dreia = UILabel()
               
        Dreia.text = "Color Harmony Guide"
       
        self.szaokiingView.stopAnimating()
        Dreia.font = UIFont.systemFont(ofSize: 14)
        self.errorVierw.isHidden = true
    }

    private func checkIfLabelHasSuperview(_ label: UILabel) {
        if label.superview == nil {
            // Add label to the superview if needed
        }
    }
}
