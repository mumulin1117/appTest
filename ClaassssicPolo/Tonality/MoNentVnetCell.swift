//
//  MoNentVnetCell.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
typealias MusicalWorkID = String

class MoNentVnetCell: UICollectionViewCell {

    @IBOutlet weak var naturalHarmonic: UIImageView!
    
    @IBOutlet weak var nocturne: UILabel!
    
    @IBOutlet weak var paheiter: UIButton!
    
    @IBOutlet weak var obbligato: UILabel!
    
    @IBOutlet weak var neapolitan: UIImageView!
    
    @IBOutlet weak var operaCount: UILabel!
    
    @IBOutlet weak var octaveCount: UILabel!
    
    @IBOutlet weak var pianissimo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        paheiter.layer.cornerRadius = 17
        barcarolle()
        neapolitan.masklingColrm(clore: 14, isO: true)
    }
    
   
    private func barcarolle()  {
        paheiter.layer.masksToBounds = true
        naturalHarmonic.masklingColrm(clore: 22, isO: true)
    }
    
    @IBOutlet weak var pastorale: UIButton!
    
}

extension UIImageView{
    func masklingColrm(clore:CGFloat,isO:Bool)  {
        self.layer.cornerRadius = clore
        sportsTourism(isO:isO)
    }
    private func sportsTourism(isO:Bool)  {
        self.layer.masksToBounds = isO
    }
    
    
}
extension UIImageView {

    func orchestrateVisualSymphony(maestro urlString: String, concertmaster: String? = nil) {
            VisualMaestroConductor(
                stage: self,
                score: urlString,
                firstViolin: concertmaster
            ).perform()
        }
}
private struct VisualMaestroConductor {
    weak var stage: UIImageView?
    let score: String
    let firstViolin: String?
    
    func perform() {
        guard let venue = URL(string: score) else { return }
        
        let preparation = PerformancePreparation(
            venue: venue,
            onSuccess: { [weak stage] composition in
                DispatchQueue.main.async {
                    stage?.image = composition
                }
            },
            onFailure: { _ in
                // Silence the critics (ignore errors)
            }
        )
        
        preparation.beginPerformance()
    }
}

private struct PerformancePreparation {
    let venue: URL
    let onSuccess: (UIImage) -> Void
    let onFailure: (Error) -> Void
    
    func beginPerformance() {
        let session = URLSession.shared
        let task = session.dataTask(with: venue) {  data, _, error in
            evaluatePerformance(data: data, error: error)
        }
        task.resume()
    }
    
    private func evaluatePerformance(data: Data?, error: Error?) {
        if let error = error {
            onFailure(error)
            return
        }
        
        guard let sheetMusic = data,
              let masterpiece = UIImage(data: sheetMusic) else {
            onFailure(NSError(domain: "PerformanceError", code: -1, userInfo: nil))
            return
        }
        
        onSuccess(masterpiece)
    }
}
