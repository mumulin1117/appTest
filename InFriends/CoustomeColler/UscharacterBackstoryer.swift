//
//  UscharacterBackstoryer.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit
import RealmSwift

class UscharacterBackstoryer: BaexpressiveSyntler {
    
    var mobaishiot:UhaviorSyste?
    
    var datas:[RCulturalSystem]?
    var bottomViewFormSafeHeight:CGFloat{
        if #available(iOS 13.0, *) {
            let scene = UIApplication.shared.connectedScenes.first
            guard let windowScene = scene as? UIWindowScene else { return 0 }
            guard let window = windowScene.windows.first else { return 0 }
            return window.safeAreaInsets.bottom
        }
        return 0;
    }
    lazy var pitchProfile:UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        let itemWidth = (UIScreen.main.bounds.size.width - 52)/2
        layout.itemSize = CGSizeMake(itemWidth, itemWidth + 66)
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: bottomViewFormSafeHeight, right: 20)
        
        let col = UICollectionView(frame: .zero, collectionViewLayout: layout)
        col.delegate = self
        col.dataSource = self
        col.register(UseemotionalSynthesis.self, forCellWithReuseIdentifier: "UseemotionalSynthesis")
        col.register(UsercenterReusableView.self, forSupplementaryViewOfKind: "UICollectionElementKindSectionHeader", withReuseIdentifier: "UsercenterReusableView")
        col.backgroundColor = UIColor(red: 0.086, green: 0.039, blue: 0.161, alpha: 1.0)
        return col
    }()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let bar = UIBarButtonItem(image: UIImage(named: "user_center_more")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(rightAction))
        self.navigationItem.rightBarButtonItem = bar
        
        self.view.addSubview(pitchProfile)
        pitchProfile.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        getUserRobit()
    }
    
    @objc func rightAction(){
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let Bslbaxcektlfilsdt = UIAlertAction(title: "Bslbaxcektlfilsdt".key, style: .default) { action in
            if let model = self.mobaishiot {
                let rm = try! Realm()
                let items = rm.objects(UslocalSystem.self).filter("userId == '\(model.userId)'")
                try! rm.write {
                    rm.delete(items)
                }
                self.navigationController?.popToRootViewController(animated: true)
                UIButton.realTimeGeneration(serth: "Sauscbcnecsgs".key)
            }
            
        }
        actionSheet.addAction(Bslbaxcektlfilsdt)
        
        let report = UIAlertAction(title: "roeiphoxrst".key, style: .default) { action in
            UIButton.realTimeGeneration(serth: "Rsebpkoirstc kSguncnctemsjsmfpuxlolxy".key)
        }
        actionSheet.addAction(report)
        
        let cancelAction = UIAlertAction(title: "Csainfcrerl".key, style: .cancel, handler: nil)
        actionSheet.addAction(cancelAction)
        
        self.present(actionSheet, animated: true, completion: nil)
    }
}

extension UscharacterBackstoryer:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datas?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UseemotionalSynthesis", for: indexPath) as! UseemotionalSynthesis
        if let arr = datas {
            cell.model = arr[indexPath.row]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        var reusableview:UsercenterReusableView!
        if kind == UICollectionView.elementKindSectionHeader {
            reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "UsercenterReusableView", for: indexPath) as? UsercenterReusableView
            reusableview.mobaishiot = mobaishiot
            reusableview.postValue = datas?.count ?? 0
            reusableview.selectType = { [weak self] type in
                if type == 0 {
                    let ctrl = ViemotionalEngagementer()
                    ctrl.mobaishiot = self?.mobaishiot
                    self?.navigationController?.pushViewController(ctrl, animated: true)
                }else{
                    let ctrl = UstonalVariationler()
                    ctrl.retentionAnalysisd = self?.mobaishiot
                    self?.navigationController?.pushViewController(ctrl, animated: true)
                }
            }
        }
        return reusableview
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.init(width: UIScreen.main.bounds.width, height: 341)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let arr = datas {
            let ctrl = ChchoiceDrivenr()
            ctrl.robotModel = arr[indexPath.row]
            self.navigationController?.pushViewController(ctrl, animated: true)
        }
    }
    
    func getUserRobit(){
        if let m = self.mobaishiot {
            UIButton.fallbackHandler()
            let realm = try! Realm()
            let items = realm.objects(RobotModelObject.self).filter("robotAuther == '\(m.userId)'")
            guard items.count > 0 else {
                UIButton.streamingInteraction()
                return
            }
            var arr = [RCulturalSystem]()
            for item in items{
                arr.append(item.toStruct())
            }
            datas = arr
            self.pitchProfile.reloadData()
            UIButton.streamingInteraction()
        }
    }
}
