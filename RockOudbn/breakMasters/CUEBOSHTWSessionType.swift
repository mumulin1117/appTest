//
//  Dfgggg.swift
//  RockOudbn
//
//  Created by RockOudbn on 2025/7/30.
//

import UIKit

enum CUEBOSHTWSessionType: String {
    case portrait
    case landscape
    case street
    case wildlife
}
extension UITextField {
    
    func CUEBOSHTWDcomKeyboard() {
        let CUEBOSHTWtoolbar = UIToolbar()
        CUEBOSHTWtoolbar.sizeToFit()
        
   
       
        CUEBOSHTWtoolbar.items = [CUEBOSHTWOvere(), CUEBOSHTWOvere() ]
        self.inputAccessoryView = CUEBOSHTWtoolbar
    }
    
    func CUEBOSHTWOvere() -> UIBarButtonItem {
        
        return UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(CUEBOSHTWButtonAction))
        
    }
    
    
    func CUEBOSHTWOvApce() -> UIBarButtonItem{
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }
    @objc private func CUEBOSHTWButtonAction() {
        self.resignFirstResponder()
    }
}

