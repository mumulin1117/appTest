//
//  FMberRECThriftFlipView.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

protocol FMberRECThriftFlipViewdelegate {
    func FMberRECcuffBarrel(FMberRECdi:Int)
    func FMberRECdareplaure()
}
class FMberRECThriftFlipView: UICollectionReusableView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var loreFMberREC: UILabel!
    
    @IBOutlet weak var FMberRECvino: UIImageView!
    
    var FMberRECtalk:FMberRECThriftFlipViewdelegate?
    
    var FMberRECsticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.FMberRECtalk != nil,let dyumsis = FMberRECsticchtalk[indexPath.row]["patternMixing"] as? Int {
            self.FMberRECtalk?.FMberRECcuffBarrel(FMberRECdi: dyumsis)
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        FMberRECsticchtalk.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let FMberRECmaing = collectionView.dequeueReusableCell(withReuseIdentifier: "FMberRECStyleLoreCell", for: indexPath) as! FMberRECStyleLoreCell
        let FMberRECingWode = FMberRECsticchtalk[indexPath.row]
        if let FMberRECboaer =  (FMberRECingWode["upcycledDenim"] as? Array<String>)?.first{
            FMberRECmaing.FMberRECfiberCraft.FMberRECtextileFinesse(FMberREChand: FMberRECboaer)
        }
        FMberRECmaing.FMberRECartisticStitching.setTitle("\(Int.random(in: 0...6))", for: .normal)
        FMberRECmaing.FMberRECcreativeReuse.text = FMberRECingWode["layeredOutfits"] as? String
        
        
        FMberRECmaing.FMberRECthreadSketching.addTarget(self, action: #selector(FMberRECreaposikoniewr), for: .touchUpInside)
        return FMberRECmaing
    }

    @IBOutlet weak var FMberRECstickTalkAI: UIButton!
    
   @objc func FMberRECreaposikoniewr()  {
       self.FMberRECtalk?.FMberRECdareplaure()
    }
    
    
    @IBOutlet weak var FMberRECshareingUserView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        loreFMberREC.text = "StyleLore"
        FMberRECshareingUserView.collectionViewLayout = FMberRECcreateLayout()
        FMberRECgeometricTessellation()
        FMberRECshareingUserView.dataSource = self
    }
    
    
    private func FMberRECgeometricTessellation()  {
        FMberRECshareingUserView.register(UINib(nibName: "FMberRECStyleLoreCell", bundle: nil), forCellWithReuseIdentifier: "FMberRECStyleLoreCell")
        FMberRECshareingUserView.showsHorizontalScrollIndicator = false
        
        FMberRECshareingUserView.delegate = self
    }
    func FMberRECcreateLayout() -> UICollectionViewLayout {
        let FMberRECjsion = UICollectionViewFlowLayout.init()
        FMberRECjsion.itemSize = CGSize(width:205, height:119)
        FMberRECjsion.minimumLineSpacing = 10
        FMberRECjsion.minimumInteritemSpacing = 10
        FMberRECjsion.scrollDirection = .horizontal
        return FMberRECjsion
    }

  

}
