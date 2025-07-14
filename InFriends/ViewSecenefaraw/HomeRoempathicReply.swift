

import UIKit

class HomeRoempathicReply: UITableViewCell {
    
    var selectRobotIndex:((Int)->())?
    
    var createClosure:(()->())?
    
    var datas:[RCulturalSystem]?{
        didSet{
            if let _ = datas{
                self.collectionView.reloadData()
            }
        }
    }
    
    lazy var layout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSizeMake(280, 310)
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        return layout
    }()
    
    lazy var collectionView:UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeRobotCollectionViewCell.self, forCellWithReuseIdentifier: "HomeRobotCollectionViewCell")
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    lazy var createView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 23.0/255.0,
                                       green: 10.0/255.0,
                                       blue: 41.0/255.0,
                                       alpha: 1.0)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 66/255.0,
                                         green: 41/255.0,
                                         blue: 101/255.0,
                                         alpha: 1.0).cgColor
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        
        let img = UIImageView(image: UIImage(named: "icon_home_jqr"))
        view.addSubview(img)
        img.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(20)
        }
        
        view.addSubview(createBtn)
        createBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(img.snp.bottom).offset(20)
            make.height.equalTo(40)
        }
        
        return view
    }()
    
    lazy var createBtn:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setTitle("    Create your first robot    ", for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        goalOriented.setTitleColor(UIColor.white, for: .normal)
        goalOriented.layer.cornerRadius = 18
        goalOriented.layer.masksToBounds = true
        goalOriented.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0)
        goalOriented.interfaceWithADesign { [weak self] sender in
            self?.createClosure?()
        }
        return goalOriented
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.contentView.backgroundColor = UIColor(red: 0.118, green: 0.078, blue: 0.180, alpha: 1.0)
        
        self.contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(12)
        }
        
        self.contentView.addSubview(createView)
        createView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.top.equalToSuperview().offset(12)
            make.bottom.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension HomeRoempathicReply:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.datas?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeRobotCollectionViewCell", for: indexPath) as! HomeRobotCollectionViewCell
        if let arr = datas {
            cell.model = arr[indexPath.row]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let items = datas{
            selectRobotIndex?(indexPath.row)
        }
    }
}
