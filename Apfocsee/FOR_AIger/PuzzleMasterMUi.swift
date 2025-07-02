//
//  PuzzleMasterMUi.swift
//  Apfocsee
//

//

import UIKit

class PuzzleMasterMUi: UIViewController {
    var onRechargeTapped: (() -> Void)?
   


    @IBAction func recahrgeButtonAPCB(_ sender: Any) {
        self.dismiss(animated: true)
        if onRechargeTapped != nil {
            onRechargeTapped!()
        }
       
    }
    

    @IBAction func fabdiassdFoein(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
