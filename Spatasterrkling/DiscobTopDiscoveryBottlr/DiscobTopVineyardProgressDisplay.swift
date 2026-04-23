//
//  DiscobTopVineyardProgressDisplay.swift
//  Spatasterrkling
//
//  Created by  on 2025/10/31.
//

import UIKit
 class DiscobTopVineyardProgressDisplay {
    private let DiscobTopfermentationView = UIView()
    private let DiscobTopbarrelIndicator = UIActivityIndicatorView(style: .large)
    private let DiscobTopvintageLabel = UILabel()
    
    func DiscobTopcommenceFermentation(DiscobTopin hostView: UIView) {
        prepareDiscobTopFermentationVessel(hostView)
        DiscobTopinitiateBarrelAging()
    }
    
    func DiscobTopconcludeFermentation() {
        DiscobTopbarrelIndicator.stopAnimating()
        DiscobTopfermentationView.removeFromSuperview()
    }
    
    func DiscobTopupdateVintageNotes(_ notes: String) {
        DiscobTopvintageLabel.text = notes
    }
    
    func DiscobToppresentHarvestSuccess(DiscobTopin hostView: UIView, DiscobTopmessage: String,DiscobTopifIssucceff:Bool = true) {
        let succeDiscobTopssView = DiscobTopprepareSuccessDisplay(DiscobTopmessage,DiscobTopifIssucceDiscobTop:DiscobTopifIssucceff)
        hostView.addSubview(succeDiscobTopssView)
        
        UIView.animate(withDuration: 0.3) {
            succeDiscobTopssView.alpha = 1
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            UIView.animate(withDuration: 0.3) {
                succeDiscobTopssView.alpha = 0
            } completion: { _ in
                succeDiscobTopssView.removeFromSuperview()
            }
        }
    }
    
    private func prepareDiscobTopFermentationVessel(_ hostView: UIView) {
        DiscobTopfermentationView.backgroundColor = UIColor(white: 0, alpha: 0.7)
        DiscobTopfermentationView.layer.cornerRadius = 12
        DiscobTopfermentationView.alpha = 0
        
        DiscobTopbarrelIndicator.color = .white
        DiscobTopbarrelIndicator.startAnimating()
        
        DiscobTopvintageLabel.textColor = .white
        DiscobTopvintageLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        DiscobTopvintageLabel.textAlignment = .center
        
        hostView.addSubview(DiscobTopfermentationView)
        DiscobTopfermentationView.addSubview(DiscobTopbarrelIndicator)
        DiscobTopfermentationView.addSubview(DiscobTopvintageLabel)
        
        DiscobToppositionFermentationElements(hostView)
        
        UIView.animate(withDuration: 0.3) {
            self.DiscobTopfermentationView.alpha = 1
        }
    }
    
    private func DiscobToppositionFermentationElements(_ hostView: UIView) {
        DiscobTopfermentationView.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopbarrelIndicator.translatesAutoresizingMaskIntoConstraints = false
        DiscobTopvintageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            DiscobTopfermentationView.centerXAnchor.constraint(equalTo: hostView.centerXAnchor),
            DiscobTopfermentationView.centerYAnchor.constraint(equalTo: hostView.centerYAnchor),
            DiscobTopfermentationView.widthAnchor.constraint(equalToConstant: 140),
            DiscobTopfermentationView.heightAnchor.constraint(equalToConstant: 120),
            
            DiscobTopbarrelIndicator.centerXAnchor.constraint(equalTo: DiscobTopfermentationView.centerXAnchor),
            DiscobTopbarrelIndicator.topAnchor.constraint(equalTo: DiscobTopfermentationView.topAnchor, constant: 24),
            
            DiscobTopvintageLabel.centerXAnchor.constraint(equalTo: DiscobTopfermentationView.centerXAnchor),
            DiscobTopvintageLabel.topAnchor.constraint(equalTo: DiscobTopbarrelIndicator.bottomAnchor, constant: 16),
            DiscobTopvintageLabel.leadingAnchor.constraint(equalTo: DiscobTopfermentationView.leadingAnchor, constant: 12),
            DiscobTopvintageLabel.trailingAnchor.constraint(equalTo: DiscobTopfermentationView.trailingAnchor, constant: -12)
        ])
    }
    
    private func DiscobTopinitiateBarrelAging() {
        let DiscobToprotation = CABasicAnimation(keyPath: "transform.rotation")
        DiscobToprotation.toValue = NSNumber(value: Double.pi * 2)
        DiscobToprotation.duration = 1
        DiscobToprotation.repeatCount = .infinity
        DiscobTopbarrelIndicator.layer.add(DiscobToprotation, forKey: "barrelRotation")
    }
    
     private func DiscobTopprepareSuccessDisplay(_ message: String,DiscobTopifIssucceDiscobTop:Bool = true) -> UIView {
        let DiscobTopsuccessBarrel = UIView()
        DiscobTopsuccessBarrel.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.3, alpha: 0.9)
        DiscobTopsuccessBarrel.layer.cornerRadius = 8
        DiscobTopsuccessBarrel.alpha = 0
        
        let checkmark = UILabel()
         if DiscobTopifIssucceDiscobTop {
             checkmark.text = "✓"
         }else{
             checkmark.text = "!"
         }
        
        checkmark.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        checkmark.textColor = .white
        checkmark.textAlignment = .center
        
        let DiscobTopsuccessLabel = UILabel()
        DiscobTopsuccessLabel.text = message
        DiscobTopsuccessLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
         if DiscobTopifIssucceDiscobTop {
             DiscobTopsuccessLabel.textColor = .white
         }else{
             DiscobTopsuccessLabel.textColor = .red
         }
        
        DiscobTopsuccessLabel.textAlignment = .center
        DiscobTopsuccessLabel.numberOfLines = 0
        
        DiscobTopsuccessBarrel.addSubview(checkmark)
        DiscobTopsuccessBarrel.addSubview(DiscobTopsuccessLabel)
        
        DiscobToppositionSuccessElements(DiscobTopcheckmark: checkmark, DiscobToplabel: DiscobTopsuccessLabel, DiscobTopcontainer: DiscobTopsuccessBarrel)
        
        return DiscobTopsuccessBarrel
    }
    
    private func DiscobToppositionSuccessElements(DiscobTopcheckmark: UILabel, DiscobToplabel: UILabel, DiscobTopcontainer: UIView) {
        DiscobTopcheckmark.translatesAutoresizingMaskIntoConstraints = false
        DiscobToplabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            DiscobTopcontainer.widthAnchor.constraint(equalToConstant: 200),
            
            DiscobTopcheckmark.centerXAnchor.constraint(equalTo: DiscobTopcontainer.centerXAnchor),
            DiscobTopcheckmark.topAnchor.constraint(equalTo: DiscobTopcontainer.topAnchor, constant: 16),
            
            DiscobToplabel.centerXAnchor.constraint(equalTo: DiscobTopcontainer.centerXAnchor),
            DiscobToplabel.topAnchor.constraint(equalTo: DiscobTopcheckmark.bottomAnchor, constant: 8),
            DiscobToplabel.leadingAnchor.constraint(equalTo: DiscobTopcontainer.leadingAnchor, constant: 12),
            DiscobToplabel.trailingAnchor.constraint(equalTo: DiscobTopcontainer.trailingAnchor, constant: -12),
            DiscobToplabel.bottomAnchor.constraint(equalTo: DiscobTopcontainer.bottomAnchor, constant: -16)
        ])
    }
}


