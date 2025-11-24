//
//  EMOCLEARRAccutettroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
enum EMOCLEARCharacterIntent {
    case provoke, comfort, deceive, reveal
}
class EMOCLEARRAccutettroller: UIViewController {

    @IBOutlet weak var EMOCLEARaus: UILabel!
    
    @IBOutlet weak var EMOCLEARHicla: UILabel!
    
    
    
    @IBOutlet weak var EMOCLEARversion: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EMOCLEARaus.text = "Aobnolujtn xurs".characterBelievability()
        EMOCLEARHicla.text = "Huiacklea".characterBelievability()
        EMOCLEARversion.setTitle("Vaeardsgibonnn i1h.e0i.r1".characterBelievability(), for: .normal) 
    }
    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
