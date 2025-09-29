//
//  Enougthatroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class Enougthatroller: UIViewController {

    @IBAction func disomaif(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
  


    @IBAction func storyVibrancy(_ sender: UIButton) {
        self.navigationController?.pushViewController(RAIerBnijttroller.init(), animated: true)
    }
   
}
