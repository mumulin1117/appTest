//
//  PrankEngine.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

class PrankEngine: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deploySneakyPrankBot()
    }
    
    private func deploySneakyPrankBot() {
        
       
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
  
   
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino(ert:UIButton) {
        if ert ==  MatrixButon {
            self.navigationController?.popViewController(animated: true)
        }
        
       
    }

    @IBAction func speend300Domend(_ sender: Any) {
        if TrickGenerator.diomendAPCE < 300 {
            
            let influce = PuzzleMasterMUi.init()
            influce.modalPresentationStyle = .overCurrentContext
            influce.onRechargeTapped = {
                self.navigationController?.pushViewController(TrickGenerator.init(), animated: true)
            }
            self.present(influce, animated: true)
            return
        }
        
     
        let prankAI =  RiddleMatrix.init()
        
        self.navigationController?.pushViewController(prankAI, animated: true)
        
    }
}
