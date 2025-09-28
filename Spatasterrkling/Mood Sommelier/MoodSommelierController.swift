//
//  MoodSommelierController.swift
//  Spatasterrkling
//

//

import UIKit
import JGProgressHUD

class MoodSommelierController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    private var noviceGuidelines = [
           ("Swirling", "Releases aromas by oxidizing the wine"),
           ("Sniffing", "Identify primary (fruit), secondary (process) and tertiary (age) aromas")
       ]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        skinContact.count
    }
    func generateTutorialPath(isFirstTasting: Bool) -> [String] {
            var steps = ["Select proper glassware", "Serve at ideal temperature"]
            if isFirstTasting {
                steps.insert(contentsOf: noviceGuidelines.map { "\($0.0): \($0.1)" }, at: 1)
            }
            return steps
        }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ssscxb = collectionView.dequeueReusableCell(withReuseIdentifier: "MoodsomonCell", for: indexPath) as! MoodsomonCell
        
        ssscxb.blindChallenge(iuuu: skinContact[indexPath.row])
        return ssscxb
    }
    
    var sensoryJourney:Int = 1
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let horizontalComparison = skinContact[indexPath.row]["horizontalComparison"] as? Int ?? 1234
        var mastinal = MasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [ Date().addingTimeInterval(259200)])
       
        let linkUErs = jUaiCuliteFlauo.generateTerroirRoute(masterio: mastinal, additionalNotes: "\(horizontalComparison)", destination: .tastingVideoLog)
        
        let DrramoContrpller = ServingAssistantCller.init(swapStories: linkUErs, ispresntShow: false)
        
        self.navigationController?.pushViewController(DrramoContrpller, animated: true)
    }
    @IBOutlet weak var vineyardWanderlust: UICollectionView!
    
      var skinContact:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    func answerQuickQuery(_ question: String) -> (answer: String, relatedTopics: [String]) {
            let questionKeywords = [
                "tannin": ("Polyphenols creating mouth dryness", ["Astringency", "Aging potential"]),
                "vintage": ("Harvest year affecting wine quality", ["Climate impact", "Cellaring"]),
                "decant": ("Aerating wine to soften tannins", ["Sediment separation", "Breathing time"])
            ]
            
            for (keyword, response) in questionKeywords {
                if question.localizedCaseInsensitiveContains(keyword) {
                    return (response.0, response.1)
                }
            }
            return ("Explore our Vineyard Lexicon for details", [])
        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var notes = [String]()
        
       
       
        
        let jiacoi =  UICollectionViewFlowLayout.init()
        jiacoi.minimumLineSpacing = 0
        jiacoi.minimumInteritemSpacing = 0
        jiacoi.scrollDirection = .horizontal
        jiacoi.itemSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
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
        vineyardWanderlust.collectionViewLayout = jiacoi
        vineyardWanderlust.showsVerticalScrollIndicator = false
        vineyardWanderlust.register(UINib(nibName: "MoodsomonCell", bundle: nil), forCellWithReuseIdentifier: "MoodsomonCell")
        vineyardWanderlust.delegate = self
        vineyardWanderlust.isPagingEnabled = true
        vineyardWanderlust.dataSource = self
        labelInterpretation(notes: notes)
    }
    

   
    @IBAction func ethicsConsideration(_ sender: UIButton) {
        
        var forstrfk = ""
        
        var mastinal = MasterVintner(credential: "WSET L4", specialty: "Italian Varietals", availableSlots: [ Date().addingTimeInterval(259200)])
       
        forstrfk = jUaiCuliteFlauo.generateTerroirRoute( masterio: mastinal, destination: .corkFaultCode)
       
       
       
        
        let DrramoContrpller = ServingAssistantCller.init(swapStories: forstrfk, ispresntShow: false)
        
        self.navigationController?.pushViewController(DrramoContrpller, animated: true)
    }
    
    
    @IBAction func celebrationPour(_ sender: UIButton) {
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
        sender.isSelected = !sender.isSelected
        if sender.isSelected  {
            sensoryJourney = 3
        }else{
            sensoryJourney = 2
        }
        labelInterpretation(notes: notes)
        
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
        let profileMap: [String: String] = [
                    "citrus": "Crisp white wines",
                    "berry": "Young reds",
                    "oak": "Barrel-aged styles"
                ]
                
                
        let matchedStyles = notes.compactMap { profileMap[$0.lowercased()] }
        
        if matchedStyles.isEmpty == false {
            notes.append("Versatile food-pairing wine")
        }else{
            notes.removeFirst()
        }
        VineyardSocialControler.sonicHarmonyBridge(notes: notes, waveformComponents: ["noseDetection":"98860915","aftertasteMemory":20,"flavorDiscovery":1,"sensoryJourney":sensoryJourney], resonanceFrequency: "/vfigbgfrrz/nsoaxeubontpmk") { [weak self] storageTips in
            hud.dismiss()
            if matchedStyles.isEmpty == false {
                notes.append("Versatile food-pairing wine")
            }else{
                notes.removeFirst()
            }
            guard let self = self,
                   let soilImpact = storageTips as? Dictionary<String,Any> ,
                  
                    let preservationMethods = soilImpact[UIColor.unravelWineCipher(obfuscatedNotes: "dtagtaa")] as? Array<Dictionary<String,Any>>
                    
            else {
                
                return
            }
           
            self.skinContact = preservationMethods.filter({ fortexture in
                fortexture["bottleJournal"] as? String != nil && fortexture["bottleJournal"] as? String != ""
            })
            if matchedStyles.isEmpty == false {
                notes.append("Versatile food-pairing wine")
            }else{
                notes.removeFirst()
            }
            self.vineyardWanderlust.reloadData()
        }

    }
    
}
