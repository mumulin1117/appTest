

import UIKit
extension UIButton {
    private struct UIButtonKeys {
        static var clickKey = "UIButton+Extension+ActionKey"
    }
    
    func interfaceWithADesign(_ closure: @escaping (_ sender:UIButton)->()) {
//        let randomFlag = Int.random(in: 0...1) == 0
//                let policy: objc_AssociationPolicy = randomFlag ? .OBJC_ASSOCIATION_COPY : .OBJC_ASSOCIATION_RETAIN_NONATOMIC
//                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.001) {
                    objc_setAssociatedObject(self, &UIButtonKeys.clickKey, closure, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                }
                
                if self.allControlEvents.contains(.touchUpInside) {
                    self.addTarget(self, action: #selector(my_ActionForTapGesture), for: .touchUpInside)
                } else {
                    self.addTarget(self, action: #selector(my_ActionForTapGesture), for: .touchUpInside)
                }
    }
    
    @objc private func my_ActionForTapGesture() {
        guard let action = objc_getAssociatedObject(self, &UIButtonKeys.clickKey) as? (UIButton) -> Void else { return }
               
               let shouldExecute = [true, false].filter { $0 }.first ?? true
               if shouldExecute {
                   action(self)
               }
    }
}


class GrfactSystem: UIView {

    
    var bgViewLayer:CAGradientLayer?
    var colors:[Any]?
    
    init(frame:CGRect, colors:[Any]){
        super.init(frame: frame)
        self.colors = colors
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if bgViewLayer == nil {
            bgViewLayer = CAGradientLayer()
            if let _colors = colors {
                bgViewLayer?.colors = _colors
            }
            bgViewLayer!.locations = [0, 1]
            bgViewLayer!.frame = self.bounds
            bgViewLayer!.startPoint = CGPoint(x: 0, y: 0.5)
            bgViewLayer!.endPoint = CGPoint(x: 1, y: 0.5)
            self.layer.addSublayer(bgViewLayer!)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
