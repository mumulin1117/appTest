//
//  DSORContainerfairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/9.
//

import UIKit
import Toast_Swift

class DSORContainerfairyTale: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?
    
    private var sceneDSORLbel = UILabel()
    
    private var chatTeViDSOR = UITextView.init()
    
    private var haraInputDSORField = UITextField.init()
    
    
    
    private func engageWithChatbot(description: String,colowerDSOR:UIColor) {
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = colowerDSOR
        sceneDSORLbel.textColor = colowerDSOR
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = colowerDSOR
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
    }
    
    
   
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if selSceneDSOR.count > 2 {
            return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    private func changeDPudingDESORScene(_ sender: UISegmentedControl,ifaddDSOR:Bool) {
        
        
        switch sender.selectedSegmentIndex {
        case 0:
            selSceneDSOR = "Dreamy DSOR Opera House"
        case 1:
            selSceneDSOR = "Mysterious Forest  DSOR Opera House"
        case 2:
            selSceneDSOR = "Luxurious Classical DSOR Opera House"
        default:
            break
        }
        
        sceneDSORLbel.text = "current scene: \(selSceneDSOR)" 
        
        chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)" 
        if ifaddDSOR {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = ifaddDSOR
            sceneDSORLbel.isHidden = ifaddDSOR
            haraInputDSORField.isHidden = ifaddDSOR
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if selSceneDSOR.count > 2 {
            return 0
        }
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if selSceneDSOR.count > 2 {
            return 0
        }
        return 0
    }
    
    
    @IBOutlet weak var ColDSORBannerView: UICollectionView!
    
    
    private var asonDSOR = [DSORHpmerrfairyTale(),DSORDiscoverFairyTale(),DSORMesglistCevFairyTale(),DSORMecetrtwrrFairtale()]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let segmentDSOR = UISegmentedControl.init()
       
//        segmentDSOR.setTitle("jierds", forSegmentAt: 0)
//        segmentDSOR.setTitle("jierdsDSORE", forSegmentAt: 0)
//        segmentDSOR.setTitle("jierdBius", forSegmentAt: 1)
//        segmentDSOR.setTitle("jiVCDBius", forSegmentAt: 2)
//        segmentDSOR.selectedSegmentIndex = 0
       
        segmentDSOR.backgroundColor = .clear
        for item in asonDSOR {
            self.addChild(item)
        }
        if selSceneDSOR.count > 3 {
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }else{
            changeDPudingDESORScene(segmentDSOR, ifaddDSOR: false)
        }
        
        
        
        

        ColDSORBannerView.delegate = self
        
        ColDSORBannerView.dataSource = self
        ColDSORBannerView.contentInset = .zero
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
        ColDSORBannerView.contentInsetAdjustmentBehavior = .never
        
        ColDSORBannerView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "bannerngceDSOR")
        
        
        
        if self.view.alpha > 0.5,let viebackg = view.backgroundColor {
            selSceneDSOR.append("\(self.view.alpha)")
            engageWithChatbot(description: self.selSceneDSOR, colowerDSOR: viebackg)
        }
        
    }
    
    @IBAction func banneerscrollIveDSOR(_ sender: UIButton) {
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        let locationDS = sender.tag - 6
        
        let homerDSOR = view.viewWithTag(6) as? UIButton
        
        let doiscoverDSOR = view.viewWithTag(7) as? UIButton
        
        let mesddDSOR = view.viewWithTag(8) as? UIButton
        
        let zuihouDSOR = view.viewWithTag(9) as? UIButton
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
        homerDSOR?.isSelected = false
        
        doiscoverDSOR?.isSelected = false
        
        mesddDSOR?.isSelected = false
        
        zuihouDSOR?.isSelected = false
        
        sender.isSelected = true
        
        ColDSORBannerView.scrollToItem(at: IndexPath.init(row:locationDS, section: 0), at: .left, animated: false)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if selSceneDSOR.count > 2 {
            return asonDSOR.count
        }
        return asonDSOR.count
    }
    private   func shareStoryWithFriends(ifShareDSOR:Bool) {
           
        guard let story = chatTeViDSOR.text, !story.isEmpty else {
            var toaststyyleDSOR = ToastStyle.init()
            toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
            self.view.makeToast("There are no stories to share", duration: 2.0,position: .center, image: UIImage(named: ""),style: toaststyyleDSOR)
            return
        }
        
        
        if ifShareDSOR {
            let activityVC = UIActivityViewController(activityItems: [story], applicationActivities: nil)
            present(activityVC, animated: true, completion: nil) // 打开分享对话框
        }
           
      
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let DSorCell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerngceDSOR", for: indexPath)
        
        let munoDSvc = self.asonDSOR[indexPath.row]
        if selSceneDSOR.count > 2 {
            munoDSvc.view.frame = UIScreen.main.bounds
        }else{
            munoDSvc.view.frame = UIScreen.main.bounds
        }
        if chatALLDSORbots.count > 1 {
            DSorCell.contentView.addSubview(munoDSvc.view)
           
        }
        
        munoDSvc.didMove(toParent: self)
        return DSorCell
        
        
    }

}
