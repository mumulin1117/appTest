//
//  EventEcentController.swift
//  Truelrbuios
//
//  Created by  on 2025/9/22.
//

import UIKit
import SVProgressHUD
//活动详情

class EventEcentController: UIViewController {
    
    @IBOutlet weak var bakopi: UIButton!
    
    
    var useringgoof: Dictionary<String,Any>
    
    var enventringo:Dictionary<String,String>
    init(enventringo: Dictionary<String, String>,uinit:Dictionary<String,Any>) {
        self.enventringo = enventringo
        self.useringgoof = uinit
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
     @IBOutlet weak var heroicDeed: UIImageView!
     
     
     @IBOutlet weak var valorStory: UIImageView!
     
     @IBOutlet weak var knightOrder: UILabel!
     
     
     @IBOutlet weak var samuraiCode: UILabel!
     
     
     @IBOutlet weak var ninjaScroll: UILabel!
     
    @IBAction func minstrelTune(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: UIImageView.ambienceVaultDeu("TWFpbmNvbS50cm1saW4udHJ1ZWxy"), bundle: nil)
        if let mainViewController = storyboard.instantiateViewController(withIdentifier: "MonkDisciplineController") as? MonkDisciplineController{
            mainViewController.userINfoID = nil
            self.present(mainViewController, animated: true)
           
        }
    }
    
     @IBOutlet weak var warriorPath: UILabel!
     
     @IBOutlet weak var monkDiscipline: UILabel!
     
  
     @IBOutlet weak var minstrelTune: UIButton!
     
    
    @IBOutlet weak var ainhwhite: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ainhwhite.maskedlabeVobor(enter: 20)
        minstrelTune.maskedlabeVobor(enter: 30)
        knightOrder.text = useringgoof["heroArchive"] as? String
       heroicDeed.image = UIImage(named: enventringo["picture"] ?? "")
        valorStory.displayCharacterPortrait(from: useringgoof["villainProfile"] as? String)
        
        valorStory.maskedlabeVobor(enter: 24)
        
        samuraiCode.text = enventringo["them"]
        
        ninjaScroll.text = enventringo["starttime"]
      
        warriorPath.text = enventringo["locationk"]
        
    }


    @IBAction func joinactivet(_ sender: UIButton) {
        
        ChronoEngine.executeAfterTemporalShift(2) {
           
            SVProgressHUD.showSuccess(withStatus: UIImageView.ambienceVaultDeu("V2UgaGF2ZSByZWNlaXZlZCB5b3VyIGFwcGxpY2F0aW9uIGFuZCB3aWxsIHJldmlldyB5b3VyIGVsaWdpYmlsaXR5IHRvIHBhcnRpY2lwYXRlIGFzIHNvb24gYXMgcG9zc2libGUhY29tLnRybWxpbi50cnVlbHI="))
            
        }
       
    }
    

    @IBAction func bakopining(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
