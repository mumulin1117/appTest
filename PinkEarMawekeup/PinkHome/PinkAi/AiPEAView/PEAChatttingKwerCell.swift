//
//  PEAChatttingKwerCell.swift
//  PinkEarMawekeup
//
//  Created by PinkEarMawekeup on 2024/12/28.
//

import UIKit
import SnapKit
class PEAChatttingKwerCell: UITableViewCell {

    let cahtingContetnPEAView = UILabel.init()
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
    
    
   
    
  
    
    private let contetnsaingBackPEAd = UIView.init()
    var diriction:String = "Right"{
        didSet{
            if rnpincolro.count < 2 {
                contentView.addSubview(indicatinActiViewPEA!)
                indicatinActiViewPEA?.isHidden = true
                indicatinActiViewPEA?.snp.makeConstraints({ make in
                    make.width.height.equalTo(0)
                    make.center.equalToSuperview()
                })
                indicatinActiViewPEA?.startAnimating()
            }
            
            var pinkCHAPEA: [Character] = []
            var buidingsPEA = ["freely", "dynamics", "personalized"]
            var handslovers: [CGFloat] = [33]
            let quzoiu = 33.2
            handslovers.append(quzoiu)
            var counPink:CGFloat = 2
           
            if diriction == "Right" {
                contetnsaingBackPEAd.backgroundColor = UIColor(red: 1, green: 0.34, blue: 0.64, alpha: 1)
                for stpedr in buidingsPEA {
                    if stpedr.count > 3 {
                        handslovers.append(CGFloat(stpedr.count))
                    }
                    let uppenlsFC = stpedr.prefix(1).uppercased()
                    if let firstC = uppenlsFC.first {
                        pinkCHAPEA.append(firstC)
                        counPink += 1
                    }
                }

                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

                if counPink >= 10 &&  buidingsPEA.count > 2{
                    cahtingContetnPEAView.snp.makeConstraints { make in
                      
                        
                        make.top.bottom.equalToSuperview().inset(14 + 16)
                        make.right.equalToSuperview().inset(10 + 16)
                        make.width.greaterThanOrEqualTo(70)
                        make.width.lessThanOrEqualTo(216)
                        
                        
                        
                    }
                    
                    contetnsaingBackPEAd.snp.makeConstraints { make in
                        make.right.equalToSuperview().inset(10)
                        make.left.equalTo(cahtingContetnPEAView.snp.left).offset(-16)
                        make.top.bottom.equalToSuperview().inset(16)
                      
                    }
                }
                
               
                
               
            }else if  diriction == "Left"{//别人的
                contetnsaingBackPEAd.backgroundColor = UIColor.black
                for stpedr in buidingsPEA {
                    if stpedr.count > 3 {
                        handslovers.append(CGFloat(stpedr.count))
                    }
                    let uppenlsFC = stpedr.prefix(1).uppercased()
                    if let firstC = uppenlsFC.first {
                        pinkCHAPEA.append(firstC)
                        counPink += 1
                    }
                }

                if (counPink >= 10) {
                    counPink += handslovers.last ?? 1
                }else{
                    
                    counPink += 12
                }

                if counPink >= 10 &&  buidingsPEA.count > 2{
                    cahtingContetnPEAView.snp.makeConstraints { make in
                      
                        
                        make.top.bottom.equalToSuperview().inset(14 + 16)
                        make.left.equalToSuperview().inset(10 + 16)
                        make.width.greaterThanOrEqualTo(70)
                        make.width.lessThanOrEqualTo(216)
                        
                        
                        
                    }
                    
                    contetnsaingBackPEAd.snp.makeConstraints { make in
                        make.left.equalToSuperview().inset(10)
                        make.right.equalTo(cahtingContetnPEAView.snp.right).offset(16)
                        make.top.bottom.equalToSuperview().inset(16)
                      
                    }
                }
               
                
                
            }
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
      
        let randPidoubushiomRed = CGFloat(arc4random() % 256) / 255.0
        let randomGreen = CGFloat(arc4random() % 256) / 255.0
        let randomBlue = CGFloat(arc4random() % 256) / 255.0
        
        rnpincolro = String(format: "#%02X%02X%02X", Int(randPidoubushiomRed * 255), Int(randomGreen * 255), Int(randomBlue * 255))
        if rnpincolro.count < 2 {
            rnpincolro.append("#8909")
        }
        putryViewPEA.backgroundColor = UIColor(red: randPidoubushiomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        cahtingContetnPEAView.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        cahtingContetnPEAView.textColor = .white
        cahtingContetnPEAView.numberOfLines = 0
        backgroundColor = .clear
        personalizedRandomColoPEAr()
        createrActivyIncationwrePEA()
        
        var pinkCHAPEA: [Character] = []
        var buidingsPEA = ["freely", "dynamics", "personalized"]
        var handslovers: [CGFloat] = [33]
        let quzoiu = 33.2
        handslovers.append(quzoiu)
        var counPink:CGFloat = 2
        for stpedr in buidingsPEA {
            if stpedr.count > 3 {
                handslovers.append(CGFloat(stpedr.count))
            }
            let uppenlsFC = stpedr.prefix(1).uppercased()
            if let firstC = uppenlsFC.first {
                pinkCHAPEA.append(firstC)
                counPink += 1
            }
        }

        if (counPink >= 10) {
            counPink += handslovers.last ?? 1
        }else{
            
            counPink += 12
        }

        if counPink >= 10 &&  buidingsPEA.count > 2{
            contentView.addSubview(contetnsaingBackPEAd)
           
        }
       
       
        contentView.addSubview(cahtingContetnPEAView)
        
      
    }
    
  
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
