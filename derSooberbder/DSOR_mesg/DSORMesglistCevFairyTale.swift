//
//  DSORMesglistCevFairyTale.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit

class DSORMesglistCevFairyTale: UIViewController {
    lazy var activeCollviewDSOR: UICollectionView = {
        let flayoutDSOR = UICollectionViewFlowLayout.init()
        flayoutDSOR.itemSize = CGSize.init(width: 80, height: 110)
        flayoutDSOR.minimumLineSpacing = 20
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
            flayoutDSOR.minimumInteritemSpacing = 20
            flayoutDSOR.scrollDirection = .horizontal
        }

       
        
        let activeCollview = UICollectionView.init(frame: .zero, collectionViewLayout: flayoutDSOR)
        activeCollview.backgroundColor = .clear
        activeCollview.delegate = self
        activeCollview.dataSource = self
     
                
        activeCollview.register(DSORMesgTompCell.self, forCellWithReuseIdentifier: "DSORMesgTompCellID")
        
        
        return activeCollview
    }()
    
    
    lazy var latestRobertCollviewDSOR: UICollectionView = {
        let flayoutDSOR = UICollectionViewFlowLayout.init()
        flayoutDSOR.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 120 - 8, height: 100)
        flayoutDSOR.minimumLineSpacing = 12
        flayoutDSOR.minimumInteritemSpacing = 12
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
            flayoutDSOR.scrollDirection = .vertical
        }

        
        let activeCollview = UICollectionView.init(frame: .zero, collectionViewLayout: flayoutDSOR)
        activeCollview.backgroundColor = .clear
        activeCollview.delegate = self
        activeCollview.dataSource = self
        
        let nibDSORn = UINib(nibName: "DSORMesgChalisCell", bundle: nil)
        activeCollview.register(nibDSORn, forCellWithReuseIdentifier: "DSORMesgChalisCellID")
        activeCollview.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
        return activeCollview
    }()
    
    let empryholsedrMe = UILabel.init()
    let empryUsertopdrMe = UILabel.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        activeCollviewDSOR.isHidden = true
        latestRobertCollviewDSOR.isHidden = true
        empryUsertopdrMe.text = "It's empty. No active user here. "
        empryUsertopdrMe.textColor = UIColor(red: 1, green: 1, blue: 1,alpha:1.000000)
        empryUsertopdrMe.numberOfLines = 0
        empryUsertopdrMe.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        empryUsertopdrMe.textAlignment = .center
        
        empryholsedrMe.text = "It's empty. There's no message here. "
        empryholsedrMe.textColor = UIColor(red: 1, green: 1, blue: 1,alpha:1.000000)
        empryholsedrMe.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        empryholsedrMe.numberOfLines = 0
        empryholsedrMe.textAlignment = .center
        
        
       
        
        let voberDSOR = UIImageView(image: UIImage.init(named: "idiscove_viewbgbg"))
        
        voberDSOR.contentMode = .scaleToFill
        view.addSubview(voberDSOR)
        voberDSOR.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let activelabel = UILabel.init()
        activelabel.textColor = .white
        activelabel.text = "Active"
        activelabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addSubview(activelabel)
        
        view.addSubview(empryUsertopdrMe)
        empryUsertopdrMe.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(activelabel.snp.bottom).offset(50)
        }
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
        
        let latestlabel = UILabel.init()
        latestlabel.textColor = .white
        latestlabel.text = "Latest"
        latestlabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addSubview(latestlabel)
        latestlabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(112)
            make.top.equalTo(activeCollviewDSOR.snp.bottom).offset(40)
        }
        view.addSubview(self.latestRobertCollviewDSOR)
        latestRobertCollviewDSOR.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(112)
            make.top.equalTo(latestlabel.snp.bottom).offset(16)
            make.trailing.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(reloadAllShonginUIDSOR), name: NSNotification.Name.init("deleteringUnlikeUserDSOR"), object: nil)
       
        
        view.addSubview(empryholsedrMe)
        empryholsedrMe.snp.makeConstraints { make in
            make.centerX.equalTo(latestRobertCollviewDSOR)
            make.width.equalTo(150)
            make.top.equalTo(latestRobertCollviewDSOR.snp.top).offset(80)
        }
        
        self.view.makeToastActivity(.center)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
            self.activeCollviewDSOR.isHidden = false
            self.latestRobertCollviewDSOR.isHidden = false
            self.view.hideToastActivity()
            
        }
        
    }
    
  @objc  func reloadAllShonginUIDSOR()  {
      if DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR.count == 0 {
          self.empryholsedrMe.isHidden = false
          
      }else{
          self.empryholsedrMe.isHidden = true
      }
      
      
      if DSORPujertLoafmuiner.shmured.useringTotalDSOR.count == 0 {
          self.empryUsertopdrMe.isHidden = false
          
      }else{
          self.empryUsertopdrMe.isHidden = true
      }
      
      self.activeCollviewDSOR.reloadData()
      self.latestRobertCollviewDSOR.reloadData()
     
    }
 
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadAllShonginUIDSOR()
    }

}
extension DSORMesglistCevFairyTale:UICollectionViewDelegate,UICollectionViewDataSource{
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.activeCollviewDSOR {
            return DSORPujertLoafmuiner.shmured.useringTotalDSOR.count
        }else{
            return DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.activeCollviewDSOR {
            let dsorcee = collectionView.dequeueReusableCell(withReuseIdentifier: "DSORMesgTompCellID", for: indexPath) as! DSORMesgTompCell
            dsorcee.robertnameDSOR.text = DSORPujertLoafmuiner.shmured.useringTotalDSOR[indexPath.row].dsNAme
            dsorcee.robercentHEaderDSOR.image = UIImage(named: DSORPujertLoafmuiner.shmured.useringTotalDSOR[indexPath.row].dsPic)
            
            return dsorcee
            
        }else{
            let dsorcee = collectionView.dequeueReusableCell(withReuseIdentifier: "DSORMesgChalisCellID", for: indexPath) as! DSORMesgChalisCell
            dsorcee.usernalekDSOR.text = DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR[indexPath.row].uierDS.dsNAme
            dsorcee.avatoDSOR.image = UIImage(named: DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR[indexPath.row].uierDS.dsPic )
            dsorcee.userSaingContetnlvl.text = DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR[indexPath.row].phomrLisrDSOR.first?.saingcontenDSOR
            return dsorcee
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.activeCollviewDSOR {
            let dsorDAta =  DSORPujertLoafmuiner.shmured.useringTotalDSOR[indexPath.row]
            
            let dsorevc = DSORUderCentwrrFairtale.init(usersingenterDSOR: dsorDAta)
            self.navigationController?.pushViewController(dsorevc, animated: true)
            
            
        }else{
            
            let dsorDAta =  DSORPujertLoafmuiner.shmured.mewsessageLisstDSOR[indexPath.row]
            
            self.navigationController?.pushViewController(DSORChatuserFairtale.init(diolog: dsorDAta), animated: true)
            
            
//
//            let dsorevc = DSORAiChatFailrTale.init(dsorRoberDAta: dsorDAta)
//            self.navigationController?.pushViewController(dsorevc, animated: true)
        }
    }
    
    
    
}
