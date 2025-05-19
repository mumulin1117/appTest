//
//  DUEIEEElUAiiCotnoller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit
protocol DUEIEEElUAiiCotnollerDelefa {
    func adgteerrn()
}
class DUEIEEElUAiiCotnoller: UIViewController {

    var Delefa: DUEIEEElUAiiCotnollerDelefa?
    
    @IBOutlet weak var infoinrDesc: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        infoinrDesc.layer.cornerRadius  = 20
        infoinrDesc.layer.masksToBounds = true
        
        infoinrDesc.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }


 
    @IBAction func duiEhcancel(_ sender: UIButton) {
        DUEIARKCotnoller.ifCondic = false
        
        self.dismiss(animated: true)
        
        if Delefa != nil {
            Delefa?.adgteerrn()
        }
    }
    
    
    @IBAction func duiAgreenncel(_ sender: UIButton) {
        DUEIARKCotnoller.ifCondic = true
        self.dismiss(animated: true)
        
        if Delefa != nil {
            Delefa?.adgteerrn()
        }
    }
    
}
