//
//  GSDDRealtiongpminein.swift
//  GueddSinkng
//
//  Created by User on 2025/2/22.
//

import UIKit

class GSDDRealtiongpminein: UIViewController {
   
    
    var ModelgGSDD:Array<GSDDAbountUserinfo>?{
        didSet{
            if let datrt = ModelgGSDD  {
                for (oiii,item) in datrt.enumerated() {
                    let butonh = GSDDREaltionButton.init(frame: CGRect.init(x: 15 + (15 + 90)*oiii, y: Int(framtipStartinset) + 30 + 30, width:90, height: 130))
                    butonh.tag = oiii
                    butonh.topAbtior.image = UIImage(named: item.gsddPIav)
                    butonh.addTarget(self, action: #selector(ginoUseringop), for: .touchUpInside)
                    butonh.aviotherAbtior.text = item.gsddNjmet
                    view.addSubview(butonh)
                    
                }
            }
           
        }
    }
    
    var relaitonStrFS:String?{
        didSet{
            emionext.text = relaitonStrFS
        }
    }
    
    
    @objc func ginoUseringop(hyio:UIButton)  {
        guard let mingui = ModelgGSDD?[hyio.tag] else {
            return
        }
        self.navigationController?.pushViewController(GSDDOgthsdergtaoDComin.init(plazDeinGSDD: mingui), animated: true)
        
    }
    let emionext = UILabel.init()
    override func viewDidLoad() {
        super.viewDidLoad()

        //背景
        let nameringGSDD = UIImageView(image: UIImage.init(named: "mengbanGSDD"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
        view.addSubview(nameringGSDD)
        
        
        //backutton
        let bagcloGSDD = UIButton.init(frame: CGRect.init(x:18, y: framtipStartinset, width: 30, height: 30))
        bagcloGSDD.setBackgroundImage(UIImage.init(named: "backDSGG"), for: .normal)
       
        bagcloGSDD.addTarget(self, action: #selector(bagerinOkayot), for: .touchUpInside)
    
        view.addSubview(bagcloGSDD)
        
        
        
       
        emionext.textColor = .white
        emionext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.addSubview(emionext)
        emionext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(bagcloGSDD)
        }
        
       
        
        
        
    }
    

    @objc  func bagerinOkayot() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}


class GSDDREaltionButton: UIButton {
    let topAbtior = UIImageView()
    let aviotherAbtior = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.24, green: 0.18, blue: 0.41, alpha: 1)
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        
        topAbtior.contentMode = .scaleAspectFill
        topAbtior.layer.cornerRadius = 30
        topAbtior.layer.masksToBounds = true
        
        aviotherAbtior.textAlignment = .center
        aviotherAbtior.textColor = .white
        aviotherAbtior.textAlignment = .center
        aviotherAbtior.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        addSubview(topAbtior)
        addSubview(aviotherAbtior)
        
        topAbtior.snp.makeConstraints { make in
            make.width.height.equalTo(60.x_GSDD)
            make.top.equalToSuperview().offset(12)
            make.centerX.equalToSuperview()
        }
        
        aviotherAbtior.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.top.equalTo(topAbtior.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
}

