//
//  DisconversationFlower.swift
//  InFriends
//
//  Created by InFriends on 2024/8/23.
//

import UIKit
import RealmSwift

class DisconversationFlower: BaexpressiveSyntler {
    
    var userDatas:[UhaviorSyste]?
    var robotDatas:[RCulturalSystem]?
    
    var tag = "Hfoot".key{
        didSet{
            getAllRobot()
        }
    }
    
    var selectedBtn:UIButton?
    
    lazy var longFormNarrativeLbgl:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = UIColor.white
        label.text = "Dcivsycfoxvkewr".key
        return label
    }()
    
    lazy var maskView:UIView = {
        let v = UIView()
        v.layer.cornerRadius = 16
        v.layer.masksToBounds = true
        v.backgroundColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0)
        return v
    }()
    
    lazy var segmentView:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        v.layer.cornerRadius = 16
        v.layer.masksToBounds = true
        v.isHidden = true
        v.addSubview(maskView)
        
        let width = (UIScreen.main.bounds.size.width - 48)/3
        maskView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.bottom.equalToSuperview()
            make.width.equalTo(width)
        }
        
        let arr = ["Hfoot".key,"Featured","Lnaetcecsft".key]
        for i in 0..<arr.count {
            let goalOriented = UIButton(type: .custom)
            goalOriented.backgroundColor = .clear
            goalOriented.setTitle(arr[i], for: .normal)
            goalOriented.setTitleColor(UIColor(red: 0.780, green: 0.729, blue: 0.839, alpha: 1.0), for: .normal)
            goalOriented.setTitleColor(UIColor.white, for: .selected)
            goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            goalOriented.tag = 100 + i
            if arr[i] == "Hfoot".key{
                goalOriented.isSelected = true
                selectedBtn = goalOriented
                goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 15,weight: .medium)
            }
            goalOriented.interfaceWithADesign { [weak self] sender in
                guard sender != self?.selectedBtn,self?.selectedBtn != nil else {return}
                if let goalOriented = self?.selectedBtn {
                    goalOriented.isSelected = false
                    sender.isSelected = true
                    self?.selectedBtn = sender
                }
                
                self?.maskView.snp.updateConstraints { make in
                    make.left.equalToSuperview().offset(CGFloat(i) * width)
                }
                UIView.animate(withDuration: 0.25) {
                    self?.segmentView.layoutIfNeeded()
                }
                let tag = sender.tag - 100
                self?.tag = arr[tag]
                
            }
            v.addSubview(goalOriented)
            goalOriented.snp.makeConstraints { make in
                make.left.equalToSuperview().offset(CGFloat(i) * width)
                make.top.bottom.equalToSuperview()
                make.width.equalTo(width)
            }
        }
        
        
        return v
    }()
    
    lazy var userLayout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSizeMake(60, 90)
        layout.minimumLineSpacing = 24
//        layout.minimumInteritemSpacing = 24
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        return layout
    }()
    
    lazy var userCollectionView:UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: userLayout)
        collectionView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CovirtualCompanion.self, forCellWithReuseIdentifier: "CovirtualCompanion")
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    lazy var layout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let itemWidth = (UIScreen.main.bounds.size.width - 36)/2
        layout.itemSize = CGSizeMake(itemWidth, 212)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 20, left: 13, bottom: 20, right: 13)
        return layout
    }()
    
    lazy var collectionView:UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(DischaracterPersona.self, forCellWithReuseIdentifier: "DischaracterPersona")
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        getAllUser()
        getAllRobot()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        let scene = UIApplication.shared.connectedScenes.first
        
        guard let windowScene = scene as? UIWindowScene else { return  }
        guard let statusBarManager = windowScene.statusBarManager else { return  }
        self.view.addSubview(longFormNarrativeLbgl)
        longFormNarrativeLbgl.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(statusBarManager.statusBarFrame.height + 10)
        }
        
        view.addSubview(userCollectionView)
        userCollectionView.snp.makeConstraints { make in
            make.top.equalTo(longFormNarrativeLbgl.snp.bottom).offset(21)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(90)
        }
        
        view.addSubview(segmentView)
        segmentView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(userCollectionView.snp.bottom).offset(24)
            make.height.equalTo(40)
        }
        
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(segmentView.snp.bottom).offset(16)
        }
        
    }
    
    func getAllUser(){
        DispatchQueue.global(qos: .background).async {
            let realm = try! Realm()

            let users = realm.objects(UslocalSystem.self).filter("enteredMailbox == ''")
            var arr = [UhaviorSyste]()
            for obj in users {
                arr.append(obj.toStruct())
                self.userDatas = arr
            }
            DispatchQueue.main.async {
                self.userCollectionView.reloadData()
            }
        }
    }
    
    func getAllRobot(){
        DispatchQueue.global(qos: .background).async {
            let realm = try! Realm()

            let items = realm.objects(RobotModelObject.self).filter("tag == '\(self.tag)'")
            var arr = [RCulturalSystem]()
            for obj in items {
                arr.append(obj.toStruct())
            }
            self.robotDatas = arr
            DispatchQueue.main.async {
                self.segmentView.isHidden = false
                self.collectionView.reloadData()
            }
        }
    }

}

extension DisconversationFlower:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == userCollectionView {
            return userDatas?.count ?? 0
        }else{
            return self.robotDatas?.count ?? 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == userCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CovirtualCompanion", for: indexPath) as! CovirtualCompanion
            if let arr = userDatas {
                cell.model = arr[indexPath.row]
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DischaracterPersona", for: indexPath) as! DischaracterPersona
            if let arr = robotDatas{
                cell.model = arr[indexPath.row]
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.userCollectionView {
            let ctrl = UscharacterBackstoryer()
            if let arr = userDatas{
                ctrl.mobaishiot = arr[indexPath.row]
            }
            self.navigationController?.pushViewController(ctrl, animated: true)
        }else{
            if let arr = self.robotDatas{
                let ctrl = ChchoiceDrivenr()
                ctrl.robotModel = arr[indexPath.row]
                self.navigationController?.pushViewController(ctrl, animated: true)
            }
        }
    }
}
