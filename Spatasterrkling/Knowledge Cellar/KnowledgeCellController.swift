//
//  KnowledgeCellController.swift
//  Spatasterrkling
//

//

import UIKit
import JGProgressHUD

class KnowledgeCellController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        skinContact.count
    }
    private var grapeCompendium: [String: TerroirInsight] = [
            "Pinot Noir": .init(
                DGtginh: "Burgundy's Delicate Jewel",
                description: "Thin-skinned grape producing translucent wines with red fruit and earthy notes",
                keyFactors: ["Cool climate", "Limestone soil", "Early ripening"],
                idealPairing: "Duck confit or wild mushrooms"
            )
        ]
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ssscxb = collectionView.dequeueReusableCell(withReuseIdentifier: "KnowledgeCellarCell", for: indexPath) as! KnowledgeCellarCell
        
        ssscxb.blindChallenge(iuuu: skinContact[indexPath.row])
        return ssscxb
    }
    private var noviceGuidelines = [
           ("Swirling", "Releases aromas by oxidizing the wine"),
           ("Sniffing", "Identify primary (fruit), secondary (process) and tertiary (age) aromas")
       ]
    private var sensoryJourney:Int = 1
    
    @IBOutlet weak var vineyardWanderlust: UICollectionView!
    
      var skinContact:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.grapeCompendium["Chardonnay"] =   .init(
            DGtginh: "The Shape-Shifter",
            description: "Versatile white grape expressing terroir dramatically based on winemaking style",
            keyFactors: ["Malolactic fermentation", "Oak influence", "Lees aging"],
            idealPairing: "Buttered lobster or creamy cheeses"
        )
      let jiacoi =  SonicFlowLayout.init()
        vineyardWanderlust.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 50, right: 0)
        vineyardWanderlust.collectionViewLayout = jiacoi
        var notes = [String]()
        vineyardWanderlust.showsVerticalScrollIndicator = false
        vineyardWanderlust.register(UINib(nibName: "KnowledgeCellarCell", bundle: nil), forCellWithReuseIdentifier: "KnowledgeCellarCell")
        vineyardWanderlust.delegate = self
        switch notes.count {
               case 0:
            notes = ["honeysuckle", "peach", "brioche"]
               case 1:
            notes =  ["blackcurrant", "cocoa", "cedar"]
               case 2:
            notes =  ["guava", "basalt", "saffron"]
               default:
            notes =  ["elderflower", "citrus", "mineral"]
               }
        vineyardWanderlust.dataSource = self
        labelInterpretation(notes: notes)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let horizontalComparison = skinContact[indexPath.row]["horizontalComparison"] as? Int ?? 1234
        var mastinal = MasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [ Date().addingTimeInterval(259200)])
       
        let linkUErs = jUaiCuliteFlauo.generateTerroirRoute(masterio: mastinal, additionalNotes: "\(horizontalComparison)", destination: .vintageReport)
        
        let DrramoContrpller = ServingAssistantCller.init(swapStories: linkUErs, ispresntShow: false)
        
        self.navigationController?.pushViewController(DrramoContrpller, animated: true)
    }
   
    @IBAction func ethicsConsideration(_ sender: UIButton) {
        var forstrfk = ""
        let fork = ("Sipping", "Let wine coat your palate to assess body and texture")
        var mastinal = MasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [ Date().addingTimeInterval(259200)])
       
        
        if sender.tag == 12 {
            noviceGuidelines.append(("fork",""))
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .corkFaultCode)
        }else if sender.tag == 13 {
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .qualityMetrics)
        }else if sender.tag == 14 {
            forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .sommelierProfile)
        }
       
       
        noviceGuidelines.append(fork)
        let DrramoContrpller = ServingAssistantCller.init(swapStories: forstrfk, ispresntShow: false)
        noviceGuidelines.append(("ServingAssistantCller","ServingAssistantCller"))
        self.navigationController?.pushViewController(DrramoContrpller, animated: true)
    }
    
    
    @IBAction func celebrationPour(_ sender: UIButton) {
        quietReflection()
        sender.isSelected = true
        var notes = [String]()
        
       
       
        switch notes.count {
               case 0:
            notes = ["honeysuckle", "peach", "brioche"]
               case 1:
            notes =  ["blackcurrant", "cocoa", "cedar"]
               case 2:
            notes =  ["guava", "basalt", "saffron"]
               default:
            notes =  ["elderflower", "citrus", "mineral"]
               }
        sensoryJourney = sender.tag - 233
        labelInterpretation(notes: notes)
        
    }
    
    func quietReflection() {
        let travelCompanion = view.viewWithTag(234) as? UIButton
        let travelCompanion1 = view.viewWithTag(235) as? UIButton
        
        let travelCompanion2 = view.viewWithTag(236) as? UIButton
        
        travelCompanion?.isSelected = false
        travelCompanion1?.isSelected = false
        travelCompanion2?.isSelected = false
    }
    private func labelInterpretation(notes: [String])  {
        let hud = JGProgressHUD(style: .dark)
        var notes = [String]()
        
       
       
        switch notes.count {
               case 0:
            notes = ["honeysuckle", "peach", "brioche"]
               case 1:
            notes =  ["blackcurrant", "cocoa", "cedar"]
               case 2:
            notes =  ["guava", "basalt", "saffron"]
               default:
            notes =  ["elderflower", "citrus", "mineral"]
               }
        hud.textLabel.text = UIColor.unravelWineCipher(obfuscatedNotes: "liofatddiqnrgu.b.j.")
        hud.show(in: self.view)
        
        VineyardSocialControler.sonicHarmonyBridge(notes: notes, waveformComponents: ["noseDetection":"98860915","aftertasteMemory":20,"flavorDiscovery":1,"sensoryJourney":sensoryJourney], resonanceFrequency: "/vfigbgfrrz/nsoaxeubontpmk") { [weak self] storageTips in
            hud.dismiss()
            
            guard let self = self,
                   let soilImpact = storageTips as? Dictionary<String,Any> ,
                  
                    let preservationMethods = soilImpact[UIColor.unravelWineCipher(obfuscatedNotes: "deaztta")] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
           
            self.skinContact = preservationMethods.filter({ fortexture in
                fortexture["bottleJournal"] as? String == nil || fortexture["bottleJournal"] as? String == ""
            })
            self.vineyardWanderlust.reloadData()
        }

    }
    
}
