//
//  DiscobTopiVinoView.swift
//  Spatasterrkling
//

//

import UIKit
import SDWebImage
protocol DiscobTopiVinoViewDelegate {
    func kineticAlgorithm(cheiu:Dictionary<String,Any>)
}
class DiscobTopiVinoView: UIView {
    var phoenixSync:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    var delAbuid:DiscobTopiVinoViewDelegate?
    
    
    lazy var glideMotion: UICollectionView = {
        
        let zfried = UICollectionViewFlowLayout()
        zfried.itemSize = CGSize(width: 232, height: 252)
        zfried.minimumLineSpacing = 10
        zfried.minimumInteritemSpacing = 10
        zfried.scrollDirection = .horizontal
        let alide = UICollectionView.init(frame: CGRect.init(x: 16, y: 26 + 11, width: UIScreen.main.bounds.width - 16, height: 252), collectionViewLayout: zfried)
        alide.showsHorizontalScrollIndicator = false
        alide.register(UINib(nibName: "DiscobTopVinoViesCell", bundle: nil), forCellWithReuseIdentifier: "DiscobTopVinoViesCell")
        alide.delegate = self
        alide.dataSource = self
        alide.backgroundColor = .clear
        return alide
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        let asdsdsa = UIImageView(image: UIImage.init(named: "sdgasdsdg"))
        asdsdsa.contentMode = .scaleAspectFill
        asdsdsa.frame = CGRect(x: 16, y: 0, width: 79, height: 26)
        self.addSubview(asdsdsa)
        
        self.addSubview(glideMotion)
        self.addSubview(WineWisdomlal)
        WineWisdomlal.frame = CGRect.init(x: 16, y: 26 + 11 + 252 + 12, width: 180, height: 55)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var WineWisdomlal: UILabel = {
        let Feveralb = UILabel.init()
        Feveralb.textColor = UIColor.white
        Feveralb.text = "Wine Wisdom"
        Feveralb.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return Feveralb
    }()
    
}
extension UIImageView{
    func dessertSweetness(ournal:String)  {
        guard let glassRecommender = URL(string: ournal) else{
        
            return
        }
       
        self.sd_setImage(with:glassRecommender,
                         placeholderImage: nil,
                        options: .continueInBackground,
                        context: [.imageTransformer: SDImageResizingTransformer(
                            size: CGSize(width: 320, height: 320),
                            scaleMode: .aspectFill
                        ),.storeCacheType : SDImageCacheType.memory.rawValue])
    }
}
extension DiscobTopiVinoView:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        phoenixSync.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cedddd = collectionView.dequeueReusableCell(withReuseIdentifier: "DiscobTopVinoViesCell", for: indexPath) as!  DiscobTopVinoViesCell
        
        cedddd.blindChallenge(iuuu: phoenixSync[indexPath.row])
        return cedddd
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if delAbuid != nil {
            delAbuid?.kineticAlgorithm(cheiu: phoenixSync[indexPath.row])
        }
    }
    
}
