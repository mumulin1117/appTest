//
//  NetworkHeaderPopup.swift
//  RayaStrertegies
//
//  Created by mumu on 2025/11/6.
//

import UIKit

import UIKit

final class NetworkHeaderPopup: UIView {
    private let label = UILabel()
    private var timer: Timer?

    init(text: String) {
        super.init(frame: .zero)
        backgroundColor = UIColor.black.withAlphaComponent(0.85)
        layer.cornerRadius = 12
        layer.masksToBounds = true

        label.textColor = .white
        label.font = UIFont.monospacedSystemFont(ofSize: 12, weight: .regular)
        label.numberOfLines = 0
        label.text = text
        label.textAlignment = .left

        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    func show(in container: UIView, duration: TimeInterval = 10) {
        translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(self)
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: container.centerXAnchor),
            topAnchor.constraint(equalTo: container.safeAreaLayoutGuide.topAnchor, constant: 16),
            widthAnchor.constraint(lessThanOrEqualToConstant: 350)
        ])
        alpha = 0
        transform = CGAffineTransform(scaleX: 0.9, y: 0.9)

        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
            self.transform = .identity
        }

        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: duration, repeats: false) { [weak self] _ in
            self?.dismiss()
        }
    }

    func dismiss() {
        UIView.animate(withDuration: 0.25, animations: {
            self.alpha = 0
            self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }) { _ in
            self.removeFromSuperview()
        }
    }

    static func showHeaders(_ headers: [String: String]) {
        let formatted = headers.map { "\($0.key): \($0.value)" }.joined(separator: "\n")
        guard let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) ?? UIApplication.shared.windows.first else { return }
        let popup = NetworkHeaderPopup(text: formatted)
        popup.show(in: window)
    }
}

