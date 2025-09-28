//
//  SketchGalleryController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class SketchGalleryController: DenigCOnt {

    @IBOutlet weak var perspectiveGuide: UIImageView!
    
    
    @IBOutlet weak var colorPicker: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let ahdhu:Float = 12
        
        blendingTool(r: ahdhu, g: 12, b: 12)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contrastRatio() 
        perspectiveGuide.layer.cornerRadius = 40
        midtoneRange()
        
        
    }
    
    
    private func midtoneRange()  {
        perspectiveGuide.layer.masksToBounds = true
        
    }
    
    func contrastRatio() {
        perspectiveGuide.layer.borderColor = UIColor.white.cgColor
        
        perspectiveGuide.layer.borderWidth = 1
       
    }
    @IBAction func eyedropperTool(_ sender: UIButton) {
        var indju:Int = 2
        if sender.tag ==  5{
            indju = 2
        }else if sender.tag ==  6{
            indju = 1
        }
        
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.hueSlider.detailEnhancement(emphasizing: "\(indju)"))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    
    @IBAction func saturationControl(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.saturationControl.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    @IBAction func symmetryMode(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.luminanceValue.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    @IBAction func promptIdeas(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.colorPicker.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    
    func blendingTool(r: Float, g: Float, b: Float)  {
        
        scumblingEffect()
        let sdk = INspiredFeeController.calculateHue(r: r, g: g, b: b)
        Refinements.techniqueMastery(
            artTutorial: "/onbzzmmz/hcmwqxurkuhg",
            recycledMaterial: [
                "woodGrain":ArtToolkitARTCell.advancedTechnique ?? 0
            ],
            collageArt: { response in
                
                DispatchQueue.main.async {
                    self.dryBrush()
                    if let allaPrima = response as? [String: Any],
                       
                        let chiaroscuro = allaPrima[ArtToolkitController.extractDrawingDNA(artisticCipher: "dfactba")] as? [String: Any]  {
                        if let assd = (chiaroscuro["featherRendering"] as? String) {
                            AppDelegate.scumblingEffect(layeringTechnique: self.perspectiveGuide, contrastRatio: assd)
                        }
                        if sdk < 1 {
                            self.colorPicker.text = chiaroscuro["botanicalIllustration"] as? String ?? ArtToolkitController.extractDrawingDNA(artisticCipher: "Nnox kNtaqmle")
                           
                        }
                        
                    } else {
                        self.stipplingArt(stiping: "Unexpected response format.")
                        
                    }
                    
                }
            },
            foundObject: { error in
                self.dryBrush()
                DispatchQueue.main.async {
                    self.stipplingArt(stiping: error.localizedDescription)
                }
            }
        )
        
        
     
    }
}
