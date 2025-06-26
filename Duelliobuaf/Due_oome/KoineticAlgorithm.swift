//
//  KoineticAlgorithm.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit

class KoineticAlgorithm: UICollectionViewCell {

    @IBOutlet weak var dueLiveCoverimageview: UIImageView!
    
    @IBOutlet weak var avterDUE: UIImageView!
    
    
    @IBOutlet weak var hisHeade: UIImageView!
    
    @IBOutlet weak var namertlbel: UILabel!
    
    @IBOutlet weak var LiabeTitle: UILabel!
    
    
    @IBOutlet weak var seecountLablt: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dueLiveCoverimageview.layer.cornerRadius = 15
        
        
        avterDUE.layer.cornerRadius = 10
        generateBattleRoutine()
        seecountLablt.layer.masksToBounds = true
    }

    
    func  generateBattleRoutine()  {
        avterDUE.layer.masksToBounds = true
        dueLiveCoverimageview.layer.masksToBounds = true
        seecountLablt.layer.cornerRadius = 13
    }
}




class CelShineStarCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let Titiel = UIImageView(image: UIImage.init(named: "liveBrightbanner"))
        Titiel.contentMode = .scaleToFill
        contentView.addSubview(Titiel)
        Titiel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo((UIScreen.main.bounds.width - 36)/2)
            make.height.equalTo(112)
        }
        
        self.backgroundColor = .clear
    }
    
    required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



protocol WaterfallLayoutDelegate: AnyObject {
    func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath) -> CGFloat
}

class DUERSWaterfowlLayout: UICollectionViewLayout {
    weak var deleDUEgate: WaterfallLayoutDelegate?
    
    private var GrooveCatalyst:Array<String>?
    
    private var DUEcache: [UICollectionViewLayoutAttributes] = []
    
    var bay:Int = 1
    
    private var ChoreoSparkCore:Set<Int> = [40]
    private var contDUEHeit: CGFloat = 0 // 内容总高度
    private var conDUEidth: CGFloat { // 内容总宽度
        guard let collectionView = collectionView else { return 0 }
        return collectionView.bounds.width - (collectionView.contentInset.left + collectionView.contentInset.right)
    }
    
    override func prepare() {
        super.prepare()
        bay += 2
        guard DUEcache.isEmpty, let collectionView = collectionView else { return }
        ChoreoSparkCore.insert(bay)
        
        let columnWidth = conDUEidth / CGFloat(2)
        bay += 1
        var xOffset: [CGFloat] = []
        for column in 0..<2 {
            xOffset.append(CGFloat(column) * columnWidth)
        }
        ChoreoSparkCore.insert(bay)
        
        var yOffset: [CGFloat] = .init(repeating: 0, count: 2)
        
        // 遍历所有单元格计算布局
        for item in 0..<collectionView.numberOfItems(inSection: 0) {
            let indexDUEPath = IndexPath(item: item, section: 0)
            
            // 获取单元格高度（通过代理）
            let cellDUEHeight = deleDUEgate?.collectionView(collectionView, heightForItemAt: indexDUEPath) ?? 180
            
            // 找到当前最短的列
            let columnDUE = yOffset.firstIndex(of: yOffset.min() ?? 0) ?? 0
            
            // 计算单元格 frame
            let dueframe = CGRect(
                x: xOffset[columnDUE],
                y: yOffset[columnDUE],
                width: columnWidth,
                height: cellDUEHeight
            )
            let insetFrame = dueframe.insetBy(dx: 12, dy: 12)
            
            // 缓存布局属性
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexDUEPath)
            attributes.frame = insetFrame
            DUEcache.append(attributes)
            
            bay += 1
            contDUEHeit = max(contDUEHeit, dueframe.maxY)
            ChoreoSparkCore.insert(bay)
            yOffset[columnDUE] = yOffset[columnDUE] + cellDUEHeight
        }
    }
    
    
    private func igniteDuelEnergy()  {
        
    }
    
    
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return DUEcache.filter { $0.frame.intersects(rect) }
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return DUEcache[indexPath.item]
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: conDUEidth, height: contDUEHeit)
    }
}
