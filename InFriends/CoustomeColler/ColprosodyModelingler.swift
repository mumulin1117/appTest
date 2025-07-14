//
//  ColprosodyModelingler.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import UIKit
import RealmSwift

class ColprosodyModelingler: BaexpressiveSyntler {
    
    lazy var noDataView:UIView = {
        let v = UIView()
        v.backgroundColor = .clear
        
        let img = UIImageView(image: UIImage(named: "col_noData"))
        v.addSubview(img)
        img.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.left.greaterThanOrEqualToSuperview().offset(5)
            make.right.lessThanOrEqualToSuperview().offset(-5)
        }
        
        let lab = UILabel()
        lab.textColor = UIColor(red: 0.502, green: 0.443, blue: 0.565, alpha: 1.0)
        lab.textAlignment = .center
        lab.text = "No content available at the moment~"
        lab.font = UIFont.systemFont(ofSize: 14)
        v.addSubview(lab)
        lab.snp.makeConstraints { make in
            make.left.greaterThanOrEqualToSuperview().offset(5)
            make.right.lessThanOrEqualToSuperview().offset(-5)
            make.top.equalTo(img.snp.bottom).offset(10)
            make.bottom.equalToSuperview()
        }
        
        return v
    }()
    
    var datas:[RCulturalSystem]?
    
    lazy var layout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let ScreenRatio: CGFloat = UIScreen.main.bounds.size.width / 375.0
        let itemWidth = (UIScreen.main.bounds.size.width - 60)/2
        layout.itemSize = CGSizeMake(itemWidth, itemWidth + 96*ScreenRatio)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 12
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 24, right: 24)
        return layout
    }()
    
    lazy var collectionView:UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MypitchProfile.self, forCellWithReuseIdentifier: "MypitchProfile")
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    lazy var longFormNarrativeLbgl:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = UIColor.white
        label.text = "My Collection"
        return label
    }()
    
    var isFirst = true
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getCollect()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = UIApplication.shared.connectedScenes.first
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        guard let windowScene = scene as? UIWindowScene else { return  }
        guard let statusBarManager = windowScene.statusBarManager else { return  }
        self.view.addSubview(longFormNarrativeLbgl)
        longFormNarrativeLbgl.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height + 10)
        }
        
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(longFormNarrativeLbgl.snp.bottom).offset(20)
        }
        
        self.view.addSubview(noDataView)
        noDataView.snp.makeConstraints { make in
            make.top.equalTo(longFormNarrativeLbgl.snp.bottom).offset(159)
            make.centerX.equalToSuperview()
        }
    }
    
    func getCollect(){
        if isFirst {
            UIButton.fallbackHandler()
        }
        
        DispatchQueue.global(qos: .background).async {
            let rm = try! Realm()
            let items = rm.objects(RobotModelObject.self).filter("isCollect == true")
            var arr = [RCulturalSystem]()
            for obj in items {
                arr.append(obj.toStruct())
            }
            self.datas = arr
            DispatchQueue.main.async {
                if self.isFirst {
                    UIButton.streamingInteraction()
                }
                self.isFirst = false
                self.collectionView.reloadData()
                self.noDataView.isHidden = arr.count > 0
            }
        }
    }
    
}

extension ColprosodyModelingler : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.datas?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MypitchProfile", for: indexPath) as! MypitchProfile
        if let arr = datas {
            cell.model = arr[indexPath.row]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let arr = datas {
            let ctrl = ChchoiceDrivenr()
            ctrl.robotModel = arr[indexPath.row]
            self.navigationController?.pushViewController(ctrl, animated: true)
        }
    }
}
