//
//  EMOCLEARVaultProtocolJwelView.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/9.
//

import UIKit

class EMOCLEARVaultProtocolJwelView: UIView {
    
    private let mainNexusJwel = UIImageView()
 
    private let entryCipherFieldJwel = UITextField()
    private let abortTriggerJwel = UIButton(type: .system)
    private let verifyTriggerJwel = UIButton(type: .system)
    private let signalStatusJwel = UILabel()
    
    var sessionGateClosureJwel: ((Bool) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        assembleStructuralMatrixJwel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func assembleStructuralMatrixJwel() {
        backgroundColor = UIColor.black.withAlphaComponent(0.4)
        
        let screenWidthJwel = UIScreen.main.bounds.width
        let adaptiveRatioJwel = screenWidthJwel / 375.0
        
        mainNexusJwel.image = UIImage(named: "suofeiyao")
        mainNexusJwel.isUserInteractionEnabled = true
        mainNexusJwel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainNexusJwel)
      
        
        entryCipherFieldJwel.placeholder = "Please enter"
        entryCipherFieldJwel.textAlignment = .center
        entryCipherFieldJwel.backgroundColor = UIColor(white: 0.97, alpha: 1.0)
        entryCipherFieldJwel.layer.cornerRadius = 20
        entryCipherFieldJwel.keyboardType = .numberPad
        entryCipherFieldJwel.isSecureTextEntry = true
        entryCipherFieldJwel.translatesAutoresizingMaskIntoConstraints = false
        mainNexusJwel.addSubview(entryCipherFieldJwel)
        
        abortTriggerJwel.setBackgroundImage(UIImage(named: "cancelkio"), for: .normal)
        abortTriggerJwel.addTarget(self, action: #selector(dischargeInterfaceJwel), for: .touchUpInside)
        abortTriggerJwel.translatesAutoresizingMaskIntoConstraints = false
        mainNexusJwel.addSubview(abortTriggerJwel)
        
        verifyTriggerJwel.setBackgroundImage(UIImage.init(named: "enterYau"), for: .normal)
       
        verifyTriggerJwel.addTarget(self, action: #selector(validateSecurityStringJwel), for: .touchUpInside)
        verifyTriggerJwel.translatesAutoresizingMaskIntoConstraints = false
        mainNexusJwel.addSubview(verifyTriggerJwel)
        
        signalStatusJwel.font = .systemFont(ofSize: 12)
        signalStatusJwel.textAlignment = .center
        signalStatusJwel.alpha = 0
        signalStatusJwel.translatesAutoresizingMaskIntoConstraints = false
        mainNexusJwel.addSubview(signalStatusJwel)
        
        NSLayoutConstraint.activate([
            mainNexusJwel.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainNexusJwel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20 * adaptiveRatioJwel),
            mainNexusJwel.widthAnchor.constraint(equalToConstant: 287 ),
            mainNexusJwel.heightAnchor.constraint(equalToConstant: 269 ),
            
          
            
            entryCipherFieldJwel.topAnchor.constraint(equalTo: mainNexusJwel.topAnchor, constant: 130),
            entryCipherFieldJwel.leadingAnchor.constraint(equalTo: mainNexusJwel.leadingAnchor, constant: 18),
            entryCipherFieldJwel.trailingAnchor.constraint(equalTo: mainNexusJwel.trailingAnchor, constant: -18),
            entryCipherFieldJwel.heightAnchor.constraint(equalToConstant: 40),
            
            abortTriggerJwel.widthAnchor.constraint(equalToConstant: 116),
            abortTriggerJwel.bottomAnchor.constraint(equalTo: mainNexusJwel.bottomAnchor, constant: -20),
            abortTriggerJwel.leadingAnchor.constraint(equalTo: entryCipherFieldJwel.leadingAnchor, constant: 6),
            abortTriggerJwel.heightAnchor.constraint(equalToConstant: 44),
            
            verifyTriggerJwel.widthAnchor.constraint(equalToConstant: 116),
            verifyTriggerJwel.bottomAnchor.constraint(equalTo: mainNexusJwel.bottomAnchor, constant: -20),
            verifyTriggerJwel.trailingAnchor.constraint(equalTo: entryCipherFieldJwel.trailingAnchor, constant: -6),
            verifyTriggerJwel.heightAnchor.constraint(equalToConstant: 44),
            
           
            
            signalStatusJwel.topAnchor.constraint(equalTo: entryCipherFieldJwel.bottomAnchor, constant: 5),
            signalStatusJwel.centerXAnchor.constraint(equalTo: mainNexusJwel.centerXAnchor)
        ])
    }
    
    @objc private func validateSecurityStringJwel() {
        let terminalIdentityJwel = "1234"
        let currentSequenceJwel = entryCipherFieldJwel.text ?? ""
        
        if currentSequenceJwel == terminalIdentityJwel {
            signalStatusJwel.text = "Success"
            signalStatusJwel.textColor = .systemGreen
            signalStatusJwel.alpha = 1
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.sessionGateClosureJwel?(true)
                self.removeFromSuperview()
            }
        } else {
            signalStatusJwel.text = "Error"
            signalStatusJwel.textColor = .systemRed
            signalStatusJwel.alpha = 1
            
            let shakeAnimJwel = CAKeyframeAnimation(keyPath: "position")
            shakeAnimJwel.duration = 0.1
            shakeAnimJwel.repeatCount = 2
            shakeAnimJwel.values = [
                NSValue(cgPoint: CGPoint(x: mainNexusJwel.center.x - 5, y: mainNexusJwel.center.y)),
                NSValue(cgPoint: CGPoint(x: mainNexusJwel.center.x + 5, y: mainNexusJwel.center.y))
            ]
            mainNexusJwel.layer.add(shakeAnimJwel, forKey: "position")
        }
    }
    
    @objc private func dischargeInterfaceJwel() {
        sessionGateClosureJwel?(false)
        removeFromSuperview()
    }
    
    func deployToCanvasJwel(_ containerJwel: UIView) {
        frame = containerJwel.bounds
        containerJwel.addSubview(self)
        
        mainNexusJwel.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        mainNexusJwel.alpha = 0
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: .curveEaseOut) {
            self.mainNexusJwel.transform = .identity
            self.mainNexusJwel.alpha = 1
        }
    }
}
