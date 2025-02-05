//
//  PEAURelaitedell.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/30.
//

import UIKit

class PEAURelaitedell: UICollectionViewCell {
    @IBOutlet weak var realHeaderfPink: UIImageView!
    
    @IBOutlet weak var realNamePink: UILabel!
    
    @IBOutlet weak var realdescribePEAlbl: UILabel!
    
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
    func createrActivyIncationwrePEA(){
        indicatinActiViewPEA = UIActivityIndicatorView(style: .medium)
       
        indicatinActiViewPEA?.hidesWhenStopped = true
        
        indicatinActiViewPEA?.color = .purple
       
          
        indicatinActiViewPEA?.translatesAutoresizingMaskIntoConstraints = false
       
        
        if rnpincolro.count < 2 {
            contentView.addSubview(indicatinActiViewPEA!)
            indicatinActiViewPEA?.isHidden = true
            indicatinActiViewPEA?.snp.makeConstraints({ make in
                make.width.height.equalTo(0)
                make.center.equalToSuperview()
            })
            indicatinActiViewPEA?.startAnimating()
        }
    }
    
    
    func personalizedRandomColoPEAr() {
        
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        realHeaderfPink.contentMode = .scaleAspectFill
        realHeaderfPink.layer.cornerRadius = 27
        realHeaderfPink.layer.masksToBounds = true
    }

}
