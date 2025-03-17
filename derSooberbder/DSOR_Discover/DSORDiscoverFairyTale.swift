//
//  DSORDiscoverFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/10.
//

import UIKit

class DSORDiscoverFairyTale: UIViewController {

    lazy var activeCollviewDSOR: UICollectionView = {
        let flayoutDSOR = UICollectionViewFlowLayout.init()
        flayoutDSOR.itemSize = CGSize.init(width: 105, height: 127)
        flayoutDSOR.minimumLineSpacing = 12
        flayoutDSOR.minimumInteritemSpacing = 12
        flayoutDSOR.scrollDirection = .horizontal
        let activeCollview = UICollectionView.init(frame: .zero, collectionViewLayout: flayoutDSOR)
        activeCollview.backgroundColor = .clear
        activeCollview.delegate = self
        activeCollview.dataSource = self
     
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
            
           
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            activeCollview.register(DSORDiscoverRecentCel.self, forCellWithReuseIdentifier: "DSORDiscoverRecentCelID")
        }

        
        
        
        return activeCollview
    }()
    
    
    lazy var latestRobertCollviewDSOR: UICollectionView = {
        let flayoutDSOR = UICollectionViewFlowLayout.init()
        flayoutDSOR.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 112 - 8, height: 162 + 16)
        flayoutDSOR.minimumLineSpacing = 24
        flayoutDSOR.minimumInteritemSpacing = 24
        flayoutDSOR.scrollDirection = .vertical
        let activeCollview = UICollectionView.init(frame: .zero, collectionViewLayout: flayoutDSOR)
        activeCollview.backgroundColor = .clear
        activeCollview.delegate = self
        activeCollview.dataSource = self
        
        let nibDSORn = UINib(nibName: "DSORDiscoveVerticalAiCel", bundle: nil)
        activeCollview.register(nibDSORn, forCellWithReuseIdentifier: "DSORDiscoveVerticalAiCelID")
        var realiioDSOR: [Int] = [5,4,9,9,4]
        var bingliDSOR = 213

        if realiioDSOR.count > 3 && realiioDSOR.count < 10 {
            realiioDSOR.append(bingliDSOR)
        }
        var selfCvbmunberDSOR = realiioDSOR.count + 30

        if let lasterding = realiioDSOR.last  {
            bingliDSOR += lasterding
        }else{
            bingliDSOR += 23
            
           
        }

        if bingliDSOR > 20 && realiioDSOR.count > 2{
            activeCollview.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
        }

        
        return activeCollview
    }()
    let empryholsedrMe = UILabel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activeCollviewDSOR.isHidden = true
        latestRobertCollviewDSOR.isHidden = true
        let voberDSOR = UIImageView(image: UIImage.init(named: "idiscove_viewbgbg"))
        
        voberDSOR.contentMode = .scaleToFill
        view.addSubview(voberDSOR)
        voberDSOR.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let activelabel = UILabel.init()
        activelabel.textColor = .white
        activelabel.text = "Recent Chat"
        activelabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addSubview(activelabel)
        
        
        empryholsedrMe.textColor = UIColor.init(white: 1, alpha: 0.8)
        empryholsedrMe.text = "It's empty. There's no recent Bot chat here."
        empryholsedrMe.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        empryholsedrMe.numberOfLines = 0
        view.addSubview(empryholsedrMe)
        
        
        activelabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(self.view.safeAreaInsets.top  + 44 + 8)
        }
        
        
       
       
        view.addSubview(self.activeCollviewDSOR)
        activeCollviewDSOR.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(127)
            make.trailing.equalToSuperview()
            make.top.equalTo(activelabel.snp.bottom).offset(20)
        }
        empryholsedrMe.snp.makeConstraints { make in
            make.center.equalTo(activeCollviewDSOR)
        }
        
        view.addSubview(self.latestRobertCollviewDSOR)
        latestRobertCollviewDSOR.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(112)
            make.top.equalTo(activeCollviewDSOR.snp.bottom).offset(56)
            make.trailing.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview()
        }
        
        self.view.makeToastActivity(.center)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
            self.activeCollviewDSOR.isHidden = false
            self.latestRobertCollviewDSOR.isHidden = false
            self.view.hideToastActivity()
            
        }
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        activeCollviewDSOR.reloadData()
        if DSORPujertLoafmuiner.shmured.ownedRobertDSOR.count == 0 {
            self.empryholsedrMe.isHidden = false
        }else{
            self.empryholsedrMe.isHidden = true
        }
        
    }

}


extension DSORDiscoverFairyTale:UICollectionViewDelegate,UICollectionViewDataSource{
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.activeCollviewDSOR {
            return DSORPujertLoafmuiner.shmured.ownedRobertDSOR.count
        }else{
            return DSORPujertLoafmuiner.shmured.allRpbertDSOR.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.activeCollviewDSOR {
            let dsorcee = collectionView.dequeueReusableCell(withReuseIdentifier: "DSORDiscoverRecentCelID", for: indexPath) as! DSORDiscoverRecentCel
            dsorcee.robercentHEaderDSOR.image = UIImage(named: DSORPujertLoafmuiner.shmured.ownedRobertDSOR[indexPath.row].roberPicds )
            dsorcee.robertnameDSOR.text = DSORPujertLoafmuiner.shmured.ownedRobertDSOR[indexPath.row].roberNameds
            return dsorcee
            
        }else{
            let dsorcee = collectionView.dequeueReusableCell(withReuseIdentifier: "DSORDiscoveVerticalAiCelID", for: indexPath) as! DSORDiscoveVerticalAiCel
            dsorcee.robercentHEaderDSOR.image = UIImage(named: DSORPujertLoafmuiner.shmured.allRpbertDSOR[indexPath.row].roberPicds )
            dsorcee.robertnameDSOR.text = DSORPujertLoafmuiner.shmured.allRpbertDSOR[indexPath.row].roberNameds
            
            dsorcee.roberSeecDSOR.text = DSORPujertLoafmuiner.shmured.allRpbertDSOR[indexPath.row].counsedDS
            
            dsorcee.roberbriefDSOR.text = DSORPujertLoafmuiner.shmured.allRpbertDSOR[indexPath.row].roberBeiefds
            dsorcee.roberTypeDSOR.text = DSORPujertLoafmuiner.shmured.allRpbertDSOR[indexPath.row].roberTypeds
            
            return dsorcee
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.activeCollviewDSOR {
            let dsorDAta =  DSORPujertLoafmuiner.shmured.ownedRobertDSOR[indexPath.row]
            
            let dsorevc = DSORAiChatFailrTale.init(dsorRoberDAta: dsorDAta)
            self.navigationController?.pushViewController(dsorevc, animated: true)
            
            
        }else{
            
            let dsorDAta =  DSORPujertLoafmuiner.shmured.allRpbertDSOR[indexPath.row]
            
            let dsorevc = DSORAiChatFailrTale.init(dsorRoberDAta: dsorDAta)
            self.navigationController?.pushViewController(dsorevc, animated: true)
        }
    }
    
    
    
}
