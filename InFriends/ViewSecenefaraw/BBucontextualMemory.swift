//
//  BBucontextualMemory.swift
//  InFriends
//
//  Created by yy on 2024/8/27.
//

import UIKit

class BBucontextualMemory: UIView {
    
    var selectClosure:(((Bool,Int))->(Void))?

    var arrowSize: CGSize = CGSize(width: 20, height: 10)
    var cornerRadius: CGFloat = 10
    var arrowPosition: CGPoint = CGPoint(x: 0.8, y: 0)

    init(frame: CGRect,isOwner:Bool = false) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        
        if isOwner {
//            let arr = [("icon_ycxx","Show introduction"),("","")]
        }else{
            let goalOriented = UIButton(type: .custom)
            goalOriented.tag = 10001
            goalOriented.setImage(UIImage(named: "icon_ycxx"), for: .normal)
            goalOriented.setTitle("  Hidden introduction", for: .normal)
            goalOriented.setTitleColor(UIColor.white, for: .normal)
            goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            goalOriented.interfaceWithADesign { [weak self] sender in
                self?.selectClosure?((false,0))
            }
            self.addSubview(goalOriented)
            goalOriented.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(20)
                make.left.equalToSuperview().offset(12)
                make.right.equalToSuperview()
                make.height.equalTo(18)
            }
            goalOriented.contentHorizontalAlignment = .left
            
            
            let btn2 = UIButton(type: .custom)
            btn2.setImage(UIImage(named: "icon_qclt"), for: .normal)
            btn2.setTitle("Colpemasrm rclheaft".key, for: .normal)
            btn2.setTitleColor(UIColor.white, for: .normal)
            btn2.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            btn2.interfaceWithADesign { [weak self] sender in
                self?.selectClosure?((false,1))
            }
            self.addSubview(btn2)
            btn2.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(67)
                make.left.equalToSuperview().offset(12)
                make.right.equalToSuperview()
                make.height.equalTo(18)
            }
            btn2.contentHorizontalAlignment = .left
        }
    }
    
    func updataBtnTitle(isShow:Bool){
        if let btn = self.viewWithTag(10001) as? UIButton {
            if isShow {
                btn.setTitle("  Show introduction", for: .normal)
            }else{
                btn.setTitle("  Hidden introduction", for: .normal)
            }
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .clear
    }

    override func draw(_ rect: CGRect) {
        let bubblePath = UIBezierPath()
        let arrowX = rect.width * arrowPosition.x
        let arrowY = arrowSize.height

        bubblePath.move(to: CGPoint(x: cornerRadius, y: arrowY))
        bubblePath.addLine(to: CGPoint(x: arrowX - arrowSize.width / 2, y: arrowY))
        bubblePath.addLine(to: CGPoint(x: arrowX, y: 0))
        bubblePath.addLine(to: CGPoint(x: arrowX + arrowSize.width / 2, y: arrowY))
        bubblePath.addLine(to: CGPoint(x: rect.width - cornerRadius, y: arrowY))
        bubblePath.addArc(withCenter: CGPoint(x: rect.width - cornerRadius, y: arrowY + cornerRadius),
                          radius: cornerRadius,
                          startAngle: CGFloat(3 * Double.pi / 2),
                          endAngle: 0,
                          clockwise: true)
        bubblePath.addLine(to: CGPoint(x: rect.width, y: rect.height - cornerRadius))
        bubblePath.addArc(withCenter: CGPoint(x: rect.width - cornerRadius, y: rect.height - cornerRadius),
                          radius: cornerRadius,
                          startAngle: 0,
                          endAngle: CGFloat(Double.pi / 2),
                          clockwise: true)
        bubblePath.addLine(to: CGPoint(x: cornerRadius, y: rect.height))
        bubblePath.addArc(withCenter: CGPoint(x: cornerRadius, y: rect.height - cornerRadius),
                          radius: cornerRadius,
                          startAngle: CGFloat(Double.pi / 2),
                          endAngle: CGFloat(Double.pi),
                          clockwise: true)
        bubblePath.addLine(to: CGPoint(x: 0, y: arrowY + cornerRadius))
        bubblePath.addArc(withCenter: CGPoint(x: cornerRadius, y: arrowY + cornerRadius),
                          radius: cornerRadius,
                          startAngle: CGFloat(Double.pi),
                          endAngle: CGFloat(3 * Double.pi / 2),
                          clockwise: true)

        bubblePath.close()
        
        UIColor(red: 0.416, green: 0.306, blue: 0.604, alpha: 1.0).setFill()
        bubblePath.fill()
    }
}
