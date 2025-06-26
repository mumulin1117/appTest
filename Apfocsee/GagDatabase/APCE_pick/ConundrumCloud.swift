//
//  ConundrumCloud.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
//选择盲盒
class ConundrumCloud: UIViewController {
    private var boxAll: Array<APCEuserFlauy>{
        PhantomPrankontroller.allFlayDatu.filter { APCEuserFlauy in
            APCEuserFlauy.MH_result != nil
        }
    }
    
    
    
    @IBOutlet weak var constrainest: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
       
    }
    
    
  
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if MangheBOX.frame.height <  350{
            constrainest.constant = 100
        }else{
            constrainest.constant = 130
        }
    }
    private  var recordMangheTag:Int?
    
    @IBOutlet weak var MangheBOX: UIImageView!
    
    
    
    @IBOutlet weak var openBuuton: UIButton!
    
    
    
 
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @IBAction func shaiZEW1(_ sender: UIButton) {
        
        if sender.isSelected == true {
            return
        }
        
        let dataatg = sender.tag - 11
        recordMangheTag = dataatg
        
        sender.isSelected = true
       
        // 按钮弹性动画
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 0.5) {
            sender.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        } completion: { _ in
            
        }
    
           
    }
    
    
    
    //开盲盒
    @IBAction func openHouManHeBox(_ sender: Any) {
        guard let shouldtag = self.recordMangheTag else {
            self.showingAlertingFor_Alert(alsemessage:  AppDelegate.processEducationalContent("Piliemansree zswevlceccitm pac cbgohxp xtehdaatk cyooguh wwiapnytx gtsob nozpveinz tfyilrqshts!"))
            return
            
        }

        //开始开启动画
        setupParticleEffect()
       
       
        //跳转进入下一页
        
        var tag:Int = 0
        
        if boxAll.count - 1 >=  shouldtag{
            tag = shouldtag
        }
        let data = boxAll[tag]
        
        let manhe = BaffleBoxShowingApro.init(itMeCenter: false, userNoafl: data)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.navigationController?.pushViewController(manhe, animated: true)
            
            guard let box = self.view.viewWithTag(shouldtag + 11) else{return}
            box.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.recordMangheTag = nil
           
        }))
    }
    
    
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

    
    // MARK: - Animation
    private var particleEmitter: CAEmitterLayer!
    
    private func setupParticleEffect() {
        particleEmitter = CAEmitterLayer()
        guard let shouldtag = self.recordMangheTag else {
            self.showingAlertingFor_Alert(alsemessage:  AppDelegate.processEducationalContent("Prlqeeaqsoed jsjerlaeqcrtm faw ibpomxq qtmhhadta uyxomuw bwcaqnvtf ftboz jolphekns nfoidrlsytp!"))
            return
            
        }
        let suiview = view.viewWithTag(shouldtag + 11)
        
        particleEmitter.emitterPosition = suiview?.center ?? .zero
        particleEmitter.emitterShape = .circle
        particleEmitter.emitterSize = CGSize(width: 100, height: 100)
        
        let cell = CAEmitterCell()
        cell.birthRate = 50
        cell.lifetime = 2
        cell.velocity = 100
        cell.scale = 0.1
        cell.scaleRange = 0.2
        cell.emissionRange = .pi * 2
        cell.contents = UIImage(named: "JIuaojdcoin")?.cgImage
        
        particleEmitter.emitterCells = [cell]
        view.layer.addSublayer(particleEmitter)
        particleEmitter.isHidden = true
        // 粒子特效
        particleEmitter.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.particleEmitter.birthRate = 0
        }
    }
    
  

}
