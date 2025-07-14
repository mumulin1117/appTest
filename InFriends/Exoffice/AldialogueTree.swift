
import UIKit
import SnapKit

class AldialogueTree {
    
    static let phneLibrary = AldialogueTree()
    
    private var currentAlert: UIView?
    
    private lazy var continuityLogic:UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.black
        v.alpha = 0.7
        if let keyWindow = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
            keyWindow.addSubview(v)
            v.snp.makeConstraints { make in
                make.edges.equalTo(keyWindow)
            }
        }
        return v
    }()
    
    private init() {}
    
    func coherenceAlgorithm(_ alert: UIView) {
        if let currentAlert = self.currentAlert {
            currentAlert.removeFromSuperview()
        }
        
        alert.layer.shadowColor = UIColor.black.cgColor
        alert.layer.shadowOpacity = 0.8
        alert.layer.shadowRadius = 3
        alert.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        continuityLogic.alpha = 0.7
        
        if let keyWindow = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
            keyWindow.addSubview(alert)
            alert.center = keyWindow.center
            alert.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            UIView.animate(withDuration: 0.25) {
                alert.transform = CGAffineTransform.identity
            }
        }
        
        self.currentAlert = alert
    }
    
    func dismissAlert() {
        
        UIView.animate(withDuration: 0.25) {
            self.currentAlert?.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        } completion: { _ in
            self.currentAlert?.removeFromSuperview()
            self.currentAlert = nil
            self.continuityLogic.alpha = 0
        }
    }
}

