//
//  TimelineWeaver.swift
//  RayaStrertegies
//
//  Created by  on 2025/11/3.
//

import UIKit
enum TimelinePosition {
    case peak, standard, foundation
}
protocol ResonanceFilterDelegate: AnyObject {
    func resonanceFilter(_ filter: ResonanceFilterView, didSelectEra era: MemoryEra)
}
class TimelineWeaver {
    static func weaveTimeline(from echoes: [MemoryEcho]) -> [TimelineNode] {
        return echoes.map { echo in
            let position: TimelinePosition = echo.emotionalResonance > 0.9 ? .peak : .standard
            let strength = Int(echo.emotionalResonance * 100)
            return TimelineNode(memoryEcho: echo, nodePosition: position, resonanceStrength: strength)
        }.sorted { $0.memoryEcho.timestamp > $1.memoryEcho.timestamp }
    }
}

class ResonanceFilterView: UIView {
   weak var delegate: ResonanceFilterDelegate?
   private var eraButtons: [UIButton] = []
   
   override init(frame: CGRect) {
       super.init(frame: frame)
       configureResonanceInterface()
   }
   
   required init?(coder: NSCoder) {
       super.init(coder: coder)
       configureResonanceInterface()
   }
   
   private func configureResonanceInterface() {
       backgroundColor = .secondarySystemBackground
       layer.cornerRadius = 12
       
       let eraStack = UIStackView()
       eraStack.axis = .horizontal
       eraStack.distribution = .fillEqually
       eraStack.spacing = 8
       eraStack.translatesAutoresizingMaskIntoConstraints = false
       addSubview(eraStack)
       
       MemoryEra.allCases.forEach { era in
           let button = UIButton(type: .system)
           button.setTitle(era.displayName, for: .normal)
           button.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
           button.addTarget(self, action: #selector(eraButtonTapped(_:)), for: .touchUpInside)
           eraStack.addArrangedSubview(button)
           eraButtons.append(button)
       }
       
       NSLayoutConstraint.activate([
           eraStack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
           eraStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
           eraStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
           eraStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
       ])
   }
   
   @objc private func eraButtonTapped(_ sender: UIButton) {
       guard let index = eraButtons.firstIndex(of: sender),
             let era = MemoryEra(rawValue: index) else { return }
       
       delegate?.resonanceFilter(self, didSelectEra: era)
   }
   
   func activateResonance() {
       UIView.animate(withDuration: 0.5) {
           self.alpha = 1.0
       }
   }
}
