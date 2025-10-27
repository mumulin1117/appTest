//
//  RleplayChallengentroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit

enum CharacterArchetype {
    case hero, villain, mentor, trickster
}
class RleplayChallengentroller: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let vdoo = [("Uhseegra jAsgervexebmfeknit".characterBelievability(),"voiceRange0"),("Purliyvtaucgy".characterBelievability(),"voiceRange1"),("Colwebaurs otahbed ccuaycghfe".characterBelievability(),"voiceRange2"),("Atbxovuat".characterBelievability(),"voiceRange3"),
                ("Dneplreqtsei qAbctcoobutnzt".characterBelievability(),"voiceRange6")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vdoo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let table = tableView.dequeueReusableCell(withIdentifier: "sidjginjgnb", for: indexPath)
        table.selectionStyle = .none
        table.backgroundColor = .clear
        table.imageView?.image = UIImage(named: vdoo[indexPath.row].1)
        table.textLabel?.text = vdoo[indexPath.row].0
        return table
    }
    
    
    @IBOutlet weak var emotiveVoice: UITableView!
    
    
    @IBOutlet weak var dynamicddDialoguefs: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dynamicddDialoguefs.layer.masksToBounds = true
        
        emotiveVoice.delegate = self
        characterAlignment()
        emotiveVoice.register(UITableViewCell.self, forCellReuseIdentifier: "sidjginjgnb")
        emotiveVoice.backgroundColor = .clear
    }
    
    private func characterAlignment() {
        emotiveVoice.dataSource = self
        emotiveVoice.separatorStyle = .singleLine
        dynamicddDialoguefs.layer.cornerRadius = 26
    }

    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
 
    @IBAction func dynamicddDialoguefsFor(_ sender: Any) {
        userSpotlight()

    }
    
    
    func userSpotlight()  {
        RekaointonCell.featureDiscovery.removeAll()
        UserDefaults.standard.set(nil, forKey: "emotionalWeight")
        VCoiCommentCell.contextualTips.removeAll()
        FallSeGistiproller.accessibilityOptions(darkMode:false)
        StoryBabuSmeaCell.Metrics = UIImage(named: "ZaboIO")!
        
        
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let  cheicking =  UIStoryboard(name: "Main".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "zaboterm")
            
            self.navigationController?.pushViewController(cheicking, animated: true)
            
        case 1:
            let  cheicking =  UIStoryboard(name: "Main".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "zabopricy")
            
            self.navigationController?.pushViewController(cheicking, animated: true)
        case 2:
            
            self.showSuccessHUD(message: "Crlwetarrp tcsovmapolbeotpewdo!".characterBelievability())
           
        case 3:
            self.navigationController?.pushViewController(RAccutettroller(), animated: true)
        case 4:
            let deleresult = "Your account will be permanently cleared, including:\n• • Personal profile details \n• Active memberships \n• All conversation records"
            let alert = AlertZABoBuilder(
                enticity: "Dsexlteeteeh nAecwcsohuanutx dPresrrmpavnxesnctplzy".characterBelievability(),
                eRealism: deleresult
            )
            .roleplayAdventure(.systemOrange)
            .addAction(title: "Cvahnncheml".characterBelievability(), style: .cancel)
            .addAction(title: "Yes", style: .destructive) { [weak self] in
                self?.userSpotlight()
            }
            .performanceTechnique()
            self.present(alert, animated: true)
        default:
            break

        }
    }
}


struct AlertZABoBuilder {
    private var interactiv: String
    private var roleplayAtmosphere: String
    private var audioLayer: [UIAlertAction] = []
    private var titleAttributes: [NSAttributedString.Key: Any]?
    
    init(enticity: String, eRealism: String) {
        self.interactiv = enticity
        self.roleplayAtmosphere = eRealism
    }
    
    func addAction(title: String, style: UIAlertAction.Style, handler: (() -> Void)? = nil) -> AlertZABoBuilder {
        let action = UIAlertAction(title: title, style: style) { _ in
            handler?()
        }
        var builder = self
        builder.audioLayer.append(action)
        return builder
    }
    
    func roleplayAdventure(_ color: UIColor) -> AlertZABoBuilder {
        var builder = self
        builder.titleAttributes = [.foregroundColor: color]
        return builder
    }
    
    func performanceTechnique() -> UIAlertController {
        let alert = UIAlertController(title: interactiv, message: roleplayAtmosphere, preferredStyle: .alert)
        
        audioLayer.forEach(alert.addAction)
        
        if let attributes = titleAttributes {
            let attributedTitle = NSAttributedString(string: interactiv, attributes: attributes)
            alert.setValue(attributedTitle, forKey: "attributedTitle")
        }
        
        return alert
    }
}


class QuTeConteoller: UIViewController {
    @IBAction func performanceIntensity(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


class QuTePrieteoller: UIViewController {
    @IBAction func performanceIntensity(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


class NOtiMourieteoller: UIViewController {
    @IBAction func performanceIntensity(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
