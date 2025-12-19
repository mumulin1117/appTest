//
//  FMberRECStyleLoreCell.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

class FMberRECStyleLoreCell: UICollectionViewCell {
    private let FMberRECmaterialPreview: UIImageView = {
            let FMberRECiv = UIImageView()
            FMberRECiv.contentMode = .scaleAspectFit
            FMberRECiv.layer.borderWidth = 2
            FMberRECiv.layer.borderColor = UIColor.systemTeal.cgColor
            FMberRECiv.translatesAutoresizingMaskIntoConstraints = false
            return FMberRECiv
       
    }()
    @IBOutlet weak var FMberRECfiberCraft: UIImageView!
    
    @IBOutlet weak var FMberRECartisticStitching: UIButton!
    
    
    @IBOutlet weak var FMberRECthreadSketching: UIButton!
    
    
    @IBOutlet weak var FMberRECcreativeReuse: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FMberRECfiberCraft.layer.cornerRadius = 32
        
        FMberRECwalkingPresser()
        
        FMberRECartisticStitching.layer.cornerRadius = 11.5
    }

    
    func FMberRECwalkingPresser() {
        FMberRECartisticStitching.layer.masksToBounds = true
        FMberRECfiberCraft.layer.masksToBounds = true
    }
    
    

}


extension UITextField {
    
    func FMberRECIQB() {
        let FMberRECtoolbar = UIToolbar()
        FMberRECtoolbar.sizeToFit()
        
   
        let flexFMberRECSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let FMberRECOkaydone = UIBarButtonItem(title: UILabel.FMberRECwalkingPresser(FMberREChole: "Dlotnwe"), style: .done, target: self, action: #selector(doneButtonAction))
        
        FMberRECtoolbar.items = [flexFMberRECSpace, FMberRECOkaydone]
        self.inputAccessoryView = FMberRECtoolbar
    }
    
    @objc private func doneButtonAction() {
        self.resignFirstResponder()
    }
}
