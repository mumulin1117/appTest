//
//  PEAPinkHomweCell.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/26.
//

import UIKit

class PEAPinkHomweCell: UICollectionViewCell {
    var indicatinActiViewPEA:UIActivityIndicatorView?
    
    @IBOutlet weak var reportNwerBert: UIButton!
    var pinkFAthAChangeingPEA:UIViewController?
    let putryViewPEA = UIView(frame: CGRect.zero)
    
    var rnpincolro:String = "#FF57A4"
    
    func createrActivyIncationwrePEA(){
        indicatinActiViewPEA = UIActivityIndicatorView(style: .medium)
       
        indicatinActiViewPEA?.hidesWhenStopped = true
        
        indicatinActiViewPEA?.color = .purple
       
          
        indicatinActiViewPEA?.translatesAutoresizingMaskIntoConstraints = false
       
        
        if rnpincolro.count < 2 {
            (UIApplication.shared.delegate as? AppDelegate)?.window?.addSubview(indicatinActiViewPEA!)
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
    
    
   
    
    @IBOutlet weak var changeCoverPEAview: UIImageView!
    
    @IBOutlet weak var changeHeighTitlePEAview: UILabel!
    @IBOutlet weak var changdescribPEAview: UILabel!
    
    @IBOutlet weak var participateHeaderPEA: UIImageView!
    
    @IBOutlet weak var partipatCountPEAView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        participateHeaderPEA.layer.cornerRadius = 13
        participateHeaderPEA.layer.masksToBounds = true
        participateHeaderPEA.contentMode = .scaleAspectFill
        
        partipatCountPEAView.layer.cornerRadius = 13
        partipatCountPEAView.layer.masksToBounds = true
        
    }

}
