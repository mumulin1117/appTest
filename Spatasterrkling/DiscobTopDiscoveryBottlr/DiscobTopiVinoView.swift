//
//  DiscobTopiVinoView.swift
//  Spatasterrkling
//

//

import UIKit

protocol DiscobTopiVinoViewDelegate {
    func DiscobTopkineticAlgorithm(DiscobTopcheiu:Dictionary<String,Any>)
}
class DiscobTopiVinoView: UIView {
    var DiscobTopphoenixSync:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    var DiscobTopdelAbuid:DiscobTopiVinoViewDelegate?
    
    
    lazy var DiscobTopglideMotion: UICollectionView = {
        
        let DiscobTopzfried = UICollectionViewFlowLayout()
        DiscobTopzfried.itemSize = CGSize(width: 232, height: 252)
        DiscobTopzfried.minimumLineSpacing = 10
        DiscobTopzfried.minimumInteritemSpacing = 10
        DiscobTopzfried.scrollDirection = .horizontal
        let alide = UICollectionView.init(frame: CGRect.init(x: 16, y: 26 + 11, width: UIScreen.main.bounds.width - 16, height: 252), collectionViewLayout: DiscobTopzfried)
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
        let DiscobTopasdsdsa = UIImageView(image: UIImage.init(named: "DULIOSIRsdgasdsdg"))
        DiscobTopasdsdsa.contentMode = .scaleAspectFill
        DiscobTopasdsdsa.frame = CGRect(x: 16, y: 0, width: 79, height: 26)
        self.addSubview(DiscobTopasdsdsa)
        
        self.addSubview(DiscobTopglideMotion)
        self.addSubview(DiscobTopWineWisdomlal)
        DiscobTopWineWisdomlal.frame = CGRect.init(x: 16, y: 26 + 11 + 252 + 12, width: 180, height: 55)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var DiscobTopWineWisdomlal: UILabel = {
        let DiscobTopFeveralb = UILabel.init()
        DiscobTopFeveralb.textColor = UIColor.white
        DiscobTopFeveralb.text = "Wine Wisdom"
        DiscobTopFeveralb.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return DiscobTopFeveralb
    }()
    
}
//extension UIImageView{
//    func dessertSweetness(ournal:String)  {
//        guard let glassRecommender = URL(string: ournal) else{
//        
//            return
//        }
//       
//        self.sd_setImage(with:glassRecommender,
//                         placeholderImage: nil,
//                        options: .continueInBackground,
//                        context: [.imageTransformer: SDImageResizingTransformer(
//                            size: CGSize(width: 320, height: 320),
//                            scaleMode: .aspectFill
//                        ),.storeCacheType : SDImageCacheType.memory.rawValue])
//    }
//    
//    
//}
extension DiscobTopiVinoView:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        DiscobTopphoenixSync.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let DiscobTopcedddd = collectionView.dequeueReusableCell(withReuseIdentifier: "DiscobTopVinoViesCell", for: indexPath) as!  DiscobTopVinoViesCell
        
        DiscobTopcedddd.DiscobTopblindChallenge(DiscobTopiuuu: DiscobTopphoenixSync[indexPath.row])
        return DiscobTopcedddd
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if DiscobTopdelAbuid != nil {
            DiscobTopdelAbuid?.DiscobTopkineticAlgorithm(DiscobTopcheiu: DiscobTopphoenixSync[indexPath.row])
        }
    }
    
}
extension UIImageView{
    func DiscobTopdessertSweetnessDiscobTop(DiscobTopournal:String) {
        if let DiscobTopgwivlLocalImage = DiscobToplocalToastPortrait(DiscobTopournal) {
            self.image = DiscobTopgwivlLocalImage
            return
        }
        guard let DiscobTopvineyardPath = self.DiscobTopprepareVineyardPath(DiscobTopournal) else { return }
        
        let fermentationTask = self.DiscobTopinitiateFermentationProcess(DiscobTopvineyardPath)
        fermentationTask.resume()
        
    }
    
    private func DiscobTopprepareVineyardPath(_ path: String) -> URL? {
        guard let DiscobTopgwivlURL = URL(string: path),
              let DiscobTopgwivlScheme = DiscobTopgwivlURL.scheme?.lowercased(),
              DiscobTopgwivlScheme == "http" || DiscobTopgwivlScheme == "https" else {
            return nil
        }
        return DiscobTopgwivlURL
    }

    private func DiscobToplocalToastPortrait(_ path: String) -> UIImage? {
        if path.hasPrefix("gwivl-asset://") {
            let DiscobTopgwivlAsset = String(path.dropFirst("gwivl-asset://".count))
            return UIImage(named: DiscobTopgwivlAsset)
        }
        if let DiscobTopgwivlAssetImage = UIImage(named: path) {
            return DiscobTopgwivlAssetImage
        }
        if let DiscobTopgwivlURL = URL(string: path), DiscobTopgwivlURL.isFileURL,
           let DiscobTopgwivlData = try? Data(contentsOf: DiscobTopgwivlURL) {
            return UIImage(data: DiscobTopgwivlData)
        }
        if FileManager.default.fileExists(atPath: path) {
            return UIImage(contentsOfFile: path)
        }
        return nil
    }

    private func DiscobTopinitiateFermentationProcess(_ destination: URL) -> URLSessionDataTask {
    return URLSession.shared.dataTask(with: destination) { [weak self] harvestData, _, _ in
    self?.DiscobTopprocessHarvestYield(harvestData)
    }
    }

    private func DiscobTopprocessHarvestYield(_ yield: Data?) {
        guard let DiscobTopvintageData = yield,
                let terroirImage = UIImage(data: DiscobTopvintageData) else { return }
        
        DispatchQueue.main.async {
            self.image = terroirImage
        }
        
    }
}
