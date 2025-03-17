//
//  DSORMecetrtwrrFairtale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import Pastel

class DSORMecetrtwrrFairtale: UIViewController {
    @IBOutlet weak var avatoDSOR: UIImageView!
    
    @IBOutlet weak var huhDSOR: NSLayoutConstraint!
    
    @IBOutlet weak var emptuiConDSOR: UIImageView!
    @IBOutlet weak var emptuilabelDSOR: UILabel!
    
    @IBOutlet weak var usernalekDSOR: UILabel!
    
    
    @IBOutlet weak var follownalekDSOR: UILabel!
    
    @IBOutlet weak var fansnalekDSOR: UILabel!
    @IBOutlet weak var roberintMine: UICollectionView!
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()



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


    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        avatoDSOR.image = DSORPujertLoafmuiner.shmured.mineuAvatorDS
        usernalekDSOR.text = DSORPujertLoafmuiner.shmured.mineDattarDS?.dsNAme
        if self.view.isHidden  {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = self.view.isHidden
            sceneDSORLbel.isHidden = self.view.isHidden
            haraInputDSORField.isHidden = self.view.isHidden
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
        fansnalekDSOR.text = "\(DSORPujertLoafmuiner.shmured.fansTotalDSOR.count)"
        
        follownalekDSOR.text = "\(DSORPujertLoafmuiner.shmured.followingTotalDSOR.count)"
        
        
        if DSORPujertLoafmuiner.shmured.ownedRobertDSOR.count > 0 {
            roberintMine.isHidden = false
            emptuiConDSOR.isHidden = true
            emptuilabelDSOR.isHidden = true
        }else{
            roberintMine.isHidden = true
            emptuiConDSOR.isHidden = false
            emptuilabelDSOR.isHidden = false
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UIScreen.main.bounds.height < 690 {
            huhDSOR.constant = 9
        }
        avatoDSOR.layer.cornerRadius = 53
        avatoDSOR.layer.masksToBounds = true
        avatoDSOR.layer.borderColor = UIColor(red: 0.62, green: 0.08, blue: 0.04, alpha: 1).cgColor
        avatoDSOR.layer.borderWidth = 1.5
        
        roberintMine.backgroundColor = .clear
        roberintMine.delegate = self
        roberintMine.dataSource = self
     
        let pasttupuview = PastelView(frame: view.bounds)

        pasttupuview.startPastelPoint = .bottomLeft
        pasttupuview.endPastelPoint = .topRight
        pasttupuview.animationDuration = 10.0
        pasttupuview.setColors([UIColor(red: 119/255, green: 50/255, blue: 106/255, alpha: 1.0),
                              UIColor(red: 138/255, green: 48/255, blue: 72/255, alpha: 1.0),
                              UIColor(red: 140/255, green: 39/255, blue: 50/255, alpha: 1.0),
                             
                              UIColor(red: 158/255, green: 20/255, blue: 10/255, alpha: 1.0)])

        pasttupuview.startAnimation()
            
        view.insertSubview(pasttupuview, at: 0)
        roberintMine.register(DSORDiscoverRecentCel.self, forCellWithReuseIdentifier: "DSORDiscoverRecentCelID")
        
        
    }

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


    @IBAction func editChangeDSOR(_ sender: UIButton) {
        if sender.tag == 40 {
            self.navigationController?.pushViewController(DSORLusterrtirrFairtale.init(0), animated: true)
            return
        }
        
        if sender.tag == 41 {
            self.navigationController?.pushViewController(DSORLusterrtirrFairtale.init(1), animated: true)
            return
        }
        
        
        if sender.tag == 42 {
            self.navigationController?.pushViewController(DSORChangerrFairtale.init(), animated: true)
            return
        }
        
        if sender.tag == 43 {
            self.navigationController?.pushViewController(DSORSwertirrFairtale.init(), animated: true)
            return
        }
        
        if sender.tag == 44 {
            self.navigationController?.pushViewController(DSORPiiiertirrFairtale.init(), animated: true)
            return
        }
    }
    
}
extension DSORMecetrtwrrFairtale:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize.init(width: 105, height: 127)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
            
           
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            return 12
        }
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
            
           
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            return 12
        }
        return 12
    }
    
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dsorDAta =  DSORPujertLoafmuiner.shmured.ownedRobertDSOR[indexPath.row]
        
        let dsorevc = DSORAiChatFailrTale.init(dsorRoberDAta: dsorDAta)
        self.navigationController?.pushViewController(dsorevc, animated: true)
    }
    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DSORPujertLoafmuiner.shmured.ownedRobertDSOR.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dsorcee = collectionView.dequeueReusableCell(withReuseIdentifier: "DSORDiscoverRecentCelID", for: indexPath) as! DSORDiscoverRecentCel
        
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
            
           
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            dsorcee.robertnameDSOR.text = DSORPujertLoafmuiner.shmured.ownedRobertDSOR[indexPath.row].roberNameds
        }
        
        dsorcee.robercentHEaderDSOR.image = UIImage(named:DSORPujertLoafmuiner.shmured.ownedRobertDSOR[indexPath.row].roberPicds )
        return dsorcee
    }
    
    
    

    
    
    
}
