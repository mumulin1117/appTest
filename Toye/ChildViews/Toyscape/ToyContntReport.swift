//
//  ToyContntReport.swift
//  Toye
//
//  Created by Toye on 2025/2/5.
//

import UIKit
import RSKPlaceholderTextView

class ToyContntReport: UIView,UITextViewDelegate {
    
    var toyReortDone:(()->Void)?
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0

    
    var toyMaskWindow:UIView?
    
    @IBOutlet weak var toyContentReportTextView: RSKPlaceholderTextView!
    @IBOutlet weak var submitToyServer: UIButton!
    
    func toyContentSetting(){
        toyContentReportTextView.delegate = self
    }
    
    @IBAction func submitToyServerAction(_ sender: Any) {
        self.toyReortDone?()
    }
    
    func textViewDidChange(_ textView: UITextView) {
        submitToyServer.isEnabled = textView.text.count > 0
    }
    
    @IBAction func iBToyReportRemoveScreen(_ sender: Any) {
        toyReportRemoveScreen()
    }
    
    
    func toyContentReportMoveScreen(){
        
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
            
            if let toyTopWindow = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
                toyMaskWindow = UIView().then({
                    $0.backgroundColor = .black.withAlphaComponent(0.7)
                })
                
                toyTopWindow.addSubview(toyMaskWindow!)
                
                toyeCollectGemsHub["toyeCollectGemsHub"] = "toyeCollectGemsHub"
                toyMaskWindow?.snp.makeConstraints({ make in
                    make.top.right.equalToSuperview()
                    make.left.bottom.equalToSuperview()
                })
                
                toyeInfoWonders.append(contentsOf: [1111,32235])
                
                toyTopWindow.addSubview(self)
                self.snp.makeConstraints { make in
                    make.center.equalToSuperview()
                }
                
                toyeInfoWonders.append(contentsOf: [11,35])
                
                self.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
                toyeInfoWonders.append(121)
                UIView.animate(withDuration: 0.25) {
                    self.transform = CGAffineTransform.identity
                }
            }
        }
        
    }
    
    func toyReportRemoveScreen(){
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["ToyContntReport"] = "ToyContntReport"
            UIView.animate(withDuration: 0.235) {
                self.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
            } completion: { _ in
                self.toyMaskWindow?.removeFromSuperview()
                self.removeFromSuperview()
            }
            
            toyeCollectGemsHub["toyMaskWindow"] = "toyMaskWindow"
        }
    }
}
