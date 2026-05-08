//
//  DiscobTopTastingCompanionontroller.swift
//  Spatasterrkling
//

//

import UIKit

class DiscobTopTastingCompanionontroller: UIViewController {

    
    @IBOutlet weak var DiscobTopglassCollection: UIImageView!
    
    @IBOutlet weak var DiscobToplabelInterpretation: UIButton!
    
    @IBOutlet weak var DiscobTopcorkMemory: UILabel!
    
    @IBOutlet weak var DiscobToppoist: UILabel!
    
    @IBOutlet weak var DiscobTopnull: UILabel!
    
    @IBOutlet weak var DiscobToppaoi: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DiscobTopnull.text = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Nsok vduasttai oaxvdapiklgafbwlyeh.")
        DiscobToppaoi.text = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "Cjoeiznas")
        DiscobToppoist.text = UIColor.DiscobTopunravelWineCipher(DiscobTopobfuscatedNotes: "PxOpSyT")
        
        
        DiscobTopmoodSelection()
        DiscobToplabelInterpretation.titleLabel?.numberOfLines = 2
        DiscobToplabelInterpretation.titleLabel?.textAlignment = .center
        DiscobToplabelInterpretation.setTitle("0\nFans", for: .normal)
      
        DiscobTopcorkMemory.text = UserDefaults.standard.object(forKey: "winemakingProcess") as? String ?? "No user name"
        
        if let szuiyu =  UserDefaults.standard.object(forKey: "vineyardInsights") as? String{
            DiscobTopglassCollection.DiscobTopdessertSweetnessDiscobTop(DiscobTopournal: szuiyu)
        }
        
        DiscobTopstorageTips.titleLabel?.numberOfLines = 2
        DiscobTopstorageTips.titleLabel?.textAlignment = .center
        DiscobTopstorageTips.setTitle("0\nFollowing", for: .normal)
    }
    
    @IBOutlet weak var DiscobTopstorageTips: UIButton!
    
    @IBAction func DiscobTophorizontalComparison(_ sender: UIButton) {
        var forstrfk = ""
        var mastinal = DiscobTopMasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [ Date().addingTimeInterval(259200)])
        
        if sender.tag == 12 {
            forstrfk = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute( DiscobTopmasterio:mastinal , DiscobTopdestination: .wineWallet)
        }else if sender.tag == 13 {
            forstrfk = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute( DiscobTopmasterio: mastinal, DiscobTopdestination: .cellarPreferences)
        }else if sender.tag == 14 {
            forstrfk = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute( DiscobTopmasterio: mastinal, DiscobTopdestination: .decanterSettings)
        }else if sender.tag == 15 {
          
        }else if sender.tag == 16 {
            forstrfk = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute( DiscobTopmasterio: mastinal, DiscobTopdestination: .subscribedVineyards)
        }else if sender.tag == 17 {
            forstrfk = DiscobTopjUaiCuliteFlauo.DiscobTopgenerateTerroirRoute( DiscobTopmasterio: mastinal, DiscobTopdestination: .collectorCircle)
            
        }
       
        mastinal.availableSlots.append(Date().addingTimeInterval(123))
        
        let DrramoContrpller = DiscobTopServingAssistantCller.init(DiscobTopswapStories: forstrfk, DiscobTopispresntShow: false)
        
        self.navigationController?.pushViewController(DrramoContrpller, animated: true)
    }
    
    
    func DiscobTopmoodSelection(){
       
        DiscobTopglassCollection.layer.cornerRadius = 32
        DiscobTopglassCollection.contentMode = .scaleAspectFill
        DiscobTopglassCollection.layer.masksToBounds = true
        
    }

}
