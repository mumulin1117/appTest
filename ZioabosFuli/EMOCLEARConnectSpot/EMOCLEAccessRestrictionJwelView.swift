//
//  EMOCLEAccessRestrictionJwelView.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/9.
//

import UIKit

class EMOCLEAccessRestrictionJwelView: UIView {
    
    private let coreShelterEMOCLE = UIView()
    private let noticeHeadlineEMOCLE = UILabel()
    private let noticeContentEMOCLE = UILabel()
    private let confirmAvenueEMOCLE = UIButton(type: .system)
    private let dismissAvenueEMOCLE = UIButton(type: .system)
    
    var flowActionEMOCLE: ((Bool) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildSocialProtocolUIEMOCLE()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildSocialProtocolUIEMOCLE() {
        backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        let screenWidthEMOCLE = UIScreen.main.bounds.width
        let scaleEMOCLE = screenWidthEMOCLE / 375.0
        
        coreShelterEMOCLE.backgroundColor = .white
        coreShelterEMOCLE.layer.cornerRadius = 24 * scaleEMOCLE
        coreShelterEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        addSubview(coreShelterEMOCLE)
        
        noticeHeadlineEMOCLE.text = "Notice"
        noticeHeadlineEMOCLE.font = .systemFont(ofSize: 20 * scaleEMOCLE, weight: .bold)
        noticeHeadlineEMOCLE.textAlignment = .center
        noticeHeadlineEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        coreShelterEMOCLE.addSubview(noticeHeadlineEMOCLE)
        
        noticeContentEMOCLE.text = "Only mutually followed friends can send messages and calls. You can send a friend request to the other party."
        noticeContentEMOCLE.font = .systemFont(ofSize: 15 * scaleEMOCLE, weight: .medium)
        noticeContentEMOCLE.textColor = .darkGray
        noticeContentEMOCLE.numberOfLines = 0
        noticeContentEMOCLE.textAlignment = .center
        noticeContentEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        coreShelterEMOCLE.addSubview(noticeContentEMOCLE)
        
        confirmAvenueEMOCLE.setTitle("Confirm", for: .normal)
        confirmAvenueEMOCLE.setTitleColor(.white, for: .normal)
        confirmAvenueEMOCLE.titleLabel?.font = .systemFont(ofSize: 16 * scaleEMOCLE, weight: .bold)
        confirmAvenueEMOCLE.backgroundColor = UIColor(red: 0.55, green: 0.45, blue: 1.0, alpha: 1.0)
        confirmAvenueEMOCLE.layer.cornerRadius = 22 * scaleEMOCLE
        confirmAvenueEMOCLE.addTarget(self, action: #selector(handleAffirmationEMOCLE), for: .touchUpInside)
        confirmAvenueEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        coreShelterEMOCLE.addSubview(confirmAvenueEMOCLE)
        
        dismissAvenueEMOCLE.setTitle("Cancel", for: .normal)
        dismissAvenueEMOCLE.setTitleColor(.lightGray, for: .normal)
        dismissAvenueEMOCLE.titleLabel?.font = .systemFont(ofSize: 16 * scaleEMOCLE, weight: .medium)
        dismissAvenueEMOCLE.addTarget(self, action: #selector(handleDismissalEMOCLE), for: .touchUpInside)
        dismissAvenueEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        coreShelterEMOCLE.addSubview(dismissAvenueEMOCLE)
        
        NSLayoutConstraint.activate([
            coreShelterEMOCLE.centerXAnchor.constraint(equalTo: centerXAnchor),
            coreShelterEMOCLE.centerYAnchor.constraint(equalTo: centerYAnchor),
            coreShelterEMOCLE.widthAnchor.constraint(equalToConstant: 300 * scaleEMOCLE),
            
            noticeHeadlineEMOCLE.topAnchor.constraint(equalTo: coreShelterEMOCLE.topAnchor, constant: 25 * scaleEMOCLE),
            noticeHeadlineEMOCLE.leadingAnchor.constraint(equalTo: coreShelterEMOCLE.leadingAnchor, constant: 20 * scaleEMOCLE),
            noticeHeadlineEMOCLE.trailingAnchor.constraint(equalTo: coreShelterEMOCLE.trailingAnchor, constant: -20 * scaleEMOCLE),
            
            noticeContentEMOCLE.topAnchor.constraint(equalTo: noticeHeadlineEMOCLE.bottomAnchor, constant: 15 * scaleEMOCLE),
            noticeContentEMOCLE.leadingAnchor.constraint(equalTo: coreShelterEMOCLE.leadingAnchor, constant: 25 * scaleEMOCLE),
            noticeContentEMOCLE.trailingAnchor.constraint(equalTo: coreShelterEMOCLE.trailingAnchor, constant: -25 * scaleEMOCLE),
            
            confirmAvenueEMOCLE.topAnchor.constraint(equalTo: noticeContentEMOCLE.bottomAnchor, constant: 25 * scaleEMOCLE),
            confirmAvenueEMOCLE.centerXAnchor.constraint(equalTo: coreShelterEMOCLE.centerXAnchor),
            confirmAvenueEMOCLE.widthAnchor.constraint(equalToConstant: 220 * scaleEMOCLE),
            confirmAvenueEMOCLE.heightAnchor.constraint(equalToConstant: 44 * scaleEMOCLE),
            
            dismissAvenueEMOCLE.topAnchor.constraint(equalTo: confirmAvenueEMOCLE.bottomAnchor, constant: 10 * scaleEMOCLE),
            dismissAvenueEMOCLE.centerXAnchor.constraint(equalTo: coreShelterEMOCLE.centerXAnchor),
            dismissAvenueEMOCLE.bottomAnchor.constraint(equalTo: coreShelterEMOCLE.bottomAnchor, constant: -15 * scaleEMOCLE),
            dismissAvenueEMOCLE.heightAnchor.constraint(equalToConstant: 30 * scaleEMOCLE)
        ])
    }
    
    @objc private func handleAffirmationEMOCLE() {
        flowActionEMOCLE?(true)
        removeFromSuperview()
    }
    
    @objc private func handleDismissalEMOCLE() {
        flowActionEMOCLE?(false)
        removeFromSuperview()
    }
    
    func presentWithinCanvasEMOCLE(_ hostEMOCLE: UIView) {
        self.frame = hostEMOCLE.bounds
        hostEMOCLE.addSubview(self)
        
        coreShelterEMOCLE.alpha = 0
        coreShelterEMOCLE.transform = CGAffineTransform(scaleX: 1.15, y: 1.15)
        
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseOut) {
            self.coreShelterEMOCLE.alpha = 1
            self.coreShelterEMOCLE.transform = .identity
        }
    }
}
