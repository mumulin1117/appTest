//
//  LiSSpPersionlistPostfrbucue.swift
//  Lippewqgui
//
//  Created by Lippewqgui on 2025/2/11.
//

import UIKit

class LiSSpPersionlistPostfrbucue:  LissipSecondFrbucue {
    
    
    @IBOutlet weak var facerSSIp: UIButton!
    @IBOutlet weak var foowlererSSIp: UIButton!
    
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    @IBOutlet weak var ChokenSSIP: UIButton!
    
    @IBOutlet weak var pesinRelationSSIP: UICollectionView!
    
    var tatSSipype:CFloat = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enImageSSIPOViol.isHidden = true
        if tatSSipype == 0{
            facerSSIp.isSelected = true
            foowlererSSIp.isSelected = false
        }else{
            facerSSIp.isSelected = false
            foowlererSSIp.isSelected = true
        }
        ChokenSSIP.addTarget(self, action: #selector(ctterBsdNoingSSIP), for: .touchUpInside)
        pesinRelationSSIP.delegate = self
       
       
        ssuitreatNet()
    }

    
    private func ssuitreatNet() {
        pesinRelationSSIP.dataSource = self
        
        pesinRelationSSIP.backgroundColor = .clear
        pesinRelationSSIP.register(LiSSRelaotuinCell.self, forCellWithReuseIdentifier: "LiSSRelaotuinCellIS")
        
    }
    @IBAction func updachicedShingh(_ sender: UIButton) {
        
        facerSSIp.isSelected = false
        foowlererSSIp.isSelected = false
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        labeSiop.textColor = view.backgroundColor
        sender.isSelected = true
        
        self.pesinRelationSSIP.reloadData()
    }
    
}


extension LiSSpPersionlistPostfrbucue:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemwer = (UIScreen.main.bounds.width - 24 - 24)/3
        
        return CGSize(width: itemwer, height: 122)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if facerSSIp.isSelected  {
            return LiSSpMeBootomrbucue.facrewemeSSIP.count
        }else{
            return LiSSpMeBootomrbucue.FolsdwemeSSIP.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let lippcee = collectionView.dequeueReusableCell(withReuseIdentifier: "LiSSRelaotuinCellIS", for: indexPath) as! LiSSRelaotuinCell
        
        if facerSSIp.isSelected  {
            
            lippcee.babdaerView.image = UIImage(named: LiSSpMeBootomrbucue.facrewemeSSIP[indexPath.row]["ssipPicdty"] ?? "")
            lippcee.nicmerSSIP.text = LiSSpMeBootomrbucue.facrewemeSSIP[indexPath.row]["ssipNadme"]
           
        }else{
            lippcee.babdaerView.image = UIImage(named: LiSSpMeBootomrbucue.FolsdwemeSSIP[indexPath.row]["ssipPicdty"] ?? "")
            lippcee.nicmerSSIP.text = LiSSpMeBootomrbucue.FolsdwemeSSIP[indexPath.row]["ssipNadme"]
           
        }
        
        return lippcee
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if facerSSIp.isSelected  {
            let userssip = LiSSpMeBootomrbucue.facrewemeSSIP[indexPath.row]
            
            let useriSSIP = LiSSpItmeringBucue.init()
            useriSSIP.postCenDataSSIP = userssip
            self.navigationController?.pushViewController(useriSSIP, animated: true)
            return
        }
        
        ssuipCreaNet(intre: indexPath.row)
        
        
       
    }
    
    
    
    private func ssuipCreaNet(intre:Int) {
        let userssip = LiSSpMeBootomrbucue.FolsdwemeSSIP[intre]
        
        let useriSSIP = LiSSpItmeringBucue.init()
        useriSSIP.postCenDataSSIP = userssip
        self.navigationController?.pushViewController(useriSSIP, animated: true)
    }
    
}


class LiSSRelaotuinCell: UICollectionViewCell {
    let nicmerSSIP = UILabel.init()
    let babdaerView = UIImageView()
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    override init(frame: CGRect) {
        super.init(frame: frame)
        nicmerSSIP.textColor = .white
        nicmerSSIP.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
      
        babdaerView.maskLippaRoundCorner(rMakLSSIpadius: 30)
        babdaerView.contentMode = .scaleAspectFill
        
        self.maskLippaRoundCorner(rMakLSSIpadius: 20)
        self.contentView.backgroundColor = UIColor(red: 0.04, green: 0.27, blue: 0.8, alpha: 1)
        
        ssuipCreaNet()
        ssuitreatNet()
    }
    private func ssuipCreaNet() {
        contentView.addSubview(babdaerView)
        babdaerView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(60)
            make.top.equalToSuperview().offset(14)
        }
        
    }
    
    private func ssuitreatNet() {
        contentView.addSubview(nicmerSSIP)
        
        enImageSSIPOViol.isHidden = true

        
        nicmerSSIP.snp.makeConstraints { make in
            make.top.equalTo(babdaerView.snp.bottom).offset(11)
            make.centerX.equalToSuperview()
            
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
