//
//  ToyBlackUserView.swift
//  Toye
//
//  Created by Toye on 2025/2/5.
//

import UIKit
import RSKPlaceholderTextView
import SVProgressHUD

class ToyBlackUserView: UIView,UITextViewDelegate {

    @IBOutlet weak var reportToyTextView: RSKPlaceholderTextView!
    
    @IBOutlet weak var toyLastreportButton: UIButton!
    
    @IBOutlet weak var submitToyServer: UIButton!
    
    var toyReortDone:(()->Void)?
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    var toyMaskWindow:UIView?
    
    var toyCurrentReportType:UIButton?
    
    func toyContentSetting(){
        reportToyTextView.delegate = self
        toyLastreportButton.titleLabel?.numberOfLines = 2
        toyLastreportButton.titleLabel?.textAlignment = .center
    }
    
    @IBAction func submitToyServerAction(_ sender: Any) {
        
        if self.toyCurrentReportType != nil {
            
            if self.toyCurrentReportType?.tag == 303 {
                if self.reportToyTextView.text.count == 0 {
                    SVProgressHUD.showInfo(withStatus: "Exnftdemrr gyyodunrh nrmepassuobn".ty)
                    return
                }
            }
        }else{
            SVProgressHUD.showInfo(withStatus: "Psldepaosdeb nsbezlvebcltk ctmhzeh vrjesahsgobnc xfsosra crsexpcoerlttiinugp itxhdijse kuesfeur".ty)
            return
        }
        
        
        self.toyReortDone?()
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if toyCurrentReportType?.tag == 303 {
            submitToyServer.isEnabled = textView.text.count > 0
        }
    }
    
    @IBAction func iBToyReportRemoveScreen(_ sender: Any) {
        toyReportRemoveScreen()
    }
    
    @IBAction func iBReportItemAction(_ sender: UIButton) {
        
        guard toyCurrentReportType != sender else {
            return
        }
        
        sender.isSelected = true
        sender.backgroundColor = UIColor.init(hex: "#E854F8")
        toyCurrentReportType?.isSelected = false
        toyCurrentReportType?.backgroundColor = UIColor.init(red: 232/255.0, green: 84/255.0, blue: 248/255.0, alpha: 0.16)
        
        toyCurrentReportType = sender
        if sender.tag == 303 {
            reportToyTextView.isEditable = true
            self.submitToyServer.isEnabled = false
        }else{
            reportToyTextView.isEditable = false
            self.submitToyServer.isEnabled = true
            self.reportToyTextView.text = ""
            self.reportToyTextView.insertText("")
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
}
