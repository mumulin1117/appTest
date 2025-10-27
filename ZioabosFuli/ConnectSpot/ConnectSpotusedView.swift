//
//  ConnectSpotusedView.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//
//import SnapKit
import UIKit
//import SDCycleScrollView
struct SceneUpdate {
    let setting: SceneSetting
    let activeNarrator: String
}

protocol ConnectSpotusedViewDelegate {
    func beginartisticCipher(indess:Int)
}
class ConnectSpotusedView: UICollectionReusableView, UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var cycleViewFall: UIImageView!
    
    var delegater :ConnectSpotusedViewDelegate?
    
    @IBOutlet weak var disvoverpage: UIButton!
    
    @IBOutlet weak var creeatertoem: UIButton!
    
    
    @IBOutlet weak var buildAio: UIButton!
    
    private var collectionView: UICollectionView!
    private var pageControl: UIPageControl!
    private var timer: Timer?
    private var images: [String] = []
       
    private var titles: [String] = []
    private let cellIdentifier = "BannerCell"
    
    
    func voiceClarity(iduhoe:CGFloat,views:UIView,isufTruel:Bool = true)  {
    views.layer.cornerRadius = iduhoe
    views.layer.masksToBounds = isufTruel ? true : false
    }
    
    override func awakeFromNib() {
            super.awakeFromNib()
            cycleViewFall.isUserInteractionEnabled = true
            
            // 1. 准备数据
            images = RAaslertvbCell.themeCustomization.compactMap { $0["audpico"] }
            titles = RAaslertvbCell.themeCustomization.compactMap { $0["roleplayTheme"] }
            
            // 2. 创建 CollectionView
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            layout.minimumLineSpacing = 0
            
            collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.register(BannerCell.self, forCellWithReuseIdentifier: cellIdentifier)
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.isPagingEnabled = true
            collectionView.showsHorizontalScrollIndicator = false
            collectionView.backgroundColor = .clear
            voiceClarity(iduhoe: 12, views: collectionView)
            
            cycleViewFall.addSubview(collectionView)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
                collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
                collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 36),
                collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
            ])
            
            // 3. 创建 PageControl
            pageControl = UIPageControl()
            pageControl.numberOfPages = images.count
            pageControl.currentPage = 0
            pageControl.currentPageIndicatorTintColor = .white
            pageControl.pageIndicatorTintColor = .lightGray
            cycleViewFall.addSubview(pageControl)
            pageControl.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                pageControl.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: -20),
                pageControl.centerXAnchor.constraint(equalTo: collectionView.centerXAnchor)
            ])
            
            // 4. 自动滚动 Timer
            startTimer()
        }
   
    deinit {
            timer?.invalidate()
        }
        
        // MARK: - Timer
        private func startTimer() {
            timer?.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(scrollToNext), userInfo: nil, repeats: true)
        }
        
        @objc private func scrollToNext() {
            guard images.count > 1 else { return }
            let visibleIndex = Int(collectionView.contentOffset.x / collectionView.frame.width)
            var nextIndex = visibleIndex + 1
            if nextIndex >= images.count {
                nextIndex = 0
            }
            collectionView.scrollToItem(at: IndexPath(item: nextIndex, section: 0), at: .centeredHorizontally, animated: true)
            pageControl.currentPage = nextIndex
        }
        
        // MARK: - UICollectionView DataSource & Delegate
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return images.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! BannerCell
            let imgName = images[indexPath.item]
            let title = titles[indexPath.item]
            cell.configure(imageName: imgName, title: title)
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            delegater?.beginartisticCipher(indess: indexPath.item)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return collectionView.frame.size
        }
//    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didSelectItemAt index: Int) {
//        if delegater != nil {
//            self.delegater?.beginartisticCipher(indess: index)
//        }
//    }
}

class BannerCell: UICollectionViewCell {
    
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4)
        ])
    }
    
    func configure(imageName: String, title: String) {
        imageView.image = UIImage(named: imageName)
        titleLabel.text = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
