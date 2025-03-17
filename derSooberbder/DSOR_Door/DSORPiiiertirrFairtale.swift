//
//  DSORPiiiertirrFairtale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit
import SwiftyStoreKit
import Toast_Swift
class DSORPiiiertirrFairtale: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource {
    
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

    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize.init(width: (UIScreen.main.bounds.width - 48 - 24)/3, height: 170)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dsorcell = collectionView.dequeueReusableCell(withReuseIdentifier: "DSORPiiiertiewCellID", for: indexPath) as! DSORPiiiertiewCell
        
        dsorcell.deorMongrry.text = allIterttDSOR[indexPath.row].0
        dsorcell.dsorCountrer.text = "\(allIterttDSOR[indexPath.row].2)"
        return dsorcell
    }
    
   
    @IBOutlet weak var dimsmkDSOR: UILabel!
    
    
    @IBOutlet weak var activeDSORCollview: UICollectionView!
    
    
    let allIterttDSOR:Array<(String,String,Int)> = [
        ("$0.99","ojnkbcedramcigmx",400),
                     ("$1.99","ltxhixhomztliwnl",800),
                     ("$4.99","bkztstwkcvtlxqto",2450),
                        ("$9.99","xxzwmhutbtkyefek",4900),

        
                     ("$19.99","fmjnhjqzrckmpugf",9800),
        ("$29.99","sgyjltsinbsvpihtal",13900),
        
                     ("$49.99","fqehvwflgzbkuuei",24500),
        
        ("$69.99","hvnsurerxftmujlg",33500),
("$89.99","fxmpquickvhnitug",44900),
                       ("$99.99","nlcreawdxrgsrtpt",49000)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dimsmkDSOR.text = DSORPujertLoafmuiner.shmured.mineDattarDS?.blanceds
        activeDSORCollview.delegate = self
        activeDSORCollview.dataSource = self
        activeDSORCollview.contentInset = UIEdgeInsets.init(top: 12, left: 12, bottom: 12, right: 12)
                
        let nibDSORn = UINib(nibName: "DSORPiiiertiewCell", bundle: nil)
        sceneDSORLbel.text = "current scene: \(selSceneDSOR)"
        
        chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)"
        if selSceneDSOR.count > 100 {
            view.addSubview(chatTeViDSOR)
            view.addSubview(sceneDSORLbel)
            view.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = true
            sceneDSORLbel.isHidden = true
           
            haraInputDSORField.isHidden = true
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
        activeDSORCollview.register(nibDSORn, forCellWithReuseIdentifier: "DSORPiiiertiewCellID")
    }


    @IBAction func awaythisRoolmDSOR(_ sender: UIButton) {
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
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   
        self.view.isUserInteractionEnabled = false
        self.view.makeToastActivity(.center)
      
        
        
        SwiftyStoreKit.purchaseProduct(allIterttDSOR[indexPath.row].1, atomically: true) { psResult in
         
            self.view.isUserInteractionEnabled = true
            self.view.hideToastActivity()
            if case .success(let psPurch) = psResult {
               
              
                let psdownloads = psPurch.transaction.downloads
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
            
               
                
                var remainglNERT =  Int(DSORPujertLoafmuiner.shmured.mineDattarDS?.blanceds ?? "0") ?? 0
                
                remainglNERT = remainglNERT + self.allIterttDSOR[indexPath.row].2
                
                DSORPujertLoafmuiner.shmured.mineDattarDS?.blanceds  = "\(remainglNERT)"
                
                self.dimsmkDSOR.text = "\(remainglNERT)"
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 30, height: 30)
                self.view.makeToast("Successful payment!", duration: 2.0,position: .center, image: UIImage(named: "chengDongi"),style: toaststyyleDSOR)
               

          
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                  
                    return
                }
                var toaststyyleDSOR = ToastStyle.init()
                toaststyyleDSOR.imageSize = CGSize.init(width: 40, height: 40)
                self.view.makeToast(error.localizedDescription, duration: 2.0,position: .center, image: UIImage(named: "failureDSOR"),style: toaststyyleDSOR)
               
               
            }
        }
    }

}
