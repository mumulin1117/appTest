//
//  CsinldRayaLisaCell.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/7/2.
//

import UIKit
struct ImpactGenerator {
    enum FeedbackStyle {
    case headshot
        case noie
        case victory
    }
    static func play(_ style: FeedbackStyle) {
        switch style {
        case .headshot:
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        case .victory:
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
        case .noie:
            break
        }
    }
}
class CsinldRayaLisaCell: UICollectionViewCell {

    @IBOutlet weak var choreographing: UILabel!
    
    @IBOutlet weak var managing: UIButton!
    
    private lazy var iconView: UIImageView = {
            let iv = UIImageView()
        
            iv.translatesAutoresizingMaskIntoConstraints = false
            return iv
        }()
    
    @IBOutlet weak var administering: UIImageView!
    
    
    @IBOutlet weak var overseeing: UIImageView!
    
    
    @IBOutlet weak var supervising: UILabel!
    
    @IBOutlet weak var observing: UIButton!
    
    @IBOutlet weak var monitoring: UILabel!
    
    var enerator:ImpactGenerator?
    override func awakeFromNib() {
        super.awakeFromNib()
        ethicalStandards()
        enerator = ImpactGenerator.init()
        ImpactGenerator.play(.noie)
        designSystem()
    }
    
    private func ethicalStandards()  {
        choreographing.layer.cornerRadius = 10
        iconView.contentMode = .scaleAspectFit
        managing.layer.cornerRadius = 10
        iconView.translatesAutoresizingMaskIntoConstraints = false
        administering.layer.cornerRadius = 15
        overseeing.layer.cornerRadius = 17
    }
    
    
    
    private func designSystem()  {
        choreographing.layer.masksToBounds = true
        managing.layer.masksToBounds = true
        administering.layer.masksToBounds = true
        overseeing.layer.masksToBounds = true
    }

}
