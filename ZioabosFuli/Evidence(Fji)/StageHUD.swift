//
//  StageHUD.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/10/27.
//

import UIKit

/// Hicla 舞台 HUD 管理器
final class StageHUD {

    static let shared = StageHUD()
    
    private var stageContainer: UIView?
    private var spotlightView: UIView?
    private var messageLabel: UILabel?
    private var spinner: UIActivityIndicatorView?
    
    private init() {}
    
  
    func raiseCurtain(message: String? = nil) {
        guard let keyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }
        
        // 创建舞台容器
        let container = UIView(frame: keyWindow.bounds)
        container.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        
        let spotlight = UIView()
        spotlight.backgroundColor = UIColor(white: 0.1, alpha: 0.9)
        spotlight.layer.cornerRadius = 14
        spotlight.clipsToBounds = true
        
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.color = .white
        indicator.startAnimating()
        self.spinner = indicator
        
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = message ?? "🎤 loading..."
        self.messageLabel = label
        
        spotlight.addSubview(indicator)
        spotlight.addSubview(label)
        container.addSubview(spotlight)
        keyWindow.addSubview(container)
        
        // 自动布局
        spotlight.translatesAutoresizingMaskIntoConstraints = false
        indicator.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            spotlight.centerXAnchor.constraint(equalTo: container.safeAreaLayoutGuide.centerXAnchor),
            spotlight.centerYAnchor.constraint(equalTo: container.safeAreaLayoutGuide.centerYAnchor),
            spotlight.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            spotlight.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            
            indicator.topAnchor.constraint(equalTo: spotlight.topAnchor, constant: 20),
            indicator.centerXAnchor.constraint(equalTo: spotlight.centerXAnchor),
            
            label.topAnchor.constraint(equalTo: indicator.bottomAnchor, constant: 12),
            label.leadingAnchor.constraint(equalTo: spotlight.leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: spotlight.trailingAnchor, constant: -12),
            label.bottomAnchor.constraint(equalTo: spotlight.bottomAnchor, constant: -20)
        ])
        
        self.stageContainer = container
        self.spotlightView = spotlight
    }
    
    // MARK: - 降下舞台（替代 StageHUD.shared.lowerCurtain()）
    func lowerCurtain() {
        DispatchQueue.main.async {
            self.spinner?.stopAnimating()
            self.stageContainer?.removeFromSuperview()
            self.stageContainer = nil
            self.spotlightView = nil
        }
    }
    
    // MARK: - 舞台提示（替代 SVProgressHUD.showInfo()）
    func whisper(message: String) {
        showMessage(message: message, emoji: "ℹ️")
    }
    
    // MARK: - 舞台成功（替代 SVProgressHUD.showSuccess()）
    func applause(message: String) {
        showMessage(message: message, emoji: "👏")
    }
    
    // MARK: - 内部私有显示方法
    private func showMessage(message: String, emoji: String) {
        guard let keyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }
        
        let container = UIView(frame: keyWindow.bounds)
        container.backgroundColor = UIColor.clear
        
        let spotlight = UIView()
        spotlight.backgroundColor = UIColor(white: 0.1, alpha: 0.9)
        spotlight.layer.cornerRadius = 14
        spotlight.clipsToBounds = true
        
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "\(emoji) \(message)"
        
        spotlight.addSubview(label)
        container.addSubview(spotlight)
        keyWindow.addSubview(container)
        
        spotlight.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            spotlight.centerXAnchor.constraint(equalTo: container.safeAreaLayoutGuide.centerXAnchor),
            spotlight.centerYAnchor.constraint(equalTo: container.safeAreaLayoutGuide.centerYAnchor),
            spotlight.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            
            label.topAnchor.constraint(equalTo: spotlight.topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: spotlight.bottomAnchor, constant: -20),
            label.leadingAnchor.constraint(equalTo: spotlight.leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: spotlight.trailingAnchor, constant: -12)
        ])
        
        // 自动消失动画
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            container.removeFromSuperview()
        }
    }
}
