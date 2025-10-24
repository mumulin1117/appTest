//
//  MonkDisciplineController.swift
//  Truelrbuios
//
//  Created by  on 2025/9/20.
//

import UIKit

struct ChronoEngine {
    static func executeAfterTemporalShift(_ delay: Double, quantumTask: @escaping () -> Void) {
        loPulseIndicatar.show(info: "")
       
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            quantumTask()
        }
    }
}



class MonkDisciplineController: UIViewController {
    
    static var bloackuserID:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    var userINfoID:Dictionary<String,Any>?
    
    
    
    
    private var ifChiocedReason:Bool = false
    
    
    
    @IBOutlet weak var sageTeachings: UIButton!
    
    
    
    @IBOutlet weak var sageTeachings1: UIButton!
    
    @IBOutlet weak var sageTeachings2: UIButton!
    
    
    
    @IBOutlet weak var sageTeachings3: UIButton!
    
    
    
    
    @IBOutlet weak var blaockinh: UIButton!
    
    @IBOutlet weak var onluying: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blaockinh.maskedlabeVobor(enter: 30)
        onluying.maskedlabeVobor(enter: 30)
        shanfert.maskedlabeVobor(enter: 30)
        
    }
    
    
    
    @IBAction func ambienceVault(_ sender: UIButton) {
       
        
        sageTeachings.isSelected = false
        sageTeachings1.isSelected = false
        sageTeachings2.isSelected = false
        sageTeachings3.isSelected = false
        sender.isSelected = true
        
        ifChiocedReason = true
        
    }
    @IBOutlet weak var shanfert: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if userINfoID == nil {
            blaockinh.isHidden = true
            onluying.isHidden = true
            shanfert.isHidden = false
        }else{
            blaockinh.isHidden = false
            onluying.isHidden = false
            shanfert.isHidden = true
        }
    }
    
    
    @IBAction func suteiback(_ sender: Any) {
        self.dismiss(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func druidCircle(_ sender: Any) {
        guard ifChiocedReason else{
            loPulseIndicatar.showInfo(withStatus: UIImageView.ambienceVaultDeu("UGxlYXNlIGNoZWNrIG9uZSByZWFzb24gZm9yIHlvdXIgcmVwb3J0IWNvbS50cm1saW4udHJ1ZWxy"))
                   
           return
               
       }
        ChronoEngine.executeAfterTemporalShift(1) {
            
            loPulseIndicatar.showSuccess(withStatus: UIImageView.ambienceVaultDeu("VGhhbmsgeW91IGZvciByZXBvcnRpbmcuIFdlIHdpbGwgdmVyaWZ5IHlvdXIgcmVwb3J0IGFuZCBoYW5kbGUgaXQgYXMgc29vbiBhcyBwb3NzaWJsZWNvbS50cm1saW4udHJ1ZWxy"))
            self.dismiss(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
       
        
    }
    
    
    @IBAction func legendHall(_ sender: UIButton) {//拉黑并举报
        if userINfoID == nil {
            return
        }
        guard ifChiocedReason else{
            loPulseIndicatar.showInfo(withStatus: UIImageView.ambienceVaultDeu("UGxlYXNlIGNoZWNrIG9uZSByZWFzb24gZm9yIHlvdXIgcmVwb3J0IWNvbS50cm1saW4udHJ1ZWxy"))
                   
           return
               
       }
        let alert = UIAlertController(
                   title: UIImageView.ambienceVaultDeu("QmxvY2sgdGhpcyB1c2VyP2NvbS50cm1saW4udHJ1ZWxy"),
                   message: UIImageView.ambienceVaultDeu("T25jZSBibG9ja2VkLCB5b3Ugd2lsbCBubyBsb25nZXIgc2VlIHRoaXMgdXNlcuKAmXMgY29udGVudCBvciByZWNlaXZlIGludGVyYWN0aW9ucyBmcm9tIHRoZW0uIFlvdSBjYW4gdW5ibG9jayBhbnl0aW1lIGluIHlvdXIgc2V0dGluZ3MuY29tLnRybWxpbi50cnVlbHI="),
                   preferredStyle: .alert
               )
               
              
        let cancel = UIAlertAction(title: UIImageView.ambienceVaultDeu("Q2FuY2VsY29tLnRybWxpbi50cnVlbHI="), style: .cancel, handler: nil)
        let confirm = UIAlertAction(title: UIImageView.ambienceVaultDeu("QmxvY2tjb20udHJtbGluLnRydWVscg=="), style: .destructive) { _ in
            self.navigationController?.popViewController(animated: true)
            self.dismiss(animated: true)
            MonkDisciplineController.bloackuserID.append(self.userINfoID ?? [:])
            NotificationCenter.default.post(name: NSNotification.Name.init("Blockuseraction"), object: nil)
        }
        
        alert.addAction(cancel)
        alert.addAction(confirm)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
