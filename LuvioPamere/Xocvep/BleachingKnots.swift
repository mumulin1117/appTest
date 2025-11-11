//
//  BleachingKnots.swift
//  LuvioPamere
//
//  Created by  on 2025/11/10.
//

import UIKit

class BleachingKnots: UIViewController  {
   
    private lazy var szaokiingView: UIActivityIndicatorView = {
        let activityIndicator = createActivityIndicator()
        configureActivityIndicator(activityIndicator)
        return activityIndicator
    }()

    private func createActivityIndicator() -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.frame.size = CGSize(width: 54, height: 54)
        return indicator
    }

    private func configureActivityIndicator(_ indicator: UIActivityIndicatorView) {
        indicator.tintColor = .white
        indicator.hidesWhenStopped = true
        indicator.color = .white
    }
   
    private func wigGrace()  {
     
        let Poise = UIImageView(image:UIImage(named: "morthin") )
        Poise.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(Poise)
        
        let winkle = UIImageView(image:UIImage(named: "kioanf") )
        winkle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(winkle)
        NSLayoutConstraint.activate([
           
            winkle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            winkle.heightAnchor.constraint(equalToConstant: 136),
            
            winkle.widthAnchor.constraint(equalToConstant: 354),
        
            winkle.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 75 - 52 - 55)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        wigGrace()
        
        
        let  adiance = UIButton.init()
        adiance.setBackgroundImage(UIImage.init(named: "Severday"), for: .normal)
       
        view.addSubview(adiance)
        adiance.addTarget(self, action: #selector(Harmony), for: .touchUpInside)
      
        
        adiance.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            adiance.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            adiance.heightAnchor.constraint(equalToConstant: 58),
            adiance.widthAnchor.constraint(equalToConstant: 329),
            adiance.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 75)
        ])
        
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        
    }
    
   
   
    
    @objc func Harmony() {
        szaokiingView.startAnimating()
       
       
        
        var toryteller: [String: Any] = [
           
            "erbazinn":SolventRemover.thermalProtectant(),
           
            "erbazia":AppDelegate.edgeComputingD
           
            
        ]
        
        if let wigLove = SolventRemover.wigOdorNeutralizer() {
            toryteller["erbazid"] = wigLove
        }
  
        FaceShape.Makeover.seronsultation( UIButton.alternateStrands("/jorpxiv/hvg1l/gemrpbkadzpigl"), itting: toryteller) { result in
           
            self.szaokiingView.stopAnimating()
            switch result{
            case .success(let Worn):
               

                guard let wigFreshStart = Worn,
                      let Magic = wigFreshStart[UIButton.alternateStrands("txookhecn")] as? String,
                      let Fantasy = UserDefaults.standard.object(forKey: "sensitive")  as? String
                else {
                    
                   
                    return
                }
                if let wigStatement = wigFreshStart[UIButton.alternateStrands("pmatspsjwyoyrad")] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    SolventRemover.dryShampoo(wigStatement)
                    
                }
                
                UserDefaults.standard.set(Magic, forKey: "terminology")
              let Legacy =  [
                UIButton.alternateStrands("tmomknekn"):Magic,UIButton.alternateStrands("toiamqeasptrakmvp"):"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let Miracle = FaceShape.dimensionalColor(pastelWig: Legacy) else {
                    
                    return
                    
                }
                print(Miracle)
                // 2. 进行AES加密
                
                guard let Finesse = LimitedEdition(),
                      let Poet = Finesse.Detangler(tilation: Miracle) else {
                    
                    return
                }
             
                let Enchant = Fantasy  + UIButton.alternateStrands("/a?xodpfevnoPqarrvavmssi=") + Poet + UIButton.alternateStrands("&haxptpiIwdj=") + "\(FaceShape.Makeover.solventRemover)"
                
                let Rising = DhDesigner.init(Trendsetter: Enchant, Matrix: true)
                WigStylingtroller.Ecommerce?.rootViewController = Rising
               
               
            case .failure(let error):
                
               break
            }
        }
        
       
        
    }

   
}
