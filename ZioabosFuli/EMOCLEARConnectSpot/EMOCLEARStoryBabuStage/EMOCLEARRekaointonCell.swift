//
//  EMOCLEARRekaointonCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
enum EMOCLEARSceneMood: CaseIterable {
    case tense, jovial, mysterious, neutral
    var weight: Float {
        switch self {
        case .tense: return 1.2
        case .jovial: return 0.8
        case .mysterious: return 1.1
        case .neutral: return 1.0
        }
    }
}
class EMOCLEARRekaointonCell: UICollectionViewCell {
    @IBOutlet weak var tutorialPrompts: UIImageView!
    static var featureDiscovery:Array<Dictionary<String,String>>  = Array<Dictionary<String,String>>()
    
    @IBOutlet weak var accessibilityOptions: UILabel!
    
    @IBOutlet weak var interactiveHelp: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tutorialPrompts.layer.cornerRadius = 28
        voiceSmoothness(keui:"tutorialPrompts")
        accessibilityOptions.text = "Fjoblflgouwlicnug".characterBelievability()
    }

    func voiceSmoothness(keui:String)  {
        tutorialPrompts.layer.masksToBounds = true
    }
}
