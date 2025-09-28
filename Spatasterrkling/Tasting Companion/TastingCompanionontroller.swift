//
//  TastingCompanionontroller.swift
//  Spatasterrkling
//

//

import UIKit

class TastingCompanionontroller: UIViewController {

    
    @IBOutlet weak var glassCollection: UIImageView!
    
    @IBOutlet weak var labelInterpretation: UIButton!
    
    @IBOutlet weak var corkMemory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        moodSelection()
        labelInterpretation.titleLabel?.numberOfLines = 2
        labelInterpretation.titleLabel?.textAlignment = .center
        labelInterpretation.setTitle("0\nFans", for: .normal)
      
        corkMemory.text = UserDefaults.standard.object(forKey: "winemakingProcess") as? String ?? "No user name"
        
        if let szuiyu =  UserDefaults.standard.object(forKey: "vineyardInsights") as? String{
            glassCollection.dessertSweetness(ournal: szuiyu)
        }
        
        storageTips.titleLabel?.numberOfLines = 2
        storageTips.titleLabel?.textAlignment = .center
        storageTips.setTitle("0\nFollowing", for: .normal)
    }
    
    @IBOutlet weak var storageTips: UIButton!
    
    @IBAction func horizontalComparison(_ sender: UIButton) {
        var forstrfk = ""
        var mastinal = MasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [ Date().addingTimeInterval(259200)])
        
        if sender.tag == 12 {
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio:mastinal , destination: .wineWallet)
        }else if sender.tag == 13 {
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .cellarPreferences)
        }else if sender.tag == 14 {
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .decanterSettings)
        }else if sender.tag == 15 {
          
        }else if sender.tag == 16 {
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .subscribedVineyards)
        }else if sender.tag == 17 {
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .collectorCircle)
            
        }
       
        mastinal.availableSlots.append(Date().addingTimeInterval(123))
        
        let DrramoContrpller = ServingAssistantCller.init(swapStories: forstrfk, ispresntShow: false)
        
        self.navigationController?.pushViewController(DrramoContrpller, animated: true)
    }
    
    
    func moodSelection(){
       
        glassCollection.layer.cornerRadius = 32
        glassCollection.contentMode = .scaleAspectFill
        glassCollection.layer.masksToBounds = true
        
    }

}
