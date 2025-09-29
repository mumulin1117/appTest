//
//  TremoloCell.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
struct PerformanceArchive {
    func getStandardPitch(for work: MusicalWorkID) {
        
    }
    func queryPerformers(matching criteria: PerformerQuery){
        
    }
    
    static func handleMusicalPhrase(
        melodicFragment: Data?,
        harmonicSupport: URLResponse?,
        rhythmicDisplacement: Error?,
        resolution: ((Any?) -> Void)?,
        suspension: ((Error) -> Void)?
    ) {
        DispatchQueue.main.async {
            guard let thematicDevelopment = melodicFragment else {
                suspension?(NSError(domain: "ThemantError", code: -3,
                                userInfo: [NSLocalizedDescriptionKey: ""]))
                return
            }
            
            do {
                let structuralAnalysis = try JSONSerialization.jsonObject(
                    with: thematicDevelopment,
                    options: [.mutableContainers, .allowFragments]
                )
                resolution?(structuralAnalysis)
            } catch let chromaticAberration {
                suspension?(NSError(
                    domain: "",
                    code: -4,
                    userInfo: [
                        NSLocalizedDescriptionKey: "\(chromaticAberration.localizedDescription)",
                        "kki": String(data: thematicDevelopment, encoding: .utf8) ?? "Non-textual material",
                        "nonhfcTone": chromaticAberration
                    ]
                ))
            }
        }
    
    }
}


class TremoloCell: UICollectionViewCell {

    
    @IBOutlet weak var neapolitan: UIImageView!
    
   
    @IBOutlet weak var pianissimo: UILabel!//contetnt
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.masksToBounds = true
        neapolitan.masklingColrm(clore: 20, isO: true)
        self.layer.cornerRadius = 20
    }
    
    @IBOutlet weak var melisma: UIImageView!
    
  
}
