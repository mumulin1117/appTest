//
//  Creativeexpressioner.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/25.
//

import UIKit

//Record
class GarbhaGrihaDarshana: HiRoHRalFllaterPicdert {
    private let IAa = UIImageView.init(image: UIImage.init(named: "Make the movement sm"))
    
    
    private lazy var  UIamgn : UIImageView = {
        let xf = UIImageView.init()
        xf.layer.cornerRadius = 15
        xf.isUserInteractionEnabled = true
        xf.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(OSK)))
        xf.layer.masksToBounds = true
        xf.contentMode = .scaleAspectFill
        xf.image = UIImage.init(named: "Dpnati7")
        let cornView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: 146, height: 57))
        cornView.image = UIImage(named: "advafbfbsbs")
        xf.addSubview(cornView)
        
        let chorePayHird = UIButton.init()
        chorePayHird.setBackgroundImage(UIImage.init(named: "repowedgink"), for: .normal)
        
        xf.addSubview(chorePayHird)
        chorePayHird.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.bottom.right.equalToSuperview().inset(20)
        }
        chorePayHird.addTarget(self, action: #selector(Reportuoauddare), for: .touchUpInside)
        return xf
    }()
    //report
    @objc private func Reportuoauddare()  {
        
        
        self.popitiwieu(ifDer: "", moreType: 4)

       
    }
    private lazy var danceNmrelabl: UILabel = {
        let mIgub = UILabel.init(frame: CGRect.init(x: 10, y: 0, width: 146, height: 47))
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 17, weight: .medium)
       
        return mIgub
    }()
    
    
    private lazy var danceTimelabl: UILabel = {
        let mIgub = UILabel.init()
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        return mIgub
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(KAjdijijf), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
       
        self.moreType = 4
        
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        
        let reportButton = UIBarButtonItem(
            image: UIImage(named: "upkoadRecored")?.withRenderingMode(.alwaysOriginal),
            style: .plain,
            target: self,
            action: #selector(UpaloadingRecorenow))
            
            
      
        navigationItem.rightBarButtonItem = reportButton
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        if AppDelegate.IfRemoveRecord == true {
            UIamgn.isHidden = true
            return
        }
        
        IAa.contentMode = .scaleAspectFit
        view.addSubview(IAa)
        IAa.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset((window?.safeAreaInsets.top ?? 0 ) + 40 + 20)
            make.width.equalTo(220)
            make.height.equalTo(56)
        }
        
        AddIniteDanceRecord()
    }
    
    
    @objc func OSK()  {
        self.navigationController?.pushViewController(HairaviAshtakam.init(), animated: true)
    }
    
    
   @objc func KAjdijijf()  {
       if AppDelegate.IfRemoveRecord == true {
           UIamgn.isHidden = true
           
       }
    }
  @objc  func UpaloadingRecorenow()  {
      
      
      self.navigationController?.pushViewController(ConVPBesginRecoerdreTxker.init(), animated: true)
      
      
  }
    
    
    private func AddIniteDanceRecord() {
        
        view.addSubview(UIamgn)
        UIamgn.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(IAa.snp.bottom).offset(15)
            make.height.equalTo(249)
        }
        let startPoint = CGPoint(x: 0, y: 57)
                
        let endPoint = CGPoint(x: 146, y: 0)
        
        // 计算旋转角度
              
        let deltaY = endPoint.y - startPoint.y
        let deltaX = endPoint.x - startPoint.x
        let angle = atan2(deltaY, deltaX)
        self.UIamgn.addSubview(danceNmrelabl)
        danceNmrelabl.center = CGPoint(x: 146/2, y: 47/2)
        danceNmrelabl.transform = CGAffineTransform(rotationAngle: angle)
        danceNmrelabl.text = "One Gest"
        UIamgn.addSubview(self.danceTimelabl)
        danceTimelabl.snp.makeConstraints { make in
            make.trailing.top.equalToSuperview().inset(12)
            
        }
        danceTimelabl.text =  "2025:03:20"
    }
    
   
}
