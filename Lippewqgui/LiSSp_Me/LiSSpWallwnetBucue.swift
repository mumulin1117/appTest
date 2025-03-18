//
//  LiSSpWallwnetBucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit
import SwiftyStoreKit

class LiSSpWallwnetBucue:  LissipSecondFrbucue,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var ChokenSSIP: UIButton!
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    @IBOutlet weak var mincolViewSIPP: UICollectionView!
    
    @IBOutlet weak var mineOladSSIP: UILabel!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: mincolViewSIPP.frame.width, height: 68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    var blanceidSSIPayID:Array<(String,String,Int)> = Array<(String,String,Int)>()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        enImageSSIPOViol.isHidden = true
        blanceidSSIPayID = [("nqixcbnohmlxhlrc","$k0b.d9h9".oranApolWothCharrterString(),400),
                         ("pxoxebhhktzklezg","$m1n.u9z9".oranApolWothCharrterString(),600),
                                ("pxoxebhhktzklllip","$y2r.k9d9".oranApolWothCharrterString(),1150),
                               
                         ("rjcaopufshgxmmch","$x4k.s9u9".oranApolWothCharrterString(),2450),
                                ("sdrgnhnjutyjtyjr","$e5h.a9b9".oranApolWothCharrterString(),2650),
                                ("oaijeghutgfhfgtt","$x8s.v9x9".oranApolWothCharrterString(),4650),
                         ("hwisjrlbpnklyzcq","$e9y.u9c9".oranApolWothCharrterString(),4900),
                         ("vpjxrayqjkswcwpc","$y1k9l.o9o9".oranApolWothCharrterString(),9800),
                         ("nyrjetssfpqjltkh","$m4l9k.k9v9".oranApolWothCharrterString(),24500),
                         ("cotnxwosshqinyda","$k9f9a.q9c9".oranApolWothCharrterString(),49000)
                                ]
        ssuitreatNet()
        mincolViewSIPP.register(UINib.init(nibName: "LiSSpWallwnetvierell", bundle: nil), forCellWithReuseIdentifier: "LiSSpWallwnetBucueReused")
        
        ssuipCreaNet()
        
        mincolViewSIPP.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 280, right: 0)
    }

    private func ssuipCreaNet() {
        mincolViewSIPP.delegate = self
        mincolViewSIPP.dataSource = self
    }
    
    private func ssuitreatNet() {
        if let oldamone = Int(LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] ?? "0"){
   
            mineOladSSIP.text  = "\(oldamone)"
             
         }
    }
   

}


extension LiSSpWallwnetBucue:UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let selidINdfo = self.blanceidSSIPayID[indexPath.row]
        let CellIDSIPP = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSpWallwnetBucueReused", for: indexPath) as! LiSSpWallwnetvierell
        CellIDSIPP.speendTisSSIP.text = selidINdfo.1
        CellIDSIPP.ownedThisSSIP.text = "\(selidINdfo.2)"
        return CellIDSIPP
        
    }
    
    private func getingReallIDREsultSSSIp(diomondAccount:Int)  {
        
        if var oldamone = Int(LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] ?? "0"){
           
            oldamone = oldamone + diomondAccount
            LipSigggneSnmingertips.logUoserdataSSIP["ssipDoimond"] = "\(oldamone)"
            self.mineOladSSIP.text  = "\(oldamone)"
         }
        
        //更新相关数据
        var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
        
        allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
        let useiIDING = LipSigggneSnmingertips.logUoserdataSSIP["ssipAccID"]
        for (ing,itemt) in allUserDataSSIP.enumerated() {
            if itemt["ssipAccID"] == useiIDING {
                allUserDataSSIP[ing] = LipSigggneSnmingertips.logUoserdataSSIP
            }
        }
        UserDefaults.standard.set(allUserDataSSIP, forKey: "AllUserLocalDataList")
        
        AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
       
//        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        view.isUserInteractionEnabled = false
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lpotaxdfiznxgz.f.f.v.".oranApolWothCharrterString(), loaingShowView: self.view)
        let selidINdfo = self.blanceidSSIPayID[indexPath.row]
        
//#if DEBUG
//        self.getingReallIDREsultSSSIp(diomondAccount: selidINdfo.2)
//        #else
//        

        SwiftyStoreKit.purchaseProduct(selidINdfo.0, atomically: true) { psResult in
            var SistertSSIp = [CGRect]()
            SistertSSIp.insert(CGRect.zero, at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

            
            self.view.isUserInteractionEnabled = true
            if case .success(let coacadpos) = psResult {
                
                self.getingReallIDREsultSSSIp(diomondAccount: selidINdfo.2)
                
                let psdownloads = coacadpos.transaction.downloads
                
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if coacadpos.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(coacadpos.transaction)
                }

            }else if case .error(let error) = psResult {
                
                AppDelegate.hideLoadingSSIPTipsIndicator(loaingShowView: self.view)
                if SistertSSIp.count == 0 {
                    return
                }
                if error.code != .paymentCancelled {
//                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: error.localizedDescription, loaingShowView: self.view)
                    self.ChuanZaoErtoSSIP(errorDesc: error.localizedDescription)
                }
            }
        }
        
//#endif
    }
    
    
    private func ChuanZaoErtoSSIP(errorDesc:String)  {
        
        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:errorDesc , loaingShowView: self.view)
       
    }
}
