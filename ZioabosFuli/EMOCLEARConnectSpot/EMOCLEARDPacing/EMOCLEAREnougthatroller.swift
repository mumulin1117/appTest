//
//  EMOCLEAREnougthatroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class EMOCLEAREnougthatroller: UIViewController {

    @IBAction func EMOCLEARdisomaif(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
  


    @IBAction func EMOCLEARstoryVibrancy(_ sender: UIButton) {
        self.navigationController?.pushViewController(EMOCLEARRAIerBnijttroller.init(), animated: true)
    }
   
}
extension UITextField {
    
    func inputAccessory() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
   
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction))
        
        toolbar.items = [flexSpace, doneButton]
        self.inputAccessoryView = toolbar
    }
    
    @objc private func doneButtonAction() {
        self.resignFirstResponder()
    }
}
