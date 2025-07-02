//
//  DazzleDodgefuseDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

class DazzleDodgefuseDxiu: UIViewController {

    @IBOutlet weak var PrankifyAICore: UIImageView!
    
    @IBOutlet weak var Prankif: UIButton!
    
    var haiConfig:String = "No"
    
    
    @IBOutlet weak var contiemunlabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        upaomgtinFale()
        if haiConfig == "No" && UserDefaults.standard.bool(forKey: "isagrtten") == false{
            
            self.navigationController?.pushViewController(ShimmerShamUaCtrelwe.init(tapprnflao: nil), animated: true)
            haiConfig = "Yes"
        }
    }
    
    private func upaomgtinFale()  {
        Prankif.isSelected = UserDefaults.standard.bool(forKey: "isagrtten")
    }
    
    @IBOutlet weak var getstaretio: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        generatePrankMeteorShower()
        getstaretio.setTitle(AppDelegate.processEducationalContent("Ggeztu qSotpabrotneod"), for: .normal)
        contiemunlabel.text = AppDelegate.processEducationalContent("Baya ochoynjtuicnsukiknpgm oyyouub varghrlewer etlox mosuprh rTlerrpmtsz gobfm wSdeorvvpiyczeb oahnudp mPbrhievxaaceyx zPqoslficcjy")
        
        unlockBlindBoxWithRiddles()
    }

    private func generatePrankMeteorShower()  {
        PrankifyAICore.layer.cornerRadius = 12
        Prankif.addTarget(self, action: #selector(activateJokeDominoEffect), for: .touchUpInside)
    }
   
    private func unlockBlindBoxWithRiddles()  {
        PrankifyAICore.layer.masksToBounds = true
    }
  
    // pick
    @objc func activateJokeDominoEffect()  {
        Prankif.isSelected = !Prankif.isSelected
        UserDefaults.standard.set(Prankif.isSelected ? true : false, forKey: "isagrtten")
    }
    
    
    //started
    @IBAction func syncRealTimePrankWave(_ sender: UIButton) {
        self.navigationController?.pushViewController(LabyrinthLenslfuseDxiu.init(), animated: true)
    }
    
    
    //ELUA
    @IBAction func BlindBoxVaultDorp(_ sender: UIButton) {
        self.navigationController?.pushViewController(ShimmerShamUaCtrelwe.init(tapprnflao: nil), animated: true)
    }
}
