//
//  QuantumProgressHUD.swift
//  RayaStrertegies
//
//  Created by  on 2025/10/28.
//

import UIKit

final class QuantumProgressHUD {
    
    private static var overlayWindow: UIWindow?
    private static var progressView: QuantumProgressView?
    
    // MARK: - 公开接口
    static func showQuantumLoader() {
        DispatchQueue.main.async {
            createOverlayWindow()
            showProgressView(style: .loading)
        }
    }
    
    static func dismissQuantumRealm() {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.3, animations: {
                progressView?.alpha = 0
                progressView?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }) { _ in
                overlayWindow?.isHidden = true
                overlayWindow = nil
                progressView = nil
            }
        }
    }
    
    static func showRealityShift(withMessage message: String) {
        DispatchQueue.main.async {
            createOverlayWindow()
            showProgressView(style: .info(message))
        }
    }
    
    static func showDimensionalSuccess(withMessage message: String) {
        DispatchQueue.main.async {
            createOverlayWindow()
            showProgressView(style: .success(message))
        }
    }
    
    // MARK: - 私有实现
    private static func createOverlayWindow() {
        guard overlayWindow == nil else { return }
        
        let windowScene = UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive }
            .flatMap { $0 as? UIWindowScene }
        
        overlayWindow = UIWindow(windowScene: windowScene!)
        overlayWindow?.frame = UIScreen.main.bounds
        overlayWindow?.windowLevel = .alert
        overlayWindow?.backgroundColor = .clear
        overlayWindow?.isHidden = false
    }
    
    private static func showProgressView(style: QuantumProgressStyle) {
        guard let window = overlayWindow else { return }
        
        progressView?.removeFromSuperview()
        
        let progressView = QuantumProgressView(style: style)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        window.addSubview(progressView)
        
        NSLayoutConstraint.activate([
            progressView.centerXAnchor.constraint(equalTo: window.centerXAnchor),
            progressView.centerYAnchor.constraint(equalTo: window.centerYAnchor),
            progressView.leadingAnchor.constraint(greaterThanOrEqualTo: window.leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(lessThanOrEqualTo: window.trailingAnchor, constant: -40)
        ])
        
        self.progressView = progressView
        
        // 入场动画
        progressView.alpha = 0
        progressView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5) {
            progressView.alpha = 1
            progressView.transform = .identity
        }
    }
}

// MARK: - 进度视图样式
private enum QuantumProgressStyle {
    case loading
    case info(String)
    case success(String)
}

// MARK: - 自定义进度视图
private final class QuantumProgressView: UIView {
    
    private let style: QuantumProgressStyle
    
    init(style: QuantumProgressStyle) {
        self.style = style
        super.init(frame: .zero)
        configureQuantumInterface()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureQuantumInterface() {
        backgroundColor = .init(red: 0.1, green: 0.1, blue: 0.1, alpha: 0.95)
        layer.cornerRadius = 16
        layer.cornerCurve = .continuous
        
        // 添加模糊效果
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(blurView, at: 0)
        
        // 内容布局
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
        ])
        
        switch style {
        case .loading:
            configureLoadingState(stackView)
        case .info(let message):
            configureInfoState(stackView, message: message)
        case .success(let message):
            configureSuccessState(stackView, message: message)
        }
    }
    
    private func configureLoadingState(_ stackView: UIStackView) {
        // 量子旋转动画
        let activityIndicator = QuantumSpinnerView()
        stackView.addArrangedSubview(activityIndicator)
        
        let label = UILabel()
        label.text = "Quantum Syncing..."
        label.textColor = .systemTeal
        label.font = .systemFont(ofSize: 16, weight: .medium)
        stackView.addArrangedSubview(label)
        
        activityIndicator.startAnimating()
    }
    
    private func configureInfoState(_ stackView: UIStackView, message: String) {
        let iconView = UIImageView(image: UIImage(systemName: "info.circle.fill"))
        iconView.tintColor = .systemBlue
        iconView.preferredSymbolConfiguration = .init(pointSize: 32, weight: .regular)
        stackView.addArrangedSubview(iconView)
        
        let label = UILabel()
        label.text = message
        label.textColor = .white
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.numberOfLines = 0
        label.textAlignment = .center
        stackView.addArrangedSubview(label)
        
        // 3秒后自动消失
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            QuantumProgressHUD.dismissQuantumRealm()
        }
    }
    
    private func configureSuccessState(_ stackView: UIStackView, message: String) {
        let iconView = UIImageView(image: UIImage(systemName: "checkmark.circle.fill"))
        iconView.tintColor = .systemGreen
        iconView.preferredSymbolConfiguration = .init(pointSize: 32, weight: .regular)
        stackView.addArrangedSubview(iconView)
        
        let label = UILabel()
        label.text = message
        label.textColor = .white
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.numberOfLines = 0
        label.textAlignment = .center
        stackView.addArrangedSubview(label)
        
        // 2秒后自动消失
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            QuantumProgressHUD.dismissQuantumRealm()
        }
    }
}

// MARK: - 量子旋转动画视图
private final class QuantumSpinnerView: UIView {
    
    private let circleLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSpinner()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureSpinner()
    }
    
    private func configureSpinner() {
        let radius: CGFloat = 16
        let path = UIBezierPath(
            arcCenter: CGPoint(x: radius, y: radius),
            radius: radius,
            startAngle: 0,
            endAngle: .pi * 1.5,
            clockwise: true
        )
        
        circleLayer.path = path.cgPath
        circleLayer.strokeColor = UIColor.systemTeal.cgColor
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineWidth = 3
        circleLayer.lineCap = .round
        
        layer.addSublayer(circleLayer)
        frame = CGRect(x: 0, y: 0, width: radius * 2, height: radius * 2)
    }
    
    func startAnimating() {
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
        rotation.fromValue = 0
        rotation.toValue = CGFloat.pi * 2
        rotation.duration = 1
        rotation.repeatCount = .infinity
        layer.add(rotation, forKey: "quantumRotation")
        
        let strokeEnd = CABasicAnimation(keyPath: "strokeEnd")
        strokeEnd.fromValue = 0
        strokeEnd.toValue = 1
        strokeEnd.duration = 1
        strokeEnd.repeatCount = .infinity
        strokeEnd.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        circleLayer.add(strokeEnd, forKey: "quantumStroke")
    }
}
