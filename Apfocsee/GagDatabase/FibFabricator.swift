//
//  FibFabricator.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

class GuffawGadget: UIViewController {
    
    // MARK: - UI Components
    private var mainNavController: FibFabricator!
    
    private var sideMenuVC: LMelinoBarliDxiu!

    
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
    }
    
    // MARK: - Setup
    private func setupViewControllers() {

        mainNavController = FibFabricator()
        
        // 侧边菜单
        sideMenuVC = LMelinoBarliDxiu()
        
        sideMenuVC.delegate = self
        
        // 添加子控制器
        addChild(sideMenuVC)
        view.addSubview(sideMenuVC.view)
        sideMenuVC.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        sideMenuVC.didMove(toParent: self)
        
        addChild(mainNavController)
        view.addSubview(mainNavController.view)
        mainNavController.didMove(toParent: self)
        mainNavController.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
    }
    
    
   

}

// MARK: - SideMenu Delegate
extension GuffawGadget: SideMenuDelegate {
    func didSelectMenuItem() {
        UIView.animate(withDuration: 0.3) {
            self.mainNavController.view.frame.origin.x = 0
        }
        
    }
}


class FibFabricator: APCENEvcer {
    
    @IBOutlet weak var minweICON: UIImageView!
    
    @IBOutlet weak var fooceNameLabel: UILabel!
    
    
    @IBOutlet weak var coinCountbelow: UILabel!//blance
    
    @IBOutlet weak var setringFooce: UIButton!//setting
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let current = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? [String:String]
        fooceNameLabel.text = current?["blindbox_name"]
        coinCountbelow.text = current?["domoned"]
        minweICON.image = PhantomPrankontroller.appChacheimg
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.startAttentionAnimation()
        VirtualTicklishVirus()
        
        
    }


    //site
    @IBAction func moanihdhSite(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3) {
            let menuWidth: CGFloat = UIScreen.main.bounds.width * 0.75
            self.view.frame.origin.x = menuWidth
        }
        
    }
    
    
    
    //coin
    @IBAction func toCoinahole(_ sender: Any) {
        self.navigationController?.pushViewController(TrickGenerator.init(), animated: true)
        
    }
    
    //AI
    @IBAction func AiPrankify(_ sender: Any) {
        self.navigationController?.pushViewController(PrankEngine.init(), animated: true)
       
    }
    
   //开盲盒
    @IBAction func beginMangheSham(_ sender: Any) {
        self.navigationController?.pushViewController(ConundrumCloud.init(), animated: true)
    }
    
    //发布盲盒
    @IBAction func satartMangHe(_ sender: UIButton) {
        self.navigationController?.pushViewController(QuirkRiddleoingApro.init(), animated: true)
    }
    
    
    private func VirtualTicklishVirus()  {
        minweICON.contentMode = .scaleAspectFill
        minweICON.layer.cornerRadius = 22
        minweICON.layer.masksToBounds = true
    }
    
    @IBOutlet weak var cheijdking: UIButton!
    
    func startAttentionAnimation() {
            let rotationAngle: CGFloat = .pi / 32 // 小角度旋转
            let duration: TimeInterval = 0.25
            
            // 移除现有动画
        cheijdking.layer.removeAllAnimations()
            
            // 左右摇摆动画
            let leftWobble = CABasicAnimation(keyPath: "transform.rotation.z")
            leftWobble.toValue = rotationAngle
            leftWobble.duration = duration
            
            let rightWobble = CABasicAnimation(keyPath: "transform.rotation.z")
            rightWobble.toValue = -rotationAngle
            rightWobble.duration = duration
            rightWobble.beginTime = duration
            
            let reset = CABasicAnimation(keyPath: "transform.rotation.z")
            reset.toValue = 0
            reset.duration = duration
            reset.beginTime = duration * 2
            
            // 组合动画
            let animationGroup = CAAnimationGroup()
            animationGroup.animations = [leftWobble, rightWobble, reset]
            animationGroup.duration = duration * 3
            animationGroup.repeatCount = .infinity
            animationGroup.autoreverses = true
            
        cheijdking.layer.add(animationGroup, forKey: "wobble")
            
            // 同步脉冲缩放效果
            UIView.animate(
                withDuration: duration * 2,
                delay: 0,
                options: [.autoreverse, .repeat, .allowUserInteraction],
                animations: {
                    self.cheijdking.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
                }
            )
        }
}


